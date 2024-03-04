package com.google.api.client.util;

import java.io.IOException;
/* loaded from: classes2.dex */
public class l implements c {

    /* renamed from: a  reason: collision with root package name */
    private int f11147a;

    /* renamed from: b  reason: collision with root package name */
    private final int f11148b;

    /* renamed from: c  reason: collision with root package name */
    private final double f11149c;

    /* renamed from: d  reason: collision with root package name */
    private final double f11150d;

    /* renamed from: e  reason: collision with root package name */
    private final int f11151e;

    /* renamed from: f  reason: collision with root package name */
    long f11152f;

    /* renamed from: g  reason: collision with root package name */
    private final int f11153g;

    /* renamed from: h  reason: collision with root package name */
    private final u f11154h;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f11155a = 500;

        /* renamed from: b  reason: collision with root package name */
        double f11156b = 0.5d;

        /* renamed from: c  reason: collision with root package name */
        double f11157c = 1.5d;

        /* renamed from: d  reason: collision with root package name */
        int f11158d = 60000;

        /* renamed from: e  reason: collision with root package name */
        int f11159e = 900000;

        /* renamed from: f  reason: collision with root package name */
        u f11160f = u.f11178a;

        public l a() {
            return new l(this);
        }

        public a b(int i9) {
            this.f11155a = i9;
            return this;
        }

        public a c(double d10) {
            this.f11157c = d10;
            return this;
        }

        public a d(double d10) {
            this.f11156b = d10;
            return this;
        }
    }

    protected l(a aVar) {
        int i9 = aVar.f11155a;
        this.f11148b = i9;
        double d10 = aVar.f11156b;
        this.f11149c = d10;
        double d11 = aVar.f11157c;
        this.f11150d = d11;
        int i10 = aVar.f11158d;
        this.f11151e = i10;
        int i11 = aVar.f11159e;
        this.f11153g = i11;
        this.f11154h = aVar.f11160f;
        z.a(i9 > 0);
        z.a(0.0d <= d10 && d10 < 1.0d);
        z.a(d11 >= 1.0d);
        z.a(i10 >= i9);
        z.a(i11 > 0);
        e();
    }

    static int c(double d10, double d11, int i9) {
        double d12 = i9;
        double d13 = d10 * d12;
        double d14 = d12 - d13;
        return (int) (d14 + (d11 * (((d12 + d13) - d14) + 1.0d)));
    }

    private void d() {
        int i9 = this.f11147a;
        int i10 = this.f11151e;
        double d10 = this.f11150d;
        if (i9 >= i10 / d10) {
            this.f11147a = i10;
        } else {
            this.f11147a = (int) (i9 * d10);
        }
    }

    @Override // com.google.api.client.util.c
    public long a() throws IOException {
        if (b() > this.f11153g) {
            return -1L;
        }
        int c10 = c(this.f11149c, Math.random(), this.f11147a);
        d();
        return c10;
    }

    public final long b() {
        return (this.f11154h.nanoTime() - this.f11152f) / 1000000;
    }

    public final void e() {
        this.f11147a = this.f11148b;
        this.f11152f = this.f11154h.nanoTime();
    }
}
