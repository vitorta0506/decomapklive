package com.google.android.exoplayer2;

import android.os.SystemClock;
import com.google.android.exoplayer2.s1;
/* loaded from: classes.dex */
public final class j implements p1 {

    /* renamed from: a  reason: collision with root package name */
    private final float f6058a;

    /* renamed from: b  reason: collision with root package name */
    private final float f6059b;

    /* renamed from: c  reason: collision with root package name */
    private final long f6060c;

    /* renamed from: d  reason: collision with root package name */
    private final float f6061d;

    /* renamed from: e  reason: collision with root package name */
    private final long f6062e;

    /* renamed from: f  reason: collision with root package name */
    private final long f6063f;

    /* renamed from: g  reason: collision with root package name */
    private final float f6064g;

    /* renamed from: h  reason: collision with root package name */
    private long f6065h;

    /* renamed from: i  reason: collision with root package name */
    private long f6066i;

    /* renamed from: j  reason: collision with root package name */
    private long f6067j;

    /* renamed from: k  reason: collision with root package name */
    private long f6068k;

    /* renamed from: l  reason: collision with root package name */
    private long f6069l;

    /* renamed from: m  reason: collision with root package name */
    private long f6070m;

    /* renamed from: n  reason: collision with root package name */
    private float f6071n;

    /* renamed from: o  reason: collision with root package name */
    private float f6072o;

    /* renamed from: p  reason: collision with root package name */
    private float f6073p;

    /* renamed from: q  reason: collision with root package name */
    private long f6074q;

    /* renamed from: r  reason: collision with root package name */
    private long f6075r;

    /* renamed from: s  reason: collision with root package name */
    private long f6076s;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private float f6077a = 0.97f;

        /* renamed from: b  reason: collision with root package name */
        private float f6078b = 1.03f;

        /* renamed from: c  reason: collision with root package name */
        private long f6079c = 1000;

        /* renamed from: d  reason: collision with root package name */
        private float f6080d = 1.0E-7f;

        /* renamed from: e  reason: collision with root package name */
        private long f6081e = com.google.android.exoplayer2.util.l0.w0(20);

        /* renamed from: f  reason: collision with root package name */
        private long f6082f = com.google.android.exoplayer2.util.l0.w0(500);

        /* renamed from: g  reason: collision with root package name */
        private float f6083g = 0.999f;

