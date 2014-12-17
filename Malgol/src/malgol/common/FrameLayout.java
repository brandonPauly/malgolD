/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package malgol.common;

/**
 *
 * @author WMarrero
 */
public class FrameLayout
{
    private int localSize;
    private int outgoingSize;
    
    public FrameLayout()
    {
        localSize = 0;
        outgoingSize = 8;  // for printf
    }
    
    public void addLocal(int size)
    {
        localSize += size;
    }
    
    public void addOutgoing(int size){
    	outgoingSize += size;
    }
    
    public int getFrameSize()
    {
        return localSize + outgoingSize;
    }
    
    public int currentLocalSize() {
        return localSize;
    }
    
    public int currentOutgoingSize(){
    	return outgoingSize;
    }
}
