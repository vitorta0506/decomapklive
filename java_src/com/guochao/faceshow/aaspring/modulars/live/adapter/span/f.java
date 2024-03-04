package com.guochao.faceshow.aaspring.modulars.live.adapter.span;

import android.graphics.drawable.Drawable;
import android.widget.TextView;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public abstract class f extends com.guochao.faceshow.aaspring.modulars.live.adapter.a {
    protected WeakReference<TextView> mTextViewWeakReference;

    public f(Drawable drawable) {
        super(drawable);
    }

    public void bindTextView(TextView textView) {
        this.mTextViewWeakReference = new WeakReference<>(textView);
    }
}
