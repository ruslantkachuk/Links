// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.nineoldandroids.animation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.animation.AnimationUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package com.nineoldandroids.animation:
//            AnimatorSet, Animator, ValueAnimator, ArgbEvaluator, 
//            ObjectAnimator

public class AnimatorInflater
{

    private static final int Animator[] = {
        0x1010141, 0x1010198, 0x10101be, 0x10101bf, 0x10101c0, 0x10102de, 0x10102df, 0x10102e0
    };
    private static final int AnimatorSet[] = {
        0x10102e2
    };
    private static final int AnimatorSet_ordering = 0;
    private static final int Animator_duration = 1;
    private static final int Animator_interpolator = 0;
    private static final int Animator_repeatCount = 3;
    private static final int Animator_repeatMode = 4;
    private static final int Animator_startOffset = 2;
    private static final int Animator_valueFrom = 5;
    private static final int Animator_valueTo = 6;
    private static final int Animator_valueType = 7;
    private static final int PropertyAnimator[] = {
        0x10102e1
    };
    private static final int PropertyAnimator_propertyName;
    private static final int TOGETHER;
    private static final int VALUE_TYPE_FLOAT;

    public AnimatorInflater()
    {
    }

    private static Animator createAnimatorFromXml(Context context, XmlPullParser xmlpullparser)
        throws XmlPullParserException, IOException
    {
        return createAnimatorFromXml(context, xmlpullparser, Xml.asAttributeSet(xmlpullparser), null, 0);
    }

    private static Animator createAnimatorFromXml(Context context, XmlPullParser xmlpullparser, AttributeSet attributeset, AnimatorSet animatorset, int i)
        throws XmlPullParserException, IOException
    {
        Object obj = null;
        ArrayList arraylist = null;
        int j = xmlpullparser.getDepth();
        do
        {
            Animator aanimator[];
label0:
            {
                int k = xmlpullparser.next();
                if ((k != 3 || xmlpullparser.getDepth() > j) && k != 1)
                {
                    if (k == 2)
                    {
                        String s = xmlpullparser.getName();
                        if (s.equals("objectAnimator"))
                        {
                            obj = loadObjectAnimator(context, attributeset);
                        } else
                        if (s.equals("animator"))
                        {
                            obj = loadAnimator(context, attributeset, null);
                        } else
                        if (s.equals("set"))
                        {
                            obj = new AnimatorSet();
                            TypedArray typedarray = context.obtainStyledAttributes(attributeset, AnimatorSet);
                            TypedValue typedvalue = new TypedValue();
                            typedarray.getValue(0, typedvalue);
                            int j1;
                            if (typedvalue.type == 16)
                            {
                                j1 = typedvalue.data;
                            } else
                            {
                                j1 = 0;
                            }
                            createAnimatorFromXml(context, xmlpullparser, attributeset, (AnimatorSet)obj, j1);
                            typedarray.recycle();
                        } else
                        {
                            throw new RuntimeException((new StringBuilder()).append("Unknown animator name: ").append(xmlpullparser.getName()).toString());
                        }
                        if (animatorset != null)
                        {
                            if (arraylist == null)
                            {
                                arraylist = new ArrayList();
                            }
                            arraylist.add(obj);
                        }
                    }
                    continue;
                }
                if (animatorset != null && arraylist != null)
                {
                    aanimator = new Animator[arraylist.size()];
                    int l = 0;
                    for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
                    {
                        Animator animator = (Animator)iterator.next();
                        int i1 = l + 1;
                        aanimator[l] = animator;
                        l = i1;
                    }

                    if (i != 0)
                    {
                        break label0;
                    }
                    animatorset.playTogether(aanimator);
                }
                return ((Animator) (obj));
            }
            animatorset.playSequentially(aanimator);
            return ((Animator) (obj));
        } while (true);
    }

    public static Animator loadAnimator(Context context, int i)
        throws android.content.res.Resources.NotFoundException
    {
        XmlResourceParser xmlresourceparser = null;
        Animator animator;
        xmlresourceparser = context.getResources().getAnimation(i);
        animator = createAnimatorFromXml(context, xmlresourceparser);
        if (xmlresourceparser != null)
        {
            xmlresourceparser.close();
        }
        return animator;
        XmlPullParserException xmlpullparserexception;
        xmlpullparserexception;
        android.content.res.Resources.NotFoundException notfoundexception1 = new android.content.res.Resources.NotFoundException((new StringBuilder()).append("Can't load animation resource ID #0x").append(Integer.toHexString(i)).toString());
        notfoundexception1.initCause(xmlpullparserexception);
        throw notfoundexception1;
        Exception exception;
        exception;
        if (xmlresourceparser != null)
        {
            xmlresourceparser.close();
        }
        throw exception;
        IOException ioexception;
        ioexception;
        android.content.res.Resources.NotFoundException notfoundexception = new android.content.res.Resources.NotFoundException((new StringBuilder()).append("Can't load animation resource ID #0x").append(Integer.toHexString(i)).toString());
        notfoundexception.initCause(ioexception);
        throw notfoundexception;
    }

