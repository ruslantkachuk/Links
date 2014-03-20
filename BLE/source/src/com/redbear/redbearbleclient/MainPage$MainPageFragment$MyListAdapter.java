// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.redbear.redbearbleclient.view.listviewanimation.ArrayAdapter;
import java.util.ArrayList;

// Referenced classes of package com.redbear.redbearbleclient:
//            MainPage

private class items extends ArrayAdapter
{

    ArrayList items;
    private Context mContext;
    private LayoutInflater mInflater;
    final mInflater this$1;

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        items items1 = (items)items.get(i);
        View view1 = mInflater.inflate(0x7f030005, null);
        ((TextView)view1.findViewById(0x7f09000f)).setText(items1.mInflater);
        ((TextView)view1.findViewById(0x7f090013)).setText((new StringBuilder("Local Name: ")).append(items1.mInflater).toString());
        ((TextView)view1.findViewById(0x7f090012)).setText((new StringBuilder("Address: ")).append(items1.mInflater).toString());
        ((TextView)view1.findViewById(0x7f090011)).setText((new StringBuilder("Rssi: ")).append(items1.mInflater).toString());
        TextView textview = (TextView)view1.findViewById(0x7f090010);
        if (items1.mInflater == null)
        {
            textview.setText("uuid: null");
            return view1;
        } else
        {
            textview.setText((new StringBuilder(String.valueOf(items1.mInflater.toString()))).toString());
            return view1;
        }
    }

    public (Context context, ArrayList arraylist)
    {
        this$1 = this._cls1.this;
        super(arraylist);
        mContext = context;
        mInflater = LayoutInflater.from(mContext);
        items = arraylist;
    }
}
