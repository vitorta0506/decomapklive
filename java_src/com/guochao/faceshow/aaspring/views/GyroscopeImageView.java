package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
/* loaded from: classes3.dex */
public class GyroscopeImageView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    private float f23720a;

    /* renamed from: b  reason: collision with root package name */
    private float f23721b;

    public GyroscopeImageView(Context context) {
        super(context);
        a();
    }

    private void a() {
        setScaleType(ImageView.ScaleType.CENTER);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        int size = (View.MeasureSpec.getSize(i9) - getPaddingLeft()) - getPaddingRight();
        int size2 = (View.MeasureSpec.getSize(i10) - getPaddingTop()) - getPaddingBottom();
        if (getDrawable() != null) {
            int intrinsicWidth = getDrawable().getIntrinsicWidth();
            int intrinsicHeight = getDrawable().getIntrinsicHeight();
            this.f23720a = Math.abs((intrinsicWidth - size) * 0.08f);
            this.f23721b = Math.abs((intrinsicHeight - size2) * 0.15f);
        }
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        super.setScaleType(ImageView.ScaleType.CENTER);
    }

    public GyroscopeImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public GyroscopeImageView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a();
    }
}
