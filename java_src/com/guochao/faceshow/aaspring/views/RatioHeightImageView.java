package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.guochao.faceshow.R$styleable;
/* loaded from: classes3.dex */
public class RatioHeightImageView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    float f23988a;

    public RatioHeightImageView(Context context) {
        super(context);
        this.f23988a = 1.0f;
    }

    public float getRatio() {
        return this.f23988a;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        int measuredWidth = getMeasuredWidth();
        setMeasuredDimension(measuredWidth, (int) (measuredWidth * this.f23988a));
    }

    public void setRatio(float f10) {
        this.f23988a = f10;
        requestLayout();
    }

    public RatioHeightImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23988a = 1.0f;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RatioHeightImageView);
            this.f23988a = obtainStyledAttributes.getFloat(0, 1.0f);
            obtainStyledAttributes.recycle();
        }
    }

    public RatioHeightImageView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23988a = 1.0f;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RatioHeightImageView);
            this.f23988a = obtainStyledAttributes.getFloat(0, 1.0f);
            obtainStyledAttributes.recycle();
        }
    }
}
