package malgol.transform;

import malgol.ast.*;
import malgol.common.*;
import malgol.type.*;
import malgol.util.Error;

import java.util.LinkedList;
import java.util.Iterator;

/**
 * 
 * @author WMarrero
 */
public class StaticAnalysisVisitor implements ASTVisitor {
	private SymbolTable global = null;
	private Environment env = null;

	private void addFunctionsToGlobalTable(LinkedList<FunctionDefinition> l) {
		for (FunctionDefinition d : l) {
			Symbol f = Symbol.newFunctionSymbol(d.getName(), d.getType());
			global.insert(f);
		}
	}

	@Override
	public void visit(BlockStatement s) {
		env.createNewScope();
		for (Declaration d : s.getDeclarationList()) {
			d.accept(this);
		}
		for (Statement stat : s.getStatementList()) {
			stat.accept(this);
		}
		env.dropScope();
	}

	@Override
	public void visit(AssignmentStatement s) {
		s.getLeft().accept(this);
		if (s.getLeft().getType().isArray()) {
			Error.msg("Cannot assign into an array", s);
		}
		s.getRight().accept(this);
		if (!(s.getLeft().getType().equals(s.getRight().getType()))) {
			Error.msg("Type mismatch in", s);
		}
	}

	@Override
	public void visit(SelectionStatement s) {
		s.getTest().accept(this);
		if (s.getTest().getType() != BoolType.singleton()) {
			Error.msg("if test is not boolean:", s.getTest());
		}
		s.getTrueBranch().accept(this);
		s.getFalseBranch().accept(this);
	}

	@Override
	public void visit(WhileStatement s) {
		s.getTest().accept(this);
		if (s.getTest().getType() != BoolType.singleton()) {
			Error.msg("while test is not boolean:", s.getTest());
		}
		s.getBody().accept(this);
	}

	@Override
	public void visit(PrintStatement s) {
		s.getExpression().accept(this);
		if (s.getExpression().getType() != IntType.singleton()) {
			Error.msg("print expression must be integer type",
					s);
		}
	}

	@Override
	public void visit(SkipStatement s) {
	}

	@Override
	public void visit(ArrayExpression e) {
		e.getArray().accept(this);
		Type t = e.getArray().getType();
		if (!t.isArray()) {
			Error.msg("Not an array", e);
		}
		ArrayType aType = (ArrayType) t;
		e.setType(aType.getElementType());
		e.getIndex().accept(this);
		if (!e.getIndex().getType().isInt()) {
			Error.msg("Array index is not an int", e);
		}
	}

	@Override
	public void visit(BinaryExpression e) {
		e.getLeft().accept(this);
		e.getRight().accept(this);
		if (e.getOperator().isArithmetic()) {
			if (e.getLeft().getType() != IntType.singleton()) {
				Error.msg("Expected integer:", e.getLeft());
			}
			if (e.getRight().getType() != IntType.singleton()) {
				Error.msg("Expected integer:", e.getRight());
			}
			e.setType(IntType.singleton());
		} else if (e.getOperator().isRelational()) {
			if (e.getLeft().getType() != IntType.singleton()) {
				Error.msg("Expected integer:", e.getLeft());
			}
			if (e.getRight().getType() != IntType.singleton()) {
				Error.msg("Expected integer:", e.getRight());
			}
			e.setType(BoolType.singleton());
		} else if (e.getOperator().isBoolean()) {
			if (e.getLeft().getType() != BoolType.singleton()) {
				Error.msg("Expected Boolean:", e.getLeft());
			}
			if (e.getRight().getType() != BoolType.singleton()) {
				Error.msg("Expected Boolean:", e.getRight());
			}
			e.setType(BoolType.singleton());
		} else {
			Error.msg("unknown operator:", e);
		}
	}

	@Override
	public void visit(UnaryExpression e) {
		e.getExpression().accept(this);
		Type type = e.getExpression().getType();
		if (e.getOperator().isBoolean()) {
			if (type != BoolType.singleton()) {
				Error.msg("Expected Boolean:", e.getExpression());
			}
			e.setType(BoolType.singleton());
		} else if (e.getOperator().isArithmetic()) {
			if (type != IntType.singleton()) {
				Error.msg("Expected integer:", e.getExpression());
			}
			e.setType(IntType.singleton());
		}
	}

	@Override
	public void visit(VariableExpression e) {
		if (e.getType() == null) {
			Symbol sym = env.lookupInEnvironment(e.getName());
			if (sym == null) {
				Error.msg("Undeclared varaible: ", e);
			}
			Type t = sym.getType();
			e.setType(t);
		}
	}

	@Override
	public void visit(ConstantExpression e) {
		if (e.getType() == null) {
			Error.msg(
					"FATAL ERROR: Constant of unkown type.  Contact instructor",
					e);
		}
	}

	@Override
	public void visit(Declaration d) {
		String name = d.getName();
		if (env.lookupInCurrentScope(name) != null) {
			Error.msg(d.getName() + " already declared in this scope!!!", d);
		}
		env.insert(d);
	}

	@Override
	public void visit(GotoStatement s) {
		throw new RuntimeException(
				"GotoStatement encountered during static analysis");
	}

	@Override
	public void visit(DereferenceExpression e) {
		throw new RuntimeException(
				"DereferenceExpression encountered during static analysis");
	}

	@Override
	public void visit(OffsetExpression e) {
		throw new RuntimeException(
				"OffsetExpression encountered during static analysis.");
	}

	@Override
	public void visit(FunctionDefinition f) {
		if (f.getReturnType().isArray() || f.getReturnType().isFunction()) {
			Error.msg("ERROR, function must return INT or BOOL: " + f.getName());
		}
		env = new Environment(global, f);
		f.getBody().accept(this);
	}

	@Override
	public void visit(FunctionCallExpression e) {
		Symbol sym = env.lookupInEnvironment(e.getName());
		if (sym == null) {
			Error.msg("Unknown function: ", e);
		}
		if (!sym.getType().isFunction()) {
			Error.msg("Trying to call a non-function: ", e);
		}
		FunctionType t = (FunctionType) sym.getType();
		if (t.getParameters().size() != e.getArguments().size()) {
			Error.msg("Argument count mismatch: ", e);
		}
		Iterator<Declaration> dIter = t.getParameters().iterator();
		Iterator<Expression> eIter = e.getArguments().iterator();
		int pos = 0;
		while (dIter.hasNext() && eIter.hasNext()) {
			pos++;
			Expression currentExpression = eIter.next();
			Declaration currentDeclaration = dIter.next();
			currentExpression.accept(this);
			if (!(currentDeclaration.getType().equals(currentExpression.getType()))) {
				Error.msg("Argument type mismatch in slot " + pos + " of ", e);
			}
		}
		e.setType(t.getReturnType());
	}

	@Override
	public void visit(ReturnStatement s) {
		s.getExpression().accept(this);
		Type expectedType = env.getReturnType();
		if (!(s.getExpression().getType().equals(expectedType))) {
			Error.msg("Return type mismatch ", s);
		}
	}

	@Override
	public void visit(Program p) {
		global = new SymbolTable();
		addFunctionsToGlobalTable(p.getFunctionList());
		for(FunctionDefinition f : p.getFunctionList())
			f.accept(this);
	}
}
