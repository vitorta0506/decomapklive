package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.util.AttributeSet;
/* loaded from: classes3.dex */
public class FaceCastWebView extends DsBridgeWebView {
    public FaceCastWebView(Context context) {
        super(y(context));
    }

    private static Context y(Context context) {
        return Build.VERSION.SDK_INT < 23 ? context.createConfigurationContext(new Configuration()) : context;
    }

    public FaceCastWebView(Context context, AttributeSet attributeSet) {
        super(y(context), attributeSet);
    }
}
