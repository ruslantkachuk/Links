// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient.view.listviewanimation;

import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class ArrayAdapter extends BaseAdapter
{

    private ArrayList mItems;

    public ArrayAdapter()
    {
        this(null);
    }

    public ArrayAdapter(List list)
    {
        mItems = new ArrayList();
        if (list != null)
        {
            mItems.addAll(list);
        }
    }

    public void add(int i, Object obj)
    {
        mItems.add(i, obj);
        notifyDataSetChanged();
    }

    public void add(Object obj)
    {
        mItems.add(obj);
        notifyDataSetChanged();
    }

    public void addAll(int i, Collection collection)
    {
        mItems.addAll(i, collection);
        notifyDataSetChanged();
    }

    public transient void addAll(int i, Object aobj[])
    {
        int j = i;
        do
        {
            if (j >= i + aobj.length)
            {
                notifyDataSetChanged();
                return;
            }
            mItems.add(j, aobj[j]);
            j++;
        } while (true);
    }

    public void addAll(Collection collection)
    {
        mItems.addAll(collection);
        notifyDataSetChanged();
    }

    public transient void addAll(Object aobj[])
    {
        Collections.addAll(mItems, aobj);
        notifyDataSetChanged();
    }

    public void clear()
    {
        mItems.clear();
        notifyDataSetChanged();
    }

    public int getCount()
    {
        return mItems.size();
    }

    public Object getItem(int i)
    {
        return mItems.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public int indexOf(Object obj)
    {
        return mItems.indexOf(obj);
    }

    public void remove(int i)
    {
        mItems.remove(i);
        notifyDataSetChanged();
    }

    public void remove(Object obj)
    {
        mItems.remove(obj);
        notifyDataSetChanged();
    }

    public void removeAll(Collection collection)
    {
        mItems.removeAll(collection);
        notifyDataSetChanged();
    }

    public void removePositions(Collection collection)
    {
        ArrayList arraylist = new ArrayList(collection);
        Collections.sort(arraylist);
        Collections.reverse(arraylist);
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                notifyDataSetChanged();
                return;
            }
            int i = ((Integer)iterator.next()).intValue();
            mItems.remove(i);
        } while (true);
    }

    public void retainAll(Collection collection)
    {
        mItems.retainAll(collection);
        notifyDataSetChanged();
    }

    public void set(int i, Object obj)
    {
        mItems.set(i, obj);
        notifyDataSetChanged();
    }
}