    private static ValueAnimator loadAnimator(Context context, AttributeSet attributeset, ValueAnimator valueanimator)
        throws android.content.res.Resources.NotFoundException
    {
        TypedArray typedarray;
        boolean flag1;
        int j;
        boolean flag2;
        int k;
        typedarray = context.obtainStyledAttributes(attributeset, Animator);
        long l = typedarray.getInt(1, 0);
        long l1 = typedarray.getInt(2, 0);
        int i = typedarray.getInt(7, 0);
        if (valueanimator == null)
        {
            valueanimator = new ValueAnimator();
        }
        boolean flag;
        TypedValue typedvalue;
        TypedValue typedvalue1;
        int j1;
        android.view.animation.Interpolator interpolator;
        int k1;
        int i2;
        float af2[];
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        typedvalue = typedarray.peekValue(5);
        if (typedvalue != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            j = typedvalue.type;
        } else
        {
            j = 0;
        }
        typedvalue1 = typedarray.peekValue(6);
        if (typedvalue1 != null)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (flag2)
        {
            k = typedvalue1.type;
        } else
        {
            k = 0;
        }
        if (flag1 && j >= 28 && j <= 31 || flag2 && k >= 28 && k <= 31)
        {
            flag = false;
            ArgbEvaluator argbevaluator = new ArgbEvaluator();
            valueanimator.setEvaluator(argbevaluator);
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        if (flag1)
        {
            float f1;
            if (j == 5)
            {
                f1 = typedarray.getDimension(5, 0.0F);
            } else
            {
                f1 = typedarray.getFloat(5, 0.0F);
            }
            if (flag2)
            {
                float f2;
                if (k == 5)
                {
                    f2 = typedarray.getDimension(6, 0.0F);
                } else
                {
                    f2 = typedarray.getFloat(6, 0.0F);
                }
                af2 = (new float[] {
                    f1, f2
                });
                valueanimator.setFloatValues(af2);
            } else
            {
                float af1[] = {
                    f1
                };
                valueanimator.setFloatValues(af1);
            }
        } else
        {
            float f;
            float af[];
            if (k == 5)
            {
                f = typedarray.getDimension(6, 0.0F);
            } else
            {
                f = typedarray.getFloat(6, 0.0F);
            }
            af = (new float[] {
                f
            });
            valueanimator.setFloatValues(af);
        }
_L4:
        valueanimator.setDuration(l);
        valueanimator.setStartDelay(l1);
        if (typedarray.hasValue(3))
        {
            i2 = typedarray.getInt(3, 0);
            valueanimator.setRepeatCount(i2);
        }
        if (typedarray.hasValue(4))
        {
            k1 = typedarray.getInt(4, 1);
            valueanimator.setRepeatMode(k1);
        }
        j1 = typedarray.getResourceId(0, 0);
        if (j1 > 0)
        {
            interpolator = AnimationUtils.loadInterpolator(context, j1);
            valueanimator.setInterpolator(interpolator);
        }
        typedarray.recycle();
        return valueanimator;
_L2:
        int i1;
        if (flag1)
        {
            int j2;
            if (j == 5)
            {
                j2 = (int)typedarray.getDimension(5, 0.0F);
            } else
            if (j >= 28 && j <= 31)
            {
                j2 = typedarray.getColor(5, 0);
            } else
            {
                j2 = typedarray.getInt(5, 0);
            }
            if (flag2)
            {
                int k2;
                int ai2[];
                if (k == 5)
                {
                    k2 = (int)typedarray.getDimension(6, 0.0F);
                } else
                if (k >= 28 && k <= 31)
                {
                    k2 = typedarray.getColor(6, 0);
                } else
                {
                    k2 = typedarray.getInt(6, 0);
                }
                ai2 = (new int[] {
                    j2, k2
                });
                valueanimator.setIntValues(ai2);
            } else
            {
                int ai1[] = {
                    j2
                };
                valueanimator.setIntValues(ai1);
            }
            continue; /* Loop/switch isn't completed */
        }
        if (!flag2)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (k != 5)
        {
            break; /* Loop/switch isn't completed */
        }
        i1 = (int)typedarray.getDimension(6, 0.0F);
_L5:
        int ai[] = {
            i1
        };
        valueanimator.setIntValues(ai);
        if (true) goto _L4; else goto _L3
_L3:
        if (k >= 28 && k <= 31)
        {
            i1 = typedarray.getColor(6, 0);
        } else
        {
            i1 = typedarray.getInt(6, 0);
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    private static ObjectAnimator loadObjectAnimator(Context context, AttributeSet attributeset)
        throws android.content.res.Resources.NotFoundException
    {
        ObjectAnimator objectanimator = new ObjectAnimator();
        loadAnimator(context, attributeset, objectanimator);
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, PropertyAnimator);
        objectanimator.setPropertyName(typedarray.getString(0));
        typedarray.recycle();
        return objectanimator;
    }

}
