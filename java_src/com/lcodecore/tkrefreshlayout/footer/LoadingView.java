package com.lcodecore.tkrefreshlayout.footer;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.RotateDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.guochao.twink.R$id;
import com.guochao.twink.R$layout;
import com.guochao.twink.R$string;
/* loaded from: classes4.dex */
public class LoadingView extends RelativeLayout implements kc.a {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f27957a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f27958b;

    /* renamed from: c  reason: collision with root package name */
    ValueAnimator f27959c;

    /* loaded from: classes4.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RotateDrawable f27960a;

        a(RotateDrawable rotateDrawable) {
            this.f27960a = rotateDrawable;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f27960a.setLevel(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public LoadingView(Context context) {
        this(context, null);
    }

    @Override // kc.a
    public void a(float f10, float f11) {
        if (this.f27959c.isPaused()) {
            this.f27959c.resume();
        } else {
            this.f27959c.start();
        }
    }

    @Override // kc.a
    public void b(float f10, float f11, float f12) {
    }

    @Override // kc.a
    public void c(float f10, float f11, float f12) {
    }

    public void d() {
        this.f27957a.setVisibility(0);
        this.f27958b.setText(getResources().getString(R$string.loading_more));
    }

    public void e() {
        this.f27957a.setVisibility(8);
        this.f27958b.setText(getResources().getString(R$string.no_more_data));
    }

    @Override // kc.a
    public View getView() {
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f27959c.cancel();
    }

    @Override // kc.a
    public void onFinish() {
        this.f27959c.pause();
    }

    @Override // kc.a
    public void reset() {
    }

    public LoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LoadingView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        LayoutInflater.from(getContext()).inflate(R$layout.loading_view, this);
        this.f27957a = (ImageView) findViewById(R$id.loading_more_image);
        this.f27958b = (TextView) findViewById(R$id.loading_more_text);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 10000);
        this.f27959c = ofInt;
        ofInt.setDuration(2000L);
        this.f27959c.setInterpolator(new LinearInterpolator());
        this.f27959c.setRepeatCount(-1);
        this.f27959c.addUpdateListener(new a((RotateDrawable) this.f27957a.getDrawable()));
        this.f27959c.start();
        this.f27958b.setText(getResources().getString(R$string.loading_more));
    }
}
