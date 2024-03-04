package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.RelativeLayout;
import com.guochao.faceshow.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/* loaded from: classes3.dex */
public class PeriscopeLayout extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private Interpolator f23932a;

    /* renamed from: b  reason: collision with root package name */
    private Interpolator f23933b;

    /* renamed from: c  reason: collision with root package name */
    private Interpolator f23934c;

    /* renamed from: d  reason: collision with root package name */
    private Interpolator[] f23935d;

    /* renamed from: e  reason: collision with root package name */
    private int f23936e;

    /* renamed from: f  reason: collision with root package name */
    private int f23937f;

    /* renamed from: g  reason: collision with root package name */
    private RelativeLayout.LayoutParams f23938g;

    /* renamed from: h  reason: collision with root package name */
    private List<Drawable> f23939h;

    /* renamed from: i  reason: collision with root package name */
    private Random f23940i;

    /* renamed from: j  reason: collision with root package name */
    private int f23941j;

    /* renamed from: k  reason: collision with root package name */
    private int f23942k;

    /* renamed from: l  reason: collision with root package name */
    private List<View> f23943l;

    /* renamed from: m  reason: collision with root package name */
    boolean f23944m;

    public PeriscopeLayout(Context context) {
        super(context);
        this.f23932a = new LinearInterpolator();
        this.f23933b = new AccelerateInterpolator();
        this.f23934c = new AccelerateDecelerateInterpolator();
        this.f23940i = new Random();
        this.f23944m = false;
        a();
    }

    private void a() {
        this.f23943l = new ArrayList();
        this.f23939h = new ArrayList();
        Drawable drawable = getResources().getDrawable(R.mipmap.heart_01);
        Drawable drawable2 = getResources().getDrawable(R.mipmap.heart_02);
        Drawable drawable3 = getResources().getDrawable(R.mipmap.heart_03);
        Drawable drawable4 = getResources().getDrawable(R.mipmap.heart_04);
        Drawable drawable5 = getResources().getDrawable(R.mipmap.heart_05);
        Drawable drawable6 = getResources().getDrawable(R.mipmap.heart_06);
        this.f23939h.add(drawable);
        this.f23939h.add(drawable2);
        this.f23939h.add(drawable3);
        this.f23939h.add(drawable4);
        this.f23939h.add(drawable5);
        this.f23939h.add(drawable6);
        this.f23941j = drawable.getIntrinsicHeight();
        this.f23942k = drawable.getIntrinsicWidth();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.f23942k, this.f23941j);
        this.f23938g = layoutParams;
        layoutParams.addRule(14, -1);
        this.f23938g.addRule(12, -1);
        this.f23935d = r0;
        Interpolator[] interpolatorArr = {this.f23932a, this.f23933b, this.f23934c};
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        this.f23937f = getMeasuredWidth();
        this.f23936e = getMeasuredHeight();
    }

    public PeriscopeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23932a = new LinearInterpolator();
        this.f23933b = new AccelerateInterpolator();
        this.f23934c = new AccelerateDecelerateInterpolator();
        this.f23940i = new Random();
        this.f23944m = false;
        a();
    }

    public PeriscopeLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23932a = new LinearInterpolator();
        this.f23933b = new AccelerateInterpolator();
        this.f23934c = new AccelerateDecelerateInterpolator();
        this.f23940i = new Random();
        this.f23944m = false;
        a();
    }
}
