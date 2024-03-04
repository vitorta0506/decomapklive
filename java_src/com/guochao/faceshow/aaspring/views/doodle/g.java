package com.guochao.faceshow.aaspring.views.doodle;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public abstract class g extends b implements la.f {

    /* renamed from: w  reason: collision with root package name */
    public static final int f24316w = DensityUtil.dp2px(5.0f);

    /* renamed from: x  reason: collision with root package name */
    public static final int f24317x = DensityUtil.dp2px(4.0f);

    /* renamed from: r  reason: collision with root package name */
    private Rect f24318r;

    /* renamed from: s  reason: collision with root package name */
    public Rect f24319s;

    /* renamed from: t  reason: collision with root package name */
    private Paint f24320t;

    /* renamed from: u  reason: collision with root package name */
    private PointF f24321u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f24322v;

    public g(la.a aVar, int i9, float f10, float f11) {
        this(aVar, null, i9, f10, f11);
    }

    public abstract void E(Canvas canvas);

    public boolean F() {
        return this.f24322v;
    }

    protected abstract void G(Rect rect);

    /* JADX INFO: Access modifiers changed from: protected */
    public void H(Rect rect) {
        G(rect);
        ma.a.f(rect, f(), g() - r().x, h() - r().y);
    }

    @Override // la.f
    public void a(boolean z10) {
        this.f24322v = z10;
        z(!z10);
        w();
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b, la.c
    public boolean c() {
        return true;
    }

    @Override // la.f
    public Rect getBounds() {
        LogUtils.e("getBounds", this.f24318r.left + "**" + this.f24318r.top + "**" + this.f24318r.right + "**" + this.f24318r.bottom);
        return this.f24318r;
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b, la.c
    public void i(float f10) {
        super.i(f10);
        H(this.f24318r);
        w();
    }

    @Override // la.f
    public boolean o(float f10, float f11) {
        H(this.f24318r);
        PointF r10 = r();
        this.f24321u = ma.a.d(this.f24321u, (int) (-m()), f10 - r10.x, f11 - r10.y, g() - r().x, h() - r().y);
        this.f24319s.set(this.f24318r);
        float unitSize = k().getUnitSize();
        Rect rect = this.f24319s;
        int i9 = f24316w;
        rect.left = (int) (rect.left - (i9 * unitSize));
        rect.top = (int) (rect.top - (i9 * unitSize));
        rect.right = (int) (rect.right + (i9 * unitSize));
        rect.bottom = (int) (rect.bottom + (i9 * unitSize));
        PointF pointF = this.f24321u;
        return rect.contains((int) pointF.x, (int) pointF.y);
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b, la.c
    public void p(Canvas canvas) {
        int save = canvas.save();
        PointF r10 = r();
        canvas.translate(r10.x, r10.y);
        canvas.rotate(m(), g() - r().x, h() - r().y);
        E(canvas);
        canvas.restoreToCount(save);
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b, la.c
    public void setSize(float f10) {
        super.setSize(f10);
        G(getBounds());
        y(g() - (getBounds().width() / 2), h() - (getBounds().height() / 2), false);
        H(getBounds());
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b
    public void t(Canvas canvas) {
    }

    @Override // com.guochao.faceshow.aaspring.views.doodle.b
    public void u(Canvas canvas) {
    }

    public g(la.a aVar, d dVar, int i9, float f10, float f11) {
        super(aVar, dVar);
        this.f24318r = new Rect();
        this.f24319s = new Rect();
        this.f24320t = new Paint();
        this.f24321u = new PointF();
        this.f24322v = false;
        n(f10, f11);
        d(i9);
        H(this.f24318r);
    }
}
