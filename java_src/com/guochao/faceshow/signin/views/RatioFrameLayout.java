package com.guochao.faceshow.signin.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.guochao.faceshow.signin.R$styleable;
/* loaded from: classes4.dex */
public class RatioFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    float f26317a;

    /* renamed from: b  reason: collision with root package name */
    int f26318b;

    /* renamed from: c  reason: collision with root package name */
    boolean f26319c;

    public RatioFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        if (this.f26319c) {
            if (this.f26318b == 0) {
                super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec((int) ((View.MeasureSpec.getSize(i9) * this.f26317a) + 0.5d), BasicMeasure.EXACTLY));
                int measuredWidth = getMeasuredWidth();
                setMeasuredDimension(measuredWidth, (int) ((measuredWidth * this.f26317a) + 0.5d));
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec((int) ((View.MeasureSpec.getSize(i10) / this.f26317a) + 0.5d), BasicMeasure.EXACTLY), i10);
            int measuredHeight = getMeasuredHeight();
            setMeasuredDimension((int) ((measuredHeight / this.f26317a) + 0.5d), measuredHeight);
            return;
        }
        super.onMeasure(i9, i10);
    }

    public void setRatio(float f10) {
        if (this.f26317a != f10) {
            this.f26317a = f10;
            this.f26319c = true;
            requestLayout();
        }
    }

    public RatioFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RatioFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26317a = 1.0f;
        this.f26318b = 0;
        this.f26319c = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RatioFrameLayout);
            this.f26317a = obtainStyledAttributes.getFloat(R$styleable.RatioFrameLayout_ratio, 1.0f);
            this.f26318b = obtainStyledAttributes.getInt(R$styleable.RatioFrameLayout_orientation, 0);
            obtainStyledAttributes.recycle();
        }
    }
}
