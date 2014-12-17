/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package malgol.type;

import malgol.ast.Declaration;
import java.util.Iterator;
import java.util.LinkedList;

/**
 *
 * @author WMarrero
 */
public class FunctionType extends Type {

    private final Type returnType;
    private final LinkedList<Declaration> parameters;
    
    public Type getReturnType() {
    	return returnType;
    }
    
    public LinkedList<Declaration> getParameters() {
    	return parameters;
    }
    
    public FunctionType(Type ret, LinkedList<Declaration> args) {
    	super(0);
        returnType = ret;
        parameters = args;
    }
    
    @Override
    public boolean equals(Type t2) {
        if (!(t2 instanceof FunctionType))
            return false;
        FunctionType ft2 = (FunctionType) t2;
        if (!(returnType.equals(ft2.returnType)))
            return false;
        if (parameters.size() != ft2.parameters.size())
            return false;
        Iterator<Declaration> i1 = parameters.iterator();
        Iterator<Declaration> i2 = ft2.parameters.iterator();
        while (i1.hasNext()) {
            if (!(i1.next().getType().equals(i2.next().getType())))
                return false;
        }
        return true;
    }
    
    @Override
    public boolean isFunction() {
        return true;
    }

    @Override
    public Type baseType() {
        return returnType.baseType();
    }
}
