/* This file was generated by SableCC (http://www.sablecc.org/). */

package malgol.node;

import malgol.analysis.*;

@SuppressWarnings("nls")
public final class AArrayVarExp extends PVarExp
{
    private PVarExp _array_;
    private TLBracket _lBracket_;
    private PExp _index_;
    private TRBracket _rBracket_;

    public AArrayVarExp()
    {
        // Constructor
    }

    public AArrayVarExp(
        @SuppressWarnings("hiding") PVarExp _array_,
        @SuppressWarnings("hiding") TLBracket _lBracket_,
        @SuppressWarnings("hiding") PExp _index_,
        @SuppressWarnings("hiding") TRBracket _rBracket_)
    {
        // Constructor
        setArray(_array_);

        setLBracket(_lBracket_);

        setIndex(_index_);

        setRBracket(_rBracket_);

    }

    @Override
    public Object clone()
    {
        return new AArrayVarExp(
            cloneNode(this._array_),
            cloneNode(this._lBracket_),
            cloneNode(this._index_),
            cloneNode(this._rBracket_));
    }

    @Override
    public void apply(Switch sw)
    {
        ((Analysis) sw).caseAArrayVarExp(this);
    }

    public PVarExp getArray()
    {
        return this._array_;
    }

    public void setArray(PVarExp node)
    {
        if(this._array_ != null)
        {
            this._array_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._array_ = node;
    }

    public TLBracket getLBracket()
    {
        return this._lBracket_;
    }

    public void setLBracket(TLBracket node)
    {
        if(this._lBracket_ != null)
        {
            this._lBracket_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._lBracket_ = node;
    }

    public PExp getIndex()
    {
        return this._index_;
    }

    public void setIndex(PExp node)
    {
        if(this._index_ != null)
        {
            this._index_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._index_ = node;
    }

    public TRBracket getRBracket()
    {
        return this._rBracket_;
    }

    public void setRBracket(TRBracket node)
    {
        if(this._rBracket_ != null)
        {
            this._rBracket_.parent(null);
        }

        if(node != null)
        {
            if(node.parent() != null)
            {
                node.parent().removeChild(node);
            }

            node.parent(this);
        }

        this._rBracket_ = node;
    }

    @Override
    public String toString()
    {
        return ""
            + toString(this._array_)
            + toString(this._lBracket_)
            + toString(this._index_)
            + toString(this._rBracket_);
    }

    @Override
    void removeChild(@SuppressWarnings("unused") Node child)
    {
        // Remove child
        if(this._array_ == child)
        {
            this._array_ = null;
            return;
        }

        if(this._lBracket_ == child)
        {
            this._lBracket_ = null;
            return;
        }

        if(this._index_ == child)
        {
            this._index_ = null;
            return;
        }

        if(this._rBracket_ == child)
        {
            this._rBracket_ = null;
            return;
        }

        throw new RuntimeException("Not a child.");
    }

    @Override
    void replaceChild(@SuppressWarnings("unused") Node oldChild, @SuppressWarnings("unused") Node newChild)
    {
        // Replace child
        if(this._array_ == oldChild)
        {
            setArray((PVarExp) newChild);
            return;
        }

        if(this._lBracket_ == oldChild)
        {
            setLBracket((TLBracket) newChild);
            return;
        }

        if(this._index_ == oldChild)
        {
            setIndex((PExp) newChild);
            return;
        }

        if(this._rBracket_ == oldChild)
        {
            setRBracket((TRBracket) newChild);
            return;
        }

        throw new RuntimeException("Not a child.");
    }
}