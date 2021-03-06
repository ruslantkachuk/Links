// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient.view.listviewanimation;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;

public abstract class BaseAdapterDecorator extends BaseAdapter
{

    protected final BaseAdapter mDecoratedBaseAdapter;
    private AbsListView mListView;

    public BaseAdapterDecorator(BaseAdapter baseadapter)
    {
        mDecoratedBaseAdapter = baseadapter;
    }

    public boolean areAllItemsEnabled()
    {
        return mDecoratedBaseAdapter.areAllItemsEnabled();
    }

    public AbsListView getAbsListView()
    {
        return mListView;
    }

    public int getCount()
    {
        return mDecoratedBaseAdapter.getCount();
    }

    public BaseAdapter getDecoratedBaseAdapter()
    {
        return mDecoratedBaseAdapter;
    }

    public View getDropDownView(int i, View view, ViewGroup viewgroup)
    {
        return mDecoratedBaseAdapter.getDropDownView(i, view, viewgroup);
    }

    public Object getItem(int i)
    {
        return mDecoratedBaseAdapter.getItem(i);
    }

    public long getItemId(int i)
    {
        return mDecoratedBaseAdapter.getItemId(i);
    }

    public int getItemViewType(int i)
    {
        return mDecoratedBaseAdapter.getItemViewType(i);
    }

    public AbsListView getListView()
    {
        return mListView;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        return mDecoratedBaseAdapter.getView(i, view, viewgroup);
    }

    public int getViewTypeCount()
    {
        return mDecoratedBaseAdapter.getViewTypeCount();
    }

    public boolean hasStableIds()
    {
        return mDecoratedBaseAdapter.hasStableIds();
    }

    public boolean isEmpty()
    {
        return mDecoratedBaseAdapter.isEmpty();
    }

    public boolean isEnabled(int i)
    {
        return mDecoratedBaseAdapter.isEnabled(i);
    }

    public void notifyDataSetChanged()
    {
        mDecoratedBaseAdapter.notifyDataSetChanged();
    }

    public void notifyDataSetInvalidated()
    {
        mDecoratedBaseAdapter.notifyDataSetInvalidated();
    }

    public void registerDataSetObserver(DataSetObserver datasetobserver)
    {
        mDecoratedBaseAdapter.registerDataSetObserver(datasetobserver);
    }

    public void setAbsListView(AbsListView abslistview)
    {
        mListView = abslistview;
        if (mDecoratedBaseAdapter instanceof BaseAdapterDecorator)
        {
            ((BaseAdapterDecorator)mDecoratedBaseAdapter).setAbsListView(abslistview);
        }
    }

    public void setListView(AbsListView abslistview)
    {
        mListView = abslistview;
        if (mDecoratedBaseAdapter instanceof BaseAdapterDecorator)
        {
            ((BaseAdapterDecorator)mDecoratedBaseAdapter).setListView(abslistview);
        }
    }

    public void unregisterDataSetObserver(DataSetObserver datasetobserver)
    {
        mDecoratedBaseAdapter.unregisterDataSetObserver(datasetobserver);
    }
}
