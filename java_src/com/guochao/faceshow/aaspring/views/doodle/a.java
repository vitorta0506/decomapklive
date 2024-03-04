package com.guochao.faceshow.aaspring.views.doodle;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private float f24236a;

    /* renamed from: b  reason: collision with root package name */
    private float f24237b;

    /* renamed from: c  reason: collision with root package name */
    private float f24238c;

    /* renamed from: d  reason: collision with root package name */
    private float f24239d;

    /* renamed from: e  reason: collision with root package name */
    private float f24240e;

    /* renamed from: f  reason: collision with root package name */
    private float f24241f;

    /* renamed from: g  reason: collision with root package name */
    private Paint f24242g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f24243h = true;

    /* renamed from: i  reason: collision with root package name */
    private boolean f24244i = false;

    /* renamed from: j  reason: collision with root package name */
    private PointF f24245j = new PointF();

    public a() {
        Paint paint = new Paint();
        this.f24242g = paint;
        paint.setAntiAlias(true);
        this.f24242g.setStyle(Paint.Style.FILL);
        this.f24242g.setStrokeJoin(Paint.Join.ROUND);
    }

    public boolean a(float f10, float f11, float f12) {
        float f13 = this.f24240e;
        float f14 = this.f24241f;
        return ((f13 - f10) * (f13 - f10)) + ((f14 - f11) * (f14 - f11)) <= f12 * f12;
    }

    public a b() {
        a aVar = new a();
        aVar.f24236a = this.f24236a;
        aVar.f24237b = this.f24237b;
        aVar.f24238c = this.f24238c;
        aVar.f24239d = this.f24239d;
        aVar.f24240e = this.f24240e;
        aVar.f24241f = this.f24241f;
        return aVar;
    }

    public void c(Canvas canvas, float f10) {
        this.f24242g.setStrokeWidth(f10 / 4.0f);
        this.f24242g.setStyle(Paint.Style.STROKE);
        this.f24242g.setColor(-1436129690);
        float f11 = f10 / 2.0f;
        ma.a.b(canvas, this.f24240e, this.f24241f, (f10 / 8.0f) + f11, this.f24242g);
        this.f24242g.setStrokeWidth(f10 / 16.0f);
        this.f24242g.setStyle(Paint.Style.STROKE);
        this.f24242g.setColor(-1426063361);
        ma.a.b(canvas, this.f24240e, this.f24241f, (f10 / 32.0f) + f11, this.f24242g);
        this.f24242g.setStyle(Paint.Style.FILL);
        if (!this.f24244i) {
            this.f24242g.setColor(1157562368);
            ma.a.b(canvas, this.f24240e, this.f24241f, f11, this.f24242g);
            return;
        }
        this.f24242g.setColor(1140850824);
        ma.a.b(canvas, this.f24240e, this.f24241f, f11, this.f24242g);
    }

    public float d() {
        return this.f24236a;
    }

    public float e() {
        return this.f24237b;
    }

    public float f() {
        return this.f24238c;
    }

    public float g() {
        return this.f24239d;
    }

    public boolean h() {
        return this.f24244i;
    }

    public boolean i() {
        return this.f24243h;
    }

    public void j() {
        this.f24241f = 0.0f;
        this.f24240e = 0.0f;
        this.f24239d = 0.0f;
        this.f24238c = 0.0f;
        this.f24237b = 0.0f;
        this.f24236a = 0.0f;
        this.f24243h = true;
        this.f24244i = false;
    }

    public void k(boolean z10) {
        this.f24244i = z10;
    }

    public void l(boolean z10) {
        this.f24243h = z10;
    }

    public void m(float f10, float f11) {
        n(f10, f11, this.f24240e, this.f24241f);
    }

    public void n(float f10, float f11, float f12, float f13) {
        this.f24236a = f12;
        this.f24237b = f13;
        this.f24238c = f10;
        this.f24239d = f11;
    }

    public void o(float f10, float f11) {
        this.f24240e = f10;
        this.f24241f = f11;
    }
}
