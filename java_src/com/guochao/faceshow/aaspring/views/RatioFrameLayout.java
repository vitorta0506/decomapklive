package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.guochao.faceshow.R$styleable;
/* loaded from: classes3.dex */
public class RatioFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    float f23985a;

    /* renamed from: b  reason: collision with root package name */
    int f23986b;

    /* renamed from: c  reason: collision with root package name */
    boolean f23987c;

    public RatioFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        if (this.f23987c) {
            if (this.f23986b == 0) {
                super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec((int) ((View.MeasureSpec.getSize(i9) * this.f23985a) + 0.5d), BasicMeasure.EXACTLY));
                int measuredWidth = getMeasuredWidth();
                setMeasuredDimension(measuredWidth, (int) ((measuredWidth * this.f23985a) + 0.5d));
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec((int) ((View.MeasureSpec.getSize(i10) / this.f23985a) + 0.5d), BasicMeasure.EXACTLY), i10);
            int measuredHeight = getMeasuredHeight();
            setMeasuredDimension((int) ((measuredHeight / this.f23985a) + 0.5d), measuredHeight);
            return;
        }
        super.onMeasure(i9, i10);
    }

    public void setRatio(float f10) {
        if (this.f23985a != f10) {
            this.f23985a = f10;
            this.f23987c = true;
            requestLayout();
        }
    }

    public RatioFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RatioFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23985a = 1.0f;
        this.f23986b = 0;
        this.f23987c = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RatioFrameLayout);
            this.f23985a = obtainStyledAttributes.getFloat(1, 1.0f);
            this.f23986b = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }
    }
}
