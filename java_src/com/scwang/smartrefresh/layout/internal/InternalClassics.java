package com.scwang.smartrefresh.layout.internal;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalClassics;
import wd.i;
import wd.j;
import yd.b;
/* loaded from: classes4.dex */
public abstract class InternalClassics<T extends InternalClassics> extends InternalAbstract {

    /* renamed from: d  reason: collision with root package name */
    protected TextView f29436d;

    /* renamed from: e  reason: collision with root package name */
    protected ImageView f29437e;

    /* renamed from: f  reason: collision with root package name */
    protected ImageView f29438f;

    /* renamed from: g  reason: collision with root package name */
    protected LinearLayout f29439g;

    /* renamed from: h  reason: collision with root package name */
    protected i f29440h;

    /* renamed from: i  reason: collision with root package name */
    protected b f29441i;

    /* renamed from: j  reason: collision with root package name */
    protected b f29442j;

    /* renamed from: k  reason: collision with root package name */
    protected Integer f29443k;

    /* renamed from: l  reason: collision with root package name */
    protected Integer f29444l;

    /* renamed from: m  reason: collision with root package name */
    protected int f29445m;

    /* renamed from: n  reason: collision with root package name */
    protected int f29446n;

    /* renamed from: o  reason: collision with root package name */
    protected int f29447o;

    /* renamed from: p  reason: collision with root package name */
    protected int f29448p;

    /* renamed from: q  reason: collision with root package name */
    protected int f29449q;

    public InternalClassics(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29446n = 500;
        this.f29447o = 20;
        this.f29448p = 20;
        this.f29449q = 0;
        this.f29434b = SpinnerStyle.Translate;
        this.f29437e = new ImageView(context);
        this.f29438f = new ImageView(context);
        TextView textView = new TextView(context);
        this.f29436d = textView;
        textView.setTextColor(-10066330);
        LinearLayout linearLayout = new LinearLayout(context);
        this.f29439g = linearLayout;
        linearLayout.setGravity(1);
        this.f29439g.setOrientation(1);
        ImageView imageView = this.f29437e;
        TextView textView2 = this.f29436d;
        ImageView imageView2 = this.f29438f;
        LinearLayout linearLayout2 = this.f29439g;
        ae.b bVar = new ae.b();
        textView2.setId(1);
        imageView.setId(2);
        imageView2.setId(3);
        linearLayout2.setId(16908312);
        linearLayout2.addView(textView2, new LinearLayout.LayoutParams(-2, -2));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        addView(linearLayout2, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(bVar.a(20.0f), bVar.a(20.0f));
        layoutParams2.addRule(15);
        layoutParams2.addRule(0, 16908312);
        addView(imageView, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((ViewGroup.LayoutParams) layoutParams2);
        layoutParams3.addRule(15);
        layoutParams3.addRule(0, 16908312);
        imageView2.animate().setInterpolator(new LinearInterpolator());
        addView(imageView2, layoutParams3);
        if (getPaddingTop() == 0) {
            if (getPaddingBottom() == 0) {
                int paddingLeft = getPaddingLeft();
                int a10 = bVar.a(20.0f);
                this.f29447o = a10;
                int paddingRight = getPaddingRight();
                int a11 = bVar.a(20.0f);
                this.f29448p = a11;
                setPadding(paddingLeft, a10, paddingRight, a11);
            } else {
                int paddingLeft2 = getPaddingLeft();
                int a12 = bVar.a(20.0f);
                this.f29447o = a12;
                int paddingRight2 = getPaddingRight();
                int paddingBottom = getPaddingBottom();
                this.f29448p = paddingBottom;
                setPadding(paddingLeft2, a12, paddingRight2, paddingBottom);
            }
        } else if (getPaddingBottom() == 0) {
            int paddingLeft3 = getPaddingLeft();
            int paddingTop = getPaddingTop();
            this.f29447o = paddingTop;
            int paddingRight3 = getPaddingRight();
            int a13 = bVar.a(20.0f);
            this.f29448p = a13;
            setPadding(paddingLeft3, paddingTop, paddingRight3, a13);
        } else {
            this.f29447o = getPaddingTop();
            this.f29448p = getPaddingBottom();
        }
        if (isInEditMode()) {
            imageView.setVisibility(8);
        } else {
            imageView2.setVisibility(8);
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void a(@NonNull j jVar, int i9, int i10) {
        k(jVar, i9, i10);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        ImageView imageView = this.f29438f;
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                animatable.stop();
            }
        } else {
            imageView.animate().rotation(0.0f).setDuration(0L);
        }
        imageView.setVisibility(8);
        return this.f29446n;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void g(@NonNull i iVar, int i9, int i10) {
        this.f29440h = iVar;
        iVar.j(this, this.f29445m);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void k(@NonNull j jVar, int i9, int i10) {
        ImageView imageView = this.f29438f;
        if (imageView.getVisibility() != 0) {
            imageView.setVisibility(0);
            Drawable drawable = this.f29438f.getDrawable();
            if (drawable instanceof Animatable) {
                ((Animatable) drawable).start();
            } else {
                imageView.animate().rotation(36000.0f).setDuration(100000L);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ImageView imageView = this.f29437e;
        ImageView imageView2 = this.f29438f;
        imageView.animate().cancel();
        imageView2.animate().cancel();
        Drawable drawable = this.f29438f.getDrawable();
        if (drawable instanceof Animatable) {
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                animatable.stop();
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        if (View.MeasureSpec.getMode(i10) == 1073741824) {
            int size = View.MeasureSpec.getSize(i10);
            int i11 = this.f29449q;
            if (size < i11) {
                int i12 = (size - i11) / 2;
                setPadding(getPaddingLeft(), i12, getPaddingRight(), i12);
            } else {
                setPadding(getPaddingLeft(), 0, getPaddingRight(), 0);
            }
        } else {
            setPadding(getPaddingLeft(), this.f29447o, getPaddingRight(), this.f29448p);
        }
        super.onMeasure(i9, i10);
        if (this.f29449q == 0) {
            for (int i13 = 0; i13 < getChildCount(); i13++) {
                int measuredHeight = getChildAt(i13).getMeasuredHeight();
                if (this.f29449q < measuredHeight) {
                    this.f29449q = measuredHeight;
                }
            }
        }
    }

    protected T r() {
        return this;
    }

    public T s(@ColorInt int i9) {
        this.f29443k = Integer.valueOf(i9);
        this.f29436d.setTextColor(i9);
        b bVar = this.f29441i;
        if (bVar != null) {
            bVar.a(i9);
            this.f29437e.invalidateDrawable(this.f29441i);
        }
        b bVar2 = this.f29442j;
        if (bVar2 != null) {
            bVar2.a(i9);
            this.f29438f.invalidateDrawable(this.f29442j);
        }
        return r();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            if (!(getBackground() instanceof BitmapDrawable) && this.f29444l == null) {
                t(iArr[0]);
                this.f29444l = null;
            }
            if (this.f29443k == null) {
                if (iArr.length > 1) {
                    s(iArr[1]);
                }
                this.f29443k = null;
            }
        }
    }

    public T t(@ColorInt int i9) {
        Integer valueOf = Integer.valueOf(i9);
        this.f29444l = valueOf;
        this.f29445m = valueOf.intValue();
        i iVar = this.f29440h;
        if (iVar != null) {
            iVar.j(this, this.f29444l.intValue());
        }
        return r();
    }
}
