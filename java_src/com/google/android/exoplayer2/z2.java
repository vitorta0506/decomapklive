package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class z2 {

    /* renamed from: c  reason: collision with root package name */
    public static final z2 f7328c;

    /* renamed from: d  reason: collision with root package name */
    public static final z2 f7329d;

    /* renamed from: e  reason: collision with root package name */
    public static final z2 f7330e;

    /* renamed from: f  reason: collision with root package name */
    public static final z2 f7331f;

    /* renamed from: g  reason: collision with root package name */
    public static final z2 f7332g;

    /* renamed from: a  reason: collision with root package name */
    public final long f7333a;

    /* renamed from: b  reason: collision with root package name */
    public final long f7334b;

    static {
        z2 z2Var = new z2(0L, 0L);
        f7328c = z2Var;
        f7329d = new z2(Long.MAX_VALUE, Long.MAX_VALUE);
        f7330e = new z2(Long.MAX_VALUE, 0L);
        f7331f = new z2(0L, Long.MAX_VALUE);
        f7332g = z2Var;
    }

    public z2(long j10, long j11) {
        com.google.android.exoplayer2.util.a.a(j10 >= 0);
        com.google.android.exoplayer2.util.a.a(j11 >= 0);
        this.f7333a = j10;
        this.f7334b = j11;
    }

    public long a(long j10, long j11, long j12) {
        long j13 = this.f7333a;
        if (j13 == 0 && this.f7334b == 0) {
            return j10;
        }
        long K0 = com.google.android.exoplayer2.util.l0.K0(j10, j13, Long.MIN_VALUE);
        long b10 = com.google.android.exoplayer2.util.l0.b(j10, this.f7334b, Long.MAX_VALUE);
        boolean z10 = true;
        boolean z11 = K0 <= j11 && j11 <= b10;
        z10 = (K0 > j12 || j12 > b10) ? false : false;
        return (z11 && z10) ? Math.abs(j11 - j10) <= Math.abs(j12 - j10) ? j11 : j12 : z11 ? j11 : z10 ? j12 : K0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z2.class != obj.getClass()) {
            return false;
        }
        z2 z2Var = (z2) obj;
        return this.f7333a == z2Var.f7333a && this.f7334b == z2Var.f7334b;
    }

    public int hashCode() {
        return (((int) this.f7333a) * 31) + ((int) this.f7334b);
    }
}
