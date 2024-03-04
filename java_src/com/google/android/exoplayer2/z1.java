package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import v2.q;
/* loaded from: classes.dex */
final class z1 {

    /* renamed from: a  reason: collision with root package name */
    public final q.b f7319a;

    /* renamed from: b  reason: collision with root package name */
    public final long f7320b;

    /* renamed from: c  reason: collision with root package name */
    public final long f7321c;

    /* renamed from: d  reason: collision with root package name */
    public final long f7322d;

    /* renamed from: e  reason: collision with root package name */
    public final long f7323e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f7324f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f7325g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f7326h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f7327i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z1(q.b bVar, long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14 = false;
        com.google.android.exoplayer2.util.a.a(!z13 || z11);
        com.google.android.exoplayer2.util.a.a(!z12 || z11);
        if (!z10 || (!z11 && !z12 && !z13)) {
            z14 = true;
        }
        com.google.android.exoplayer2.util.a.a(z14);
        this.f7319a = bVar;
        this.f7320b = j10;
        this.f7321c = j11;
        this.f7322d = j12;
        this.f7323e = j13;
        this.f7324f = z10;
        this.f7325g = z11;
        this.f7326h = z12;
        this.f7327i = z13;
    }

    public z1 a(long j10) {
        return j10 == this.f7321c ? this : new z1(this.f7319a, this.f7320b, j10, this.f7322d, this.f7323e, this.f7324f, this.f7325g, this.f7326h, this.f7327i);
    }

    public z1 b(long j10) {
        return j10 == this.f7320b ? this : new z1(this.f7319a, j10, this.f7321c, this.f7322d, this.f7323e, this.f7324f, this.f7325g, this.f7326h, this.f7327i);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z1.class != obj.getClass()) {
            return false;
        }
        z1 z1Var = (z1) obj;
        return this.f7320b == z1Var.f7320b && this.f7321c == z1Var.f7321c && this.f7322d == z1Var.f7322d && this.f7323e == z1Var.f7323e && this.f7324f == z1Var.f7324f && this.f7325g == z1Var.f7325g && this.f7326h == z1Var.f7326h && this.f7327i == z1Var.f7327i && com.google.android.exoplayer2.util.l0.c(this.f7319a, z1Var.f7319a);
    }

    public int hashCode() {
        return ((((((((((((((((527 + this.f7319a.hashCode()) * 31) + ((int) this.f7320b)) * 31) + ((int) this.f7321c)) * 31) + ((int) this.f7322d)) * 31) + ((int) this.f7323e)) * 31) + (this.f7324f ? 1 : 0)) * 31) + (this.f7325g ? 1 : 0)) * 31) + (this.f7326h ? 1 : 0)) * 31) + (this.f7327i ? 1 : 0);
    }
}
