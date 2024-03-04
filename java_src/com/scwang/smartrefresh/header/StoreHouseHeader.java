package com.scwang.smartrefresh.header;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import java.util.ArrayList;
import java.util.List;
import wd.g;
import wd.i;
import wd.j;
/* loaded from: classes4.dex */
public class StoreHouseHeader extends InternalAbstract implements g {

    /* renamed from: d  reason: collision with root package name */
    public List<td.a> f29113d;

    /* renamed from: e  reason: collision with root package name */
    protected int f29114e;

    /* renamed from: f  reason: collision with root package name */
    protected float f29115f;

    /* renamed from: g  reason: collision with root package name */
    protected int f29116g;

    /* renamed from: h  reason: collision with root package name */
    protected int f29117h;

    /* renamed from: i  reason: collision with root package name */
    protected float f29118i;

    /* renamed from: j  reason: collision with root package name */
    protected int f29119j;

    /* renamed from: k  reason: collision with root package name */
    protected int f29120k;

    /* renamed from: l  reason: collision with root package name */
    protected int f29121l;

    /* renamed from: m  reason: collision with root package name */
    protected int f29122m;

    /* renamed from: n  reason: collision with root package name */
    protected int f29123n;

    /* renamed from: o  reason: collision with root package name */
    protected int f29124o;

    /* renamed from: p  reason: collision with root package name */
    protected int f29125p;

    /* renamed from: q  reason: collision with root package name */
    protected int f29126q;

    /* renamed from: r  reason: collision with root package name */
    protected boolean f29127r;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f29128s;

    /* renamed from: t  reason: collision with root package name */
    protected Matrix f29129t;

    /* renamed from: u  reason: collision with root package name */
    protected i f29130u;

    /* renamed from: v  reason: collision with root package name */
    protected b f29131v;

    /* renamed from: w  reason: collision with root package name */
    protected Transformation f29132w;

    /* loaded from: classes4.dex */
    class a extends Animation {
        a() {
            super.setDuration(250L);
            super.setInterpolator(new AccelerateInterpolator());
        }

        @Override // android.view.animation.Animation
        protected void applyTransformation(float f10, Transformation transformation) {
            StoreHouseHeader storeHouseHeader = StoreHouseHeader.this;
            storeHouseHeader.f29118i = 1.0f - f10;
            storeHouseHeader.invalidate();
            if (f10 == 1.0f) {
                for (int i9 = 0; i9 < StoreHouseHeader.this.f29113d.size(); i9++) {
                    StoreHouseHeader.this.f29113d.get(i9).b(StoreHouseHeader.this.f29117h);
                }
            }
        }
    }

