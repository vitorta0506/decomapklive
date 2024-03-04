package com.google.common.math;

import java.util.Iterator;
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private long f13617a = 0;

    /* renamed from: b  reason: collision with root package name */
    private double f13618b = 0.0d;

    /* renamed from: c  reason: collision with root package name */
    private double f13619c = 0.0d;

    /* renamed from: d  reason: collision with root package name */
    private double f13620d = Double.NaN;

    /* renamed from: e  reason: collision with root package name */
    private double f13621e = Double.NaN;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double h(double d10, double d11) {
        if (com.google.common.primitives.b.f(d10)) {
            return d11;
        }
        if (com.google.common.primitives.b.f(d11) || d10 == d11) {
            return d10;
        }
        return Double.NaN;
    }

    private void l(long j10, double d10, double d11, double d12, double d13) {
        long j11 = this.f13617a;
        if (j11 == 0) {
            this.f13617a = j10;
            this.f13618b = d10;
            this.f13619c = d11;
            this.f13620d = d12;
            this.f13621e = d13;
            return;
        }
        this.f13617a = j11 + j10;
        if (com.google.common.primitives.b.f(this.f13618b) && com.google.common.primitives.b.f(d10)) {
            double d14 = this.f13618b;
            double d15 = d10 - d14;
            double d16 = j10;
            double d17 = d14 + ((d15 * d16) / this.f13617a);
            this.f13618b = d17;
            this.f13619c += d11 + (d15 * (d10 - d17) * d16);
        } else {
            this.f13618b = h(this.f13618b, d10);
            this.f13619c = Double.NaN;
        }
        this.f13620d = Math.min(this.f13620d, d12);
        this.f13621e = Math.max(this.f13621e, d13);
    }

    public void a(double d10) {
        long j10 = this.f13617a;
        if (j10 == 0) {
            this.f13617a = 1L;
            this.f13618b = d10;
            this.f13620d = d10;
            this.f13621e = d10;
            if (com.google.common.primitives.b.f(d10)) {
                return;
            }
            this.f13619c = Double.NaN;
            return;
        }
        this.f13617a = j10 + 1;
        if (com.google.common.primitives.b.f(d10) && com.google.common.primitives.b.f(this.f13618b)) {
            double d11 = this.f13618b;
            double d12 = d10 - d11;
            double d13 = d11 + (d12 / this.f13617a);
            this.f13618b = d13;
            this.f13619c += d12 * (d10 - d13);
        } else {
            this.f13618b = h(this.f13618b, d10);
            this.f13619c = Double.NaN;
        }
        this.f13620d = Math.min(this.f13620d, d10);
        this.f13621e = Math.max(this.f13621e, d10);
    }

    public void b(o oVar) {
        if (oVar.i() == 0) {
            return;
        }
        l(oVar.i(), oVar.k(), oVar.o(), oVar.m(), oVar.j());
    }

    public void c(Iterable<? extends Number> iterable) {
        for (Number number : iterable) {
            a(number.doubleValue());
        }
    }

    public void d(Iterator<? extends Number> it) {
        while (it.hasNext()) {
            a(it.next().doubleValue());
        }
    }

    public void e(double... dArr) {
        for (double d10 : dArr) {
            a(d10);
        }
    }

    public void f(int... iArr) {
        for (int i9 : iArr) {
            a(i9);
        }
    }

    public void g(long... jArr) {
        for (long j10 : jArr) {
            a(j10);
        }
    }

    public long i() {
        return this.f13617a;
    }

    public double j() {
        com.google.common.base.o.z(this.f13617a != 0);
        return this.f13621e;
    }

    public double k() {
        com.google.common.base.o.z(this.f13617a != 0);
        return this.f13618b;
    }

    public double m() {
        com.google.common.base.o.z(this.f13617a != 0);
        return this.f13620d;
    }

    public Stats n() {
        return new Stats(this.f13617a, this.f13618b, this.f13619c, this.f13620d, this.f13621e);
    }

    double o() {
        return this.f13619c;
    }
}
