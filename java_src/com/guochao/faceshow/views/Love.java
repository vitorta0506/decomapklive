package com.guochao.faceshow.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.Key;
import com.guochao.faceshow.R;
import java.util.Random;
/* loaded from: classes4.dex */
public class Love extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private Context f26655a;

    /* renamed from: b  reason: collision with root package name */
    float[] f26656b;

    /* renamed from: c  reason: collision with root package name */
    public float f26657c;

    /* loaded from: classes4.dex */
    class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f26658a;

        a(ImageView imageView) {
            this.f26658a = imageView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            Love.this.removeViewInLayout(this.f26658a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements TimeInterpolator {
        b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            return f10;
        }
    }

    public Love(Context context) {
        super(context);
        this.f26656b = new float[]{-30.0f, -20.0f, 0.0f, 20.0f, 30.0f};
        this.f26657c = 0.8f;
        c(context);
    }

    public static ObjectAnimator b(View view, float f10, float f11, long j10, long j11) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", f10, f11);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setStartDelay(j11);
        ofFloat.setDuration(j10);
        return ofFloat;
    }

    private void c(Context context) {
        this.f26655a = context;
    }

    public static ObjectAnimator d(View view, long j10, long j11, float... fArr) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, Key.ROTATION, fArr);
        ofFloat.setDuration(j10);
        ofFloat.setStartDelay(j11);
        ofFloat.setInterpolator(new b());
        return ofFloat;
    }

    public static ObjectAnimator e(View view, String str, float f10, float f11, long j10, long j11) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, str, f10, f11);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setStartDelay(j11);
        ofFloat.setDuration(j10);
        return ofFloat;
    }

    public static ObjectAnimator f(View view, float f10, float f11, long j10, long j11) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationY", f10, f11);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setStartDelay(j11);
        ofFloat.setDuration(j10);
        return ofFloat;
    }

    public void a(MotionEvent motionEvent) {
        ImageView imageView = new ImageView(this.f26655a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(300, 300);
        layoutParams.leftMargin = ((int) motionEvent.getX()) - 150;
        layoutParams.topMargin = ((int) motionEvent.getY()) - 300;
        imageView.setImageDrawable(getResources().getDrawable(R.mipmap.doubleclick));
        imageView.setLayoutParams(layoutParams);
        addView(imageView);
        AnimatorSet animatorSet = new AnimatorSet();
        float f10 = this.f26657c;
        AnimatorSet.Builder play = animatorSet.play(e(imageView, "scaleX", f10 * 2.0f, f10 * 0.9f, 100L, 0L));
        float f11 = this.f26657c;
        AnimatorSet.Builder with = play.with(e(imageView, "scaleY", f11 * 2.0f, f11 * 0.9f, 100L, 0L)).with(d(imageView, 0L, 0L, this.f26656b[new Random().nextInt(4)])).with(b(imageView, 0.0f, 1.0f, 100L, 0L));
        float f12 = this.f26657c;
        AnimatorSet.Builder with2 = with.with(e(imageView, "scaleX", f12 * 0.9f, f12 * 1.0f, 50L, 150L));
        float f13 = this.f26657c;
        AnimatorSet.Builder with3 = with2.with(e(imageView, "scaleY", f13 * 0.9f, f13 * 1.0f, 50L, 150L)).with(f(imageView, 0.0f, -600.0f, 800L, 400L)).with(b(imageView, 1.0f, 0.0f, 300L, 400L));
        float f14 = this.f26657c;
        AnimatorSet.Builder with4 = with3.with(e(imageView, "scaleX", f14 * 1.0f, f14 * 3.0f, 700L, 400L));
        float f15 = this.f26657c;
        with4.with(e(imageView, "scaleY", f15 * 1.0f, f15 * 3.0f, 700L, 400L));
        animatorSet.start();
        animatorSet.addListener(new a(imageView));
    }

    public Love(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26656b = new float[]{-30.0f, -20.0f, 0.0f, 20.0f, 30.0f};
        this.f26657c = 0.8f;
        c(context);
    }

    public Love(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26656b = new float[]{-30.0f, -20.0f, 0.0f, 20.0f, 30.0f};
        this.f26657c = 0.8f;
        c(context);
    }
}
