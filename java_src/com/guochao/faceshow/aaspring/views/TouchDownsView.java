package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class TouchDownsView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private View.OnTouchListener f24084a;

    public TouchDownsView(@NonNull Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        View.OnTouchListener onTouchListener = this.f24084a;
        if (onTouchListener != null) {
            onTouchListener.onTouch(this, motionEvent);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f24084a = onTouchListener;
        super.setOnTouchListener(onTouchListener);
    }

    public TouchDownsView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TouchDownsView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
