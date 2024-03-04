package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.guochao.lib_core.R$styleable;
/* loaded from: classes3.dex */
public class NewCircleImageView extends ShapeableImageView {

    /* renamed from: a  reason: collision with root package name */
    private int f23905a;

    /* renamed from: b  reason: collision with root package name */
    private float f23906b;

    public NewCircleImageView(Context context) {
        super(context);
        this.f23905a = 637534208;
        this.f23906b = 0.0f;
        a(null);
    }

    private void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.NewCircleImageView);
            this.f23906b = obtainStyledAttributes.getDimension(R$styleable.NewCircleImageView_stroke_width, 0.0f);
            this.f23905a = obtainStyledAttributes.getColor(R$styleable.NewCircleImageView_stroke_color, this.f23905a);
            obtainStyledAttributes.recycle();
        }
        setShapeAppearanceModel(ShapeAppearanceModel.builder().setAllCornerSizes(new RelativeCornerSize(0.5f)).build());
        setStrokeWidth(this.f23906b);
        setStrokeColor(this.f23905a);
    }

    public void setStrokeColor(int i9) {
        setStrokeColor(ColorStateList.valueOf(i9));
    }

    @Override // com.google.android.material.imageview.ShapeableImageView
    public void setStrokeWidth(float f10) {
        super.setStrokeWidth(f10);
        int i9 = ((int) f10) / 2;
        setPadding(i9, i9, i9, i9);
    }

    public NewCircleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23905a = 637534208;
        this.f23906b = 0.0f;
        a(attributeSet);
    }

    public NewCircleImageView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23905a = 637534208;
        this.f23906b = 0.0f;
        a(attributeSet);
    }
}
