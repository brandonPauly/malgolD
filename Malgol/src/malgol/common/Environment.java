/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package malgol.common;

import malgol.ast.Declaration;
import malgol.ast.FunctionDefinition;
import malgol.type.Type;

import java.util.LinkedList;

/**
 * 
 * @author Will
 */
public class Environment {
	private final LinkedList<SymbolTable> stack;
	private final FrameLayout layout;
	private final Type returnType;
	
	public Environment(SymbolTable global, FunctionDefinition def) {
		stack = new LinkedList<SymbolTable>();
		stack.push(global);
		SymbolTable parameters = new SymbolTable();
		parameters.addParameters(def.getParameters());
		returnType = def.getReturnType();
		stack.push(parameters);
		layout = new FrameLayout();
	}

	public void createNewScope() {
		stack.push(new SymbolTable());
	}

	public void dropScope() {
		stack.pop();
	}

	public SymbolTable getCurrentScope() {
		return stack.getFirst();
	}

	public Symbol lookupInCurrentScope(String n) {
		return getCurrentScope().lookup(n);
	}

	public void insert(Declaration d) {
		String name = d.getName();
		Type type = d.getType();
		layout.addLocal(type.getByteSize());
		Symbol s = Symbol.newVariableSymbol(name, type, false, -layout.currentLocalSize());
		getCurrentScope().insert(s);
	}
	

	public Symbol lookupInEnvironment(String n) {
		for (SymbolTable scope : stack) {
			Symbol result = scope.lookup(n);
			if (result != null)
				return result;
		}
		return null;
	}

	public int getFrameSize() {
		return layout.getFrameSize();
	}
	
	public Type getReturnType() {
		return returnType;
	}
	
	public FrameLayout getFrameLayout(){
		return layout;
	}
}
