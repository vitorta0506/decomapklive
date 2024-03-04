package com.guochao.faceshow.views;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.motion.widget.Key;
import com.guochao.faceshow.R;
/* loaded from: classes4.dex */
public class DYLoadingView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    ObjectAnimator f26579a;

    public DYLoadingView(Context context) {
        super(context);
        b();
    }

    private void a() {
        ObjectAnimator objectAnimator = this.f26579a;
        if (objectAnimator == null || !objectAnimator.isRunning()) {
            return;
        }
        this.f26579a.cancel();
    }

    private void c() {
        if (this.f26579a == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, Key.ROTATION, 360.0f);
            this.f26579a = ofFloat;
            ofFloat.setInterpolator(new LinearInterpolator());
            this.f26579a.setRepeatCount(-1);
            this.f26579a.setDuration(1200L);
            this.f26579a.setRepeatMode(1);
        }
        this.f26579a.start();
    }

    public void b() {
        setImageResource(R.mipmap.icon_all_loading);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        c();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    public DYLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public DYLoadingView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        b();
    }
}
