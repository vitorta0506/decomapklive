package com.guochao.faceshow.utils;

import android.app.Activity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
/* loaded from: classes4.dex */
public class AAViewCom {
    public static Button getBtn(View view, int i9) {
        return (Button) view.findViewById(i9);
    }

    public static EditText getEt(Activity activity, int i9) {
        return (EditText) activity.findViewById(i9);
    }

    public static ImageView getIv(View view, int i9) {
        return (ImageView) view.findViewById(i9);
    }

    public static TextView getTv(View view, int i9) {
        return (TextView) view.findViewById(i9);
    }

    public static View getView(View view, int i9) {
        return view.findViewById(i9);
    }
}
