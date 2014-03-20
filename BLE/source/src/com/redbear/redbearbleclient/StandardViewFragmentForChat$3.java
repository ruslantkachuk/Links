// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.redbear.redbearbleclient;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.redbear.RedBearService.RedBearService;

// Referenced classes of package com.redbear.redbearbleclient:
//            StandardViewFragmentForChat

class this._cls0
    implements android.view.agmentForChat._cls3
{

    final StandardViewFragmentForChat this$0;

    public void onClick(View view)
    {
        if (!editOutput.getText().toString().isEmpty())
        {
            String s = editOutput.getText().toString();
            if (mBearService != null)
            {
                char ac[] = s.toCharArray();
                mBearService.writeValue(mDevice.evice, ac);
            }
        }
    }

    ()
    {
        this$0 = StandardViewFragmentForChat.this;
        super();
    }
}
