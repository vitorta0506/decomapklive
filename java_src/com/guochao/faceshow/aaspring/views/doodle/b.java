package com.guochao.faceshow.aaspring.views.doodle;

import android.graphics.Canvas;
import android.graphics.PointF;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class b implements la.c, la.d {

    /* renamed from: a  reason: collision with root package name */
    private float f24246a;

    /* renamed from: b  reason: collision with root package name */
    private la.a f24247b;

    /* renamed from: d  reason: collision with root package name */
    private la.e f24249d;

    /* renamed from: e  reason: collision with root package name */
    private la.g f24250e;

    /* renamed from: f  reason: collision with root package name */
    private float f24251f;

    /* renamed from: g  reason: collision with root package name */
    private la.b f24252g;

    /* renamed from: j  reason: collision with root package name */
    private float f24255j;

    /* renamed from: k  reason: collision with root package name */
    private float f24256k;

    /* renamed from: q  reason: collision with root package name */
    private int f24262q;

    /* renamed from: c  reason: collision with root package name */
    private PointF f24248c = new PointF();

    /* renamed from: h  reason: collision with root package name */
    private boolean f24253h = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f24254i = true;

    /* renamed from: l  reason: collision with root package name */
    private float f24257l = 0.01f;

    /* renamed from: m  reason: collision with root package name */
    private float f24258m = 100.0f;

    /* renamed from: n  reason: collision with root package name */
    private float f24259n = 1.0f;

    /* renamed from: o  reason: collision with root package name */
    private boolean f24260o = false;

    /* renamed from: p  reason: collision with root package name */
    private List<la.d> f24261p = new ArrayList();

    public b(la.a aVar, d dVar) {
        x(aVar);
    }

    public void A(la.e eVar) {
        this.f24249d = eVar;
        w();
    }

    public void B(float f10) {
        this.f24255j = f10;
        q(3);
    }

    public void C(float f10) {
        this.f24256k = f10;
        q(4);
    }

    public void D(la.g gVar) {
        this.f24250e = gVar;
        w();
    }

    @Override // la.c
    public void b(int i9) {
        this.f24262q = i9;
    }

    @Override // la.c
    public boolean c() {
        return false;
    }

    @Override // la.c
    public void d(float f10) {
        this.f24246a = f10;
        q(2);
        w();
    }

    @Override // la.c
    public void draw(Canvas canvas) {
        u(canvas);
        int save = canvas.save();
        PointF r10 = r();
        this.f24248c = r10;
        canvas.translate(r10.x, r10.y);
        float f10 = this.f24255j;
        PointF pointF = this.f24248c;
        float f11 = f10 - pointF.x;
        float f12 = this.f24256k - pointF.y;
        canvas.rotate(this.f24246a, f11, f12);
        float f13 = this.f24259n;
        canvas.scale(f13, f13, f11, f12);
        s(canvas);
        canvas.restoreToCount(save);
        t(canvas);
    }

    @Override // la.c
    public void e() {
        this.f24260o = true;
    }

    @Override // la.c
    public float f() {
        return this.f24259n;
    }

    @Override // la.c
    public float g() {
        return this.f24255j;
    }

    @Override // la.c
    public la.b getColor() {
        return this.f24252g;
    }

    @Override // la.c
    public la.e getPen() {
        return this.f24249d;
    }

    @Override // la.c
    public int getPosition() {
        return this.f24262q;
    }

    @Override // la.c
    public la.g getShape() {
        return this.f24250e;
    }

    @Override // la.c
    public float h() {
        return this.f24256k;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000c, code lost:
        if (r3 > r0) goto L3;
     */
    @Override // la.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i(float r3) {
        /*
            r2 = this;
            float r0 = r2.f24257l
            int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r1 > 0) goto L8
        L6:
            r3 = r0
            goto Lf
        L8:
            float r0 = r2.f24258m
            int r1 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r1 <= 0) goto Lf
            goto L6
        Lf:
            r2.f24259n = r3
            r3 = 1
            r2.q(r3)
            r2.w()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.doodle.b.i(float):void");
    }

    @Override // la.c
    public boolean j() {
        return this.f24254i;
    }

    @Override // la.c
    public la.a k() {
        return this.f24247b;
    }

    @Override // la.c
    public void l() {
        this.f24260o = false;
    }

    @Override // la.c
    public float m() {
        return this.f24246a;
    }

    @Override // la.c
    public void n(float f10, float f11) {
        y(f10, f11, true);
    }

    @Override // la.c
    public void p(Canvas canvas) {
    }

    @Override // la.d
    public void q(int i9) {
        for (int i10 = 0; i10 < this.f24261p.size(); i10++) {
            this.f24261p.get(i10).q(i9);
        }
    }

    @Override // la.c
    public PointF r() {
        LogUtils.e("getLocation", this.f24248c.x + "**" + this.f24248c.y);
        return this.f24248c;
    }

    protected abstract void s(Canvas canvas);

    @Override // la.c
    public void setColor(la.b bVar) {
        this.f24252g = bVar;
        q(6);
        w();
    }

    @Override // la.c
    public void setSize(float f10) {
        this.f24251f = f10;
        q(5);
        w();
    }

    protected void t(Canvas canvas) {
    }

    protected void u(Canvas canvas) {
    }

    public float v() {
        return this.f24251f;
    }

    public void w() {
        la.a aVar;
        if (!this.f24260o || (aVar = this.f24247b) == null) {
            return;
        }
        aVar.c();
    }

    public void x(la.a aVar) {
        if (aVar != null && this.f24247b != null) {
            throw new RuntimeException("item's doodle object is not null");
        }
        this.f24247b = aVar;
    }

    public void y(float f10, float f11, boolean z10) {
        PointF pointF = this.f24248c;
        float f12 = f10 - pointF.x;
        float f13 = f11 - pointF.y;
        pointF.x = f10;
        pointF.y = f11;
        q(7);
        if (z10) {
            this.f24255j += f12;
            this.f24256k += f13;
            q(3);
            q(4);
        }
        w();
    }

    public void z(boolean z10) {
        this.f24254i = z10;
    }
}
