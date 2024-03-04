package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class Divider extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f23548a;

    /* renamed from: b  reason: collision with root package name */
    private int f23549b;

    /* renamed from: c  reason: collision with root package name */
    private float f23550c;

    /* renamed from: d  reason: collision with root package name */
    private Drawable f23551d;

    /* renamed from: e  reason: collision with root package name */
    private float f23552e;

    public Divider(Context context) {
        super(context);
        a(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Divider);
            int color = obtainStyledAttributes.getColor(1, 0);
            this.f23548a = color;
            if (color <= 0) {
                this.f23548a = Color.parseColor("#e5e9ed");
            }
            this.f23549b = obtainStyledAttributes.getInt(4, 0);
            this.f23550c = obtainStyledAttributes.getDimension(3, DensityUtil.dp2px(getContext(), 0.5f));
            this.f23551d = obtainStyledAttributes.getDrawable(2);
            this.f23552e = obtainStyledAttributes.getDimension(0, 0.0f);
            obtainStyledAttributes.recycle();
        }
        Drawable drawable = this.f23551d;
        if (drawable != null) {
            setBackground(drawable);
        } else {
            setBackgroundColor(this.f23548a);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        if (this.f23549b != 0) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) this.f23550c, BasicMeasure.EXACTLY);
            float f10 = this.f23552e;
            super.onMeasure(makeMeasureSpec, f10 > 0.0f ? (int) f10 : View.MeasureSpec.makeMeasureSpec(0, 0));
            return;
        }
        float f11 = this.f23552e;
        super.onMeasure(f11 > 0.0f ? (int) f11 : View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec((int) this.f23550c, BasicMeasure.EXACTLY));
    }

    public Divider(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public Divider(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a(context, attributeSet);
    }
}