        public j a() {
            return new j(this.f6077a, this.f6078b, this.f6079c, this.f6080d, this.f6081e, this.f6082f, this.f6083g);
        }
    }

    private void f(long j10) {
        long j11 = this.f6075r + (this.f6076s * 3);
        if (this.f6070m > j11) {
            float w02 = (float) com.google.android.exoplayer2.util.l0.w0(this.f6060c);
            this.f6070m = com.google.common.primitives.h.h(j11, this.f6067j, this.f6070m - (((this.f6073p - 1.0f) * w02) + ((this.f6071n - 1.0f) * w02)));
            return;
        }
        long q10 = com.google.android.exoplayer2.util.l0.q(j10 - (Math.max(0.0f, this.f6073p - 1.0f) / this.f6061d), this.f6070m, j11);
        this.f6070m = q10;
        long j12 = this.f6069l;
        if (j12 == -9223372036854775807L || q10 <= j12) {
            return;
        }
        this.f6070m = j12;
    }

    private void g() {
        long j10 = this.f6065h;
        if (j10 != -9223372036854775807L) {
            long j11 = this.f6066i;
            if (j11 != -9223372036854775807L) {
                j10 = j11;
            }
            long j12 = this.f6068k;
            if (j12 != -9223372036854775807L && j10 < j12) {
                j10 = j12;
            }
            long j13 = this.f6069l;
            if (j13 != -9223372036854775807L && j10 > j13) {
                j10 = j13;
            }
        } else {
            j10 = -9223372036854775807L;
        }
        if (this.f6067j == j10) {
            return;
        }
        this.f6067j = j10;
        this.f6070m = j10;
        this.f6075r = -9223372036854775807L;
        this.f6076s = -9223372036854775807L;
        this.f6074q = -9223372036854775807L;
    }

    private static long h(long j10, long j11, float f10) {
        return (((float) j10) * f10) + ((1.0f - f10) * ((float) j11));
    }

    private void i(long j10, long j11) {
        long j12 = j10 - j11;
        long j13 = this.f6075r;
        if (j13 == -9223372036854775807L) {
            this.f6075r = j12;
            this.f6076s = 0L;
            return;
        }
        long max = Math.max(j12, h(j13, j12, this.f6064g));
        this.f6075r = max;
        this.f6076s = h(this.f6076s, Math.abs(j12 - max), this.f6064g);
    }

    @Override // com.google.android.exoplayer2.p1
    public void a(s1.g gVar) {
        this.f6065h = com.google.android.exoplayer2.util.l0.w0(gVar.f6506a);
        this.f6068k = com.google.android.exoplayer2.util.l0.w0(gVar.f6507b);
        this.f6069l = com.google.android.exoplayer2.util.l0.w0(gVar.f6508c);
        float f10 = gVar.f6509d;
        if (f10 == -3.4028235E38f) {
            f10 = this.f6058a;
        }
        this.f6072o = f10;
        float f11 = gVar.f6510e;
        if (f11 == -3.4028235E38f) {
            f11 = this.f6059b;
        }
        this.f6071n = f11;
        if (f10 == 1.0f && f11 == 1.0f) {
            this.f6065h = -9223372036854775807L;
        }
        g();
    }

    @Override // com.google.android.exoplayer2.p1
    public float b(long j10, long j11) {
        if (this.f6065h == -9223372036854775807L) {
            return 1.0f;
        }
        i(j10, j11);
        if (this.f6074q != -9223372036854775807L && SystemClock.elapsedRealtime() - this.f6074q < this.f6060c) {
            return this.f6073p;
        }
        this.f6074q = SystemClock.elapsedRealtime();
        f(j10);
        long j12 = j10 - this.f6070m;
        if (Math.abs(j12) < this.f6062e) {
            this.f6073p = 1.0f;
        } else {
            this.f6073p = com.google.android.exoplayer2.util.l0.o((this.f6061d * ((float) j12)) + 1.0f, this.f6072o, this.f6071n);
        }
        return this.f6073p;
    }

    @Override // com.google.android.exoplayer2.p1
    public long c() {
        return this.f6070m;
    }

    @Override // com.google.android.exoplayer2.p1
    public void d() {
        long j10 = this.f6070m;
        if (j10 == -9223372036854775807L) {
            return;
        }
        long j11 = j10 + this.f6063f;
        this.f6070m = j11;
        long j12 = this.f6069l;
        if (j12 != -9223372036854775807L && j11 > j12) {
            this.f6070m = j12;
        }
        this.f6074q = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.p1
    public void e(long j10) {
        this.f6066i = j10;
        g();
    }

    private j(float f10, float f11, long j10, float f12, long j11, long j12, float f13) {
        this.f6058a = f10;
        this.f6059b = f11;
        this.f6060c = j10;
        this.f6061d = f12;
        this.f6062e = j11;
        this.f6063f = j12;
        this.f6064g = f13;
        this.f6065h = -9223372036854775807L;
        this.f6066i = -9223372036854775807L;
        this.f6068k = -9223372036854775807L;
        this.f6069l = -9223372036854775807L;
        this.f6072o = f10;
        this.f6071n = f11;
        this.f6073p = 1.0f;
        this.f6074q = -9223372036854775807L;
        this.f6067j = -9223372036854775807L;
        this.f6070m = -9223372036854775807L;
        this.f6075r = -9223372036854775807L;
        this.f6076s = -9223372036854775807L;
    }
}