    public StoreHouseHeader(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void a(@NonNull j jVar, int i9, int i10) {
        this.f29127r = true;
        this.f29131v.d();
        invalidate();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        this.f29127r = false;
        this.f29131v.f();
        if (z10 && this.f29128s) {
            startAnimation(new a());
            return 250;
        }
        for (int i9 = 0; i9 < this.f29113d.size(); i9++) {
            this.f29113d.get(i9).b(this.f29117h);
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int save = canvas.save();
        int size = this.f29113d.size();
        float f10 = isInEditMode() ? 1.0f : this.f29118i;
        for (int i9 = 0; i9 < size; i9++) {
            canvas.save();
            td.a aVar = this.f29113d.get(i9);
            PointF pointF = aVar.f58123a;
            float f11 = this.f29121l + pointF.x;
            float f12 = this.f29122m + pointF.y;
            if (this.f29127r) {
                aVar.getTransformation(getDrawingTime(), this.f29132w);
                canvas.translate(f11, f12);
            } else if (f10 == 0.0f) {
                aVar.b(this.f29117h);
            } else {
                float f13 = (i9 * 0.3f) / size;
                float f14 = 0.3f - f13;
                if (f10 != 1.0f && f10 < 1.0f - f14) {
                    float min = f10 > f13 ? Math.min(1.0f, (f10 - f13) / 0.7f) : 0.0f;
                    float f15 = 1.0f - min;
                    float f16 = f11 + (aVar.f58124b * f15);
                    float f17 = f12 + ((-this.f29116g) * f15);
                    this.f29129t.reset();
                    this.f29129t.postRotate(360.0f * min);
                    this.f29129t.postScale(min, min);
                    this.f29129t.postTranslate(f16, f17);
                    aVar.d(min * 0.4f);
                    canvas.concat(this.f29129t);
                } else {
                    canvas.translate(f11, f12);
                    aVar.d(0.4f);
                }
            }
            aVar.a(canvas);
            canvas.restore();
        }
        if (this.f29127r) {
            invalidate();
        }
        canvas.restoreToCount(save);
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void g(@NonNull i iVar, int i9, int i10) {
        this.f29130u = iVar;
        iVar.j(this, this.f29126q);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        this.f29118i = f10 * 0.8f;
        invalidate();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.setMeasuredDimension(View.resolveSize(super.getSuggestedMinimumWidth(), i9), View.resolveSize(super.getSuggestedMinimumHeight(), i10));
        this.f29121l = (getMeasuredWidth() - this.f29119j) / 2;
        this.f29122m = (getMeasuredHeight() - this.f29120k) / 2;
        this.f29116g = getMeasuredHeight() / 2;
    }

    public StoreHouseHeader r(List<float[]> list) {
        boolean z10 = this.f29113d.size() > 0;
        this.f29113d.clear();
        ae.b bVar = new ae.b();
        float f10 = 0.0f;
        float f11 = 0.0f;
        for (int i9 = 0; i9 < list.size(); i9++) {
            float[] fArr = list.get(i9);
            PointF pointF = new PointF(bVar.a(fArr[0]) * this.f29115f, bVar.a(fArr[1]) * this.f29115f);
            PointF pointF2 = new PointF(bVar.a(fArr[2]) * this.f29115f, bVar.a(fArr[3]) * this.f29115f);
            f10 = Math.max(Math.max(f10, pointF.x), pointF2.x);
            f11 = Math.max(Math.max(f11, pointF.y), pointF2.y);
            td.a aVar = new td.a(i9, pointF, pointF2, this.f29125p, this.f29114e);
            aVar.b(this.f29117h);
            this.f29113d.add(aVar);
        }
        this.f29119j = (int) Math.ceil(f10);
        this.f29120k = (int) Math.ceil(f11);
        if (z10) {
            requestLayout();
        }
        return this;
    }

    public StoreHouseHeader s(String str) {
        t(str, 25);
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            int i9 = iArr[0];
            this.f29126q = i9;
            i iVar = this.f29130u;
            if (iVar != null) {
                iVar.j(this, i9);
            }
            if (iArr.length > 1) {
                u(iArr[1]);
            }
        }
    }

    public StoreHouseHeader t(String str, int i9) {
        r(td.b.a(str, i9 * 0.01f, 14));
        return this;
    }

    public StoreHouseHeader u(@ColorInt int i9) {
        this.f29125p = i9;
        for (int i10 = 0; i10 < this.f29113d.size(); i10++) {
            this.f29113d.get(i10).e(i9);
        }
        return this;
    }

    public StoreHouseHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StoreHouseHeader(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29113d = new ArrayList();
        this.f29114e = -1;
        this.f29115f = 1.0f;
        this.f29116g = -1;
        this.f29117h = -1;
        this.f29118i = 0.0f;
        this.f29119j = 0;
        this.f29120k = 0;
        this.f29121l = 0;
        this.f29122m = 0;
        this.f29123n = 1000;
        this.f29124o = 1000;
        this.f29125p = -1;
        this.f29126q = 0;
        this.f29127r = false;
        this.f29128s = false;
        this.f29129t = new Matrix();
        this.f29131v = new b(this, null);
        this.f29132w = new Transformation();
        ae.b bVar = new ae.b();
        this.f29114e = bVar.a(1.0f);
        this.f29116g = bVar.a(40.0f);
        this.f29117h = Resources.getSystem().getDisplayMetrics().widthPixels / 2;
        this.f29126q = -13421773;
        u(-3355444);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.StoreHouseHeader);
        this.f29114e = obtainStyledAttributes.getDimensionPixelOffset(R$styleable.StoreHouseHeader_shhLineWidth, this.f29114e);
        this.f29116g = obtainStyledAttributes.getDimensionPixelOffset(R$styleable.StoreHouseHeader_shhDropHeight, this.f29116g);
        this.f29128s = obtainStyledAttributes.getBoolean(R$styleable.StoreHouseHeader_shhEnableFadeAnimation, this.f29128s);
        int i10 = R$styleable.StoreHouseHeader_shhText;
        if (obtainStyledAttributes.hasValue(i10)) {
            s(obtainStyledAttributes.getString(i10));
        } else {
            s("StoreHouse");
        }
        obtainStyledAttributes.recycle();
        setMinimumHeight(this.f29120k + ae.b.b(40.0f));
    }

    /* loaded from: classes4.dex */
    private class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        int f29134a;

        /* renamed from: b  reason: collision with root package name */
        int f29135b;

        /* renamed from: c  reason: collision with root package name */
        int f29136c;

        /* renamed from: d  reason: collision with root package name */
        int f29137d;

        /* renamed from: e  reason: collision with root package name */
        boolean f29138e;

        private b() {
            this.f29134a = 0;
            this.f29135b = 0;
            this.f29136c = 0;
            this.f29137d = 0;
            this.f29138e = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            this.f29138e = true;
            this.f29134a = 0;
            StoreHouseHeader storeHouseHeader = StoreHouseHeader.this;
            int size = storeHouseHeader.f29123n / storeHouseHeader.f29113d.size();
            this.f29137d = size;
            StoreHouseHeader storeHouseHeader2 = StoreHouseHeader.this;
            this.f29135b = storeHouseHeader2.f29124o / size;
            this.f29136c = (storeHouseHeader2.f29113d.size() / this.f29135b) + 1;
            run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            this.f29138e = false;
            StoreHouseHeader.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            i iVar;
            int i9 = this.f29134a % this.f29135b;
            for (int i10 = 0; i10 < this.f29136c; i10++) {
                int i11 = (this.f29135b * i10) + i9;
                if (i11 <= this.f29134a) {
                    td.a aVar = StoreHouseHeader.this.f29113d.get(i11 % StoreHouseHeader.this.f29113d.size());
                    aVar.setFillAfter(false);
                    aVar.setFillEnabled(true);
                    aVar.setFillBefore(false);
                    aVar.setDuration(400L);
                    aVar.g(1.0f, 0.4f);
                }
            }
            this.f29134a++;
            if (!this.f29138e || (iVar = StoreHouseHeader.this.f29130u) == null) {
                return;
            }
            iVar.k().getLayout().postDelayed(this, this.f29137d);
        }

        /* synthetic */ b(StoreHouseHeader storeHouseHeader, a aVar) {
            this();
        }
    }
}
