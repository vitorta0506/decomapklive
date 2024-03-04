package com.twitter.sdk.android.tweetui.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.twitter.sdk.android.tweetui.R$styleable;
/* loaded from: classes4.dex */
public class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    protected double f35453a;

    /* renamed from: b  reason: collision with root package name */
    private int f35454b;

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    private void a(int i9) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(i9, R$styleable.AspectRatioFrameLayout);
        try {
            this.f35453a = obtainStyledAttributes.getFloat(R$styleable.AspectRatioFrameLayout_tw__frame_layout_aspect_ratio, 1.0f);
            this.f35454b = obtainStyledAttributes.getInt(R$styleable.AspectRatioFrameLayout_tw__frame_layout_dimension_to_adjust, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        int measuredHeight;
        int i11;
        int i12;
        int measuredWidth;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.f35454b == 0) {
            if (View.MeasureSpec.getMode(i9) == 1073741824) {
                measuredWidth = View.MeasureSpec.getSize(i9);
            } else {
                super.onMeasure(i9, i10);
                measuredWidth = getMeasuredWidth();
            }
            i12 = measuredWidth - paddingLeft;
            i11 = (int) (i12 / this.f35453a);
        } else {
            if (View.MeasureSpec.getMode(i10) == 1073741824) {
                measuredHeight = View.MeasureSpec.getSize(i10);
            } else {
                super.onMeasure(i9, i10);
                measuredHeight = getMeasuredHeight();
            }
            i11 = measuredHeight - paddingBottom;
            i12 = (int) (i11 * this.f35453a);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12 + paddingLeft, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i11 + paddingBottom, BasicMeasure.EXACTLY));
    }

    public void setAspectRatio(double d10) {
        this.f35453a = d10;
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a(i9);
    }
}
