/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package malgol.common;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.LinkedList;

import malgol.ast.Declaration;
import malgol.type.Type;
import malgol.util.Error;

/**
 * 
 * @author Will
 */
public class SymbolTable {
	private Map<String, Symbol> table;

	public SymbolTable() {
		table = new LinkedHashMap<String, Symbol>(20);
	}

	public void insert(Symbol s) {
		table.put(s.getName(), s);
	}

	public Symbol lookup(String n) {
		return table.get(n);
	}

	public void addParameters(LinkedList<Declaration> p) {
		for (Declaration d : p) {
			String name = d.getName();
			if (table.containsKey(name))
				Error.msg("Repeated parameter name", d);
			Type type = d.getType();
			Symbol s = Symbol.newVariableSymbol(name, type, true);
			insert(s);
		}
	}

}
