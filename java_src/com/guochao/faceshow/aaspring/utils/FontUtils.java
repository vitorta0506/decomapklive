package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Typeface;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.BaseApplication;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes3.dex */
public class FontUtils {
    private static final SparseArray<Typeface> TYPEFACE_SPARSE_ARRAY = new SparseArray<>();
    public static final int TYPE_FIRST_RECHARGE = 5;
    public static final int TYPE_GIFT_COMBO = 4;
    public static final int TYPE_NUMBER_DIN = 1;
    public static final int TYPE_UGC_NUMBER_DIN = 2;
    public static final int TYPE_USER_CENTER_NUMBER_DIN = 3;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface TypeFace {
    }

    public static Typeface getTypeface(int i9) {
        SparseArray<Typeface> sparseArray = TYPEFACE_SPARSE_ARRAY;
        Typeface typeface = sparseArray.get(i9);
        if (typeface == null) {
            if (i9 == 1) {
                typeface = Typeface.createFromAsset(BaseApplication.getInstance().getAssets(), "font/DINEngschriftStd.otf");
            } else if (i9 == 2) {
                typeface = Typeface.createFromAsset(BaseApplication.getInstance().getAssets(), "font/DINCond-Black.otf");
            } else if (i9 == 3) {
                typeface = Typeface.createFromAsset(BaseApplication.getInstance().getAssets(), "font/DIN_Alternate_Bold.ttf");
            } else if (i9 == 4) {
                typeface = Typeface.createFromAsset(BaseApplication.getInstance().getAssets(), "font/Arial_Rounded_Bold.ttf");
            } else if (i9 == 5) {
                typeface = Typeface.createFromAsset(BaseApplication.getInstance().getAssets(), "font/BebasNeue_1.otf");
            }
            sparseArray.put(i9, typeface);
        }
        return typeface;
    }

    public static void setFont(TextView textView, int i9) {
        setFont(textView, i9, textView.getTypeface() == null ? 0 : textView.getTypeface().getStyle());
    }

    public static void setFontForView(View view, int i9) {
        if (view instanceof TextView) {
            setFont((TextView) view, i9);
        } else if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                setFontForView(viewGroup.getChildAt(i10), i9);
            }
        }
    }

    public static void setFont(TextView textView, int i9, int i10) {
        Typeface typeface = getTypeface(i9);
        if (typeface != null) {
            textView.setTypeface(typeface, i10);
        }
        textView.setIncludeFontPadding(true);
    }

    public static void setFont(Activity activity, int i9) {
        setFontForView(activity.getWindow().getDecorView(), i9);
    }

    public static void setFont(Fragment fragment, int i9) {
        if (fragment.getView() == null) {
            return;
        }
        setFontForView(fragment.getView(), i9);
    }

    public static void setFont(Dialog dialog, int i9) {
        if (dialog.getWindow() == null) {
            return;
        }
        setFontForView(dialog.getWindow().getDecorView(), i9);
    }
}
