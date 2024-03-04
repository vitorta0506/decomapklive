package com.lcodecore.tkrefreshlayout.header.progresslayout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.core.view.ViewCompat;
import kc.b;
import kc.c;
/* loaded from: classes4.dex */
public class ProgressLayout extends FrameLayout implements b {

    /* renamed from: a  reason: collision with root package name */
    private int f28024a;

    /* renamed from: b  reason: collision with root package name */
    private int f28025b;

    /* renamed from: c  reason: collision with root package name */
    private CircleImageView f28026c;

    /* renamed from: d  reason: collision with root package name */
    private lc.a f28027d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f28028e;

    /* loaded from: classes4.dex */
    class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f28029a;

        a(c cVar) {
            this.f28029a = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ProgressLayout.this.reset();
            this.f28029a.a();
        }
    }

    public ProgressLayout(Context context) {
        this(context, null);
    }

    private void d() {
        this.f28026c = new CircleImageView(getContext(), -328966, 20.0f);
        lc.a aVar = new lc.a(getContext(), this);
        this.f28027d = aVar;
        aVar.k(-328966);
        this.f28026c.setImageDrawable(this.f28027d);
        this.f28026c.setVisibility(8);
        this.f28026c.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        addView(this.f28026c);
    }

    @Override // kc.b
    public void a(float f10, float f11) {
        this.f28026c.setVisibility(0);
        this.f28026c.getBackground().setAlpha(255);
        this.f28027d.setAlpha(255);
        ViewCompat.setScaleX(this.f28026c, 1.0f);
        ViewCompat.setScaleY(this.f28026c, 1.0f);
        this.f28027d.j(1.0f);
        this.f28027d.start();
    }

    @Override // kc.b
    public void b(float f10, float f11, float f12) {
        this.f28028e = false;
        if (f10 >= 1.0f) {
            ViewCompat.setScaleX(this.f28026c, 1.0f);
            ViewCompat.setScaleY(this.f28026c, 1.0f);
            return;
        }
        ViewCompat.setScaleX(this.f28026c, f10);
        ViewCompat.setScaleY(this.f28026c, f10);
    }

    @Override // kc.b
    public void c(float f10, float f11, float f12) {
        if (!this.f28028e) {
            this.f28028e = true;
            this.f28027d.setAlpha(76);
        }
        if (this.f28026c.getVisibility() != 0) {
            this.f28026c.setVisibility(0);
        }
        if (f10 >= 1.0f) {
            ViewCompat.setScaleX(this.f28026c, 1.0f);
            ViewCompat.setScaleY(this.f28026c, 1.0f);
        } else {
            ViewCompat.setScaleX(this.f28026c, f10);
            ViewCompat.setScaleY(this.f28026c, f10);
        }
        if (f10 <= 1.0f) {
            this.f28027d.setAlpha((int) ((179.0f * f10) + 76.0f));
        }
        float max = (((float) Math.max(f10 - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        this.f28027d.p(0.0f, Math.min(0.8f, max * 0.8f));
        this.f28027d.j(Math.min(1.0f, max));
        this.f28027d.m(((max * 0.4f) - 0.25f) * 0.5f);
    }

    @Override // kc.b
    public View getView() {
        return this;
    }

    @Override // kc.b
    public void onFinish(c cVar) {
        this.f28026c.animate().scaleX(0.0f).scaleY(0.0f).alpha(0.0f).setListener(new a(cVar)).start();
    }

    @Override // kc.b
    public void reset() {
        this.f28026c.clearAnimation();
        this.f28027d.stop();
        this.f28026c.setVisibility(8);
        this.f28026c.getBackground().setAlpha(255);
        this.f28027d.setAlpha(255);
        ViewCompat.setScaleX(this.f28026c, 0.0f);
        ViewCompat.setScaleY(this.f28026c, 0.0f);
        ViewCompat.setAlpha(this.f28026c, 1.0f);
    }

    public void setColorSchemeColors(int... iArr) {
        this.f28027d.l(iArr);
    }

    public void setColorSchemeResources(@ColorRes int... iArr) {
        Resources resources = getResources();
        int[] iArr2 = new int[iArr.length];
        for (int i9 = 0; i9 < iArr.length; i9++) {
            iArr2[i9] = resources.getColor(iArr[i9]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setProgressBackgroundColorSchemeColor(@ColorInt int i9) {
        this.f28026c.setBackgroundColor(i9);
        this.f28027d.k(i9);
    }

    public void setProgressBackgroundColorSchemeResource(@ColorRes int i9) {
        setProgressBackgroundColorSchemeColor(getResources().getColor(i9));
    }

    public void setSize(int i9) {
        if (i9 == 0 || i9 == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i9 == 0) {
                int i10 = (int) (displayMetrics.density * 56.0f);
                this.f28024a = i10;
                this.f28025b = i10;
            } else {
                int i11 = (int) (displayMetrics.density * 40.0f);
                this.f28024a = i11;
                this.f28025b = i11;
            }
            this.f28026c.setImageDrawable(null);
            this.f28027d.s(i9);
            this.f28026c.setImageDrawable(this.f28027d);
        }
    }

    public ProgressLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProgressLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f28028e = false;
        float f10 = getResources().getDisplayMetrics().density;
        this.f28024a = (int) (f10 * 40.0f);
        this.f28025b = (int) (f10 * 40.0f);
        d();
        ViewCompat.setChildrenDrawingOrderEnabled(this, true);
    }
}
