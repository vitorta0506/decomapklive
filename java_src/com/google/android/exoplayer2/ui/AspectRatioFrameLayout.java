package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
/* loaded from: classes2.dex */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final c f6553a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private b f6554b;

    /* renamed from: c  reason: collision with root package name */
    private float f6555c;

    /* renamed from: d  reason: collision with root package name */
    private int f6556d;

    /* loaded from: classes2.dex */
    public interface b {
        void a(float f10, float f11, boolean z10);
    }

    /* loaded from: classes2.dex */
    private final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private float f6557a;

        /* renamed from: b  reason: collision with root package name */
        private float f6558b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f6559c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f6560d;

        private c() {
        }

        public void b(float f10, float f11, boolean z10) {
            this.f6557a = f10;
            this.f6558b = f11;
            this.f6559c = z10;
            if (this.f6560d) {
                return;
            }
            this.f6560d = true;
            AspectRatioFrameLayout.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6560d = false;
            if (AspectRatioFrameLayout.this.f6554b == null) {
                return;
            }
            AspectRatioFrameLayout.this.f6554b.a(this.f6557a, this.f6558b, this.f6559c);
        }
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public int getResizeMode() {
        return this.f6556d;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        float f10;
        float f11;
        super.onMeasure(i9, i10);
        if (this.f6555c <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f12 = measuredWidth;
        float f13 = measuredHeight;
        float f14 = f12 / f13;
        float f15 = (this.f6555c / f14) - 1.0f;
        if (Math.abs(f15) <= 0.01f) {
            this.f6553a.b(this.f6555c, f14, false);
            return;
        }
        int i11 = this.f6556d;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    f10 = this.f6555c;
                } else if (i11 == 4) {
                    if (f15 > 0.0f) {
                        f10 = this.f6555c;
                    } else {
                        f11 = this.f6555c;
                    }
                }
                measuredWidth = (int) (f13 * f10);
            } else {
                f11 = this.f6555c;
            }
            measuredHeight = (int) (f12 / f11);
        } else if (f15 > 0.0f) {
            f11 = this.f6555c;
            measuredHeight = (int) (f12 / f11);
        } else {
            f10 = this.f6555c;
            measuredWidth = (int) (f13 * f10);
        }
        this.f6553a.b(this.f6555c, f14, true);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(measuredHeight, BasicMeasure.EXACTLY));
    }

    public void setAspectRatio(float f10) {
        if (this.f6555c != f10) {
            this.f6555c = f10;
            requestLayout();
        }
    }

    public void setAspectRatioListener(@Nullable b bVar) {
        this.f6554b = bVar;
    }

    public void setResizeMode(int i9) {
        if (this.f6556d != i9) {
            this.f6556d = i9;
            requestLayout();
        }
    }

    public AspectRatioFrameLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6556d = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.AspectRatioFrameLayout, 0, 0);
            try {
                this.f6556d = obtainStyledAttributes.getInt(R$styleable.AspectRatioFrameLayout_resize_mode, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f6553a = new c();
    }
}
