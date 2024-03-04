package com.guochao.faceshow.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.guochao.lib_core.R$styleable;
/* loaded from: classes4.dex */
public class NormalCircleImageView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    private int f26660a;

    /* renamed from: b  reason: collision with root package name */
    private int f26661b;

    /* renamed from: c  reason: collision with root package name */
    private Object f26662c;

    /* renamed from: d  reason: collision with root package name */
    private int f26663d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f26664e;

    public NormalCircleImageView(Context context) {
        this(context, null);
    }

    public boolean a() {
        return this.f26664e;
    }

    public void b(Object obj, int i9) {
        this.f26662c = obj;
        this.f26663d = i9;
    }

    public int getBorderColor() {
        return this.f26660a;
    }

    public int getBorderWidth() {
        return this.f26661b;
    }

    public void setBorderColor(int i9) {
        if (i9 == this.f26660a) {
            return;
        }
        this.f26660a = i9;
        hc.a.h(this, this.f26662c, this.f26663d);
    }

    public void setBorderWidth(int i9) {
        if (i9 == this.f26661b) {
            return;
        }
        this.f26661b = i9;
        hc.a.h(this, this.f26662c, this.f26663d);
    }

    public void setWithClip(boolean z10) {
        this.f26664e = z10;
    }

    public NormalCircleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NormalCircleImageView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26660a = -1;
        this.f26661b = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.NormalCircleImageView, i9, 0);
        this.f26661b = (int) obtainStyledAttributes.getDimension(R$styleable.NormalCircleImageView_border_width, 0.0f);
        this.f26660a = obtainStyledAttributes.getColor(R$styleable.NormalCircleImageView_border_color, -1);
        obtainStyledAttributes.recycle();
    }
}
