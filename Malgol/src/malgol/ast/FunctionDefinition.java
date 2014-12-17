package malgol.ast;

import malgol.type.FunctionType;
import malgol.type.Type;
import java.util.LinkedList;
import malgol.node.Token;

public class FunctionDefinition extends ASTNode {
	private final Type returnType;
	private final String name;
	private final LinkedList<Declaration> parameters;
	private final BlockStatement body;
	private final FunctionType type;
	
	public Type getReturnType() {
		return returnType;
	}
	
	public String getName() {
		return name;
	}
	
	public LinkedList<Declaration> getParameters() {
		return parameters;
	}
	
	public BlockStatement getBody() {
		return body;
	}
	
	public FunctionType getType() {
		return type;
	}

	public FunctionDefinition(Token firstToken, Type rt, String n,
			LinkedList<Declaration> p, BlockStatement b) {
		super(firstToken);
		returnType = rt;
		name = n;
		parameters = p;
		body = b;
		type = new FunctionType(returnType, parameters);
	}

	public void accept(ASTVisitor v) {
		v.visit(this);
	}
}