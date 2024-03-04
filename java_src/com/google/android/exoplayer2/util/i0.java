package com.google.android.exoplayer2.util;

import androidx.annotation.GuardedBy;
/* loaded from: classes2.dex */
public final class i0 {
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private long f6977a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private long f6978b;
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private long f6979c;

    /* renamed from: d  reason: collision with root package name */
    private final ThreadLocal<Long> f6980d = new ThreadLocal<>();

    public i0(long j10) {
        g(j10);
    }

    public static long f(long j10) {
        return (j10 * 1000000) / 90000;
    }

    public static long h(long j10) {
        return (j10 * 90000) / 1000000;
    }

    public synchronized long a(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f6978b == -9223372036854775807L) {
            long j11 = this.f6977a;
            if (j11 == 9223372036854775806L) {
                j11 = ((Long) a.e(this.f6980d.get())).longValue();
            }
            this.f6978b = j11 - j10;
            notifyAll();
        }
        this.f6979c = j10;
        return j10 + this.f6978b;
    }

    public synchronized long b(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j11 = this.f6979c;
        if (j11 != -9223372036854775807L) {
            long h10 = h(j11);
            long j12 = (4294967296L + h10) / 8589934592L;
            long j13 = ((j12 - 1) * 8589934592L) + j10;
            j10 += j12 * 8589934592L;
            if (Math.abs(j13 - h10) < Math.abs(j10 - h10)) {
                j10 = j13;
            }
        }
        return a(f(j10));
    }

    public synchronized long c() {
        long j10;
        j10 = this.f6977a;
        return (j10 == Long.MAX_VALUE || j10 == 9223372036854775806L) ? -9223372036854775807L : -9223372036854775807L;
    }

    public synchronized long d() {
        long c10;
        long j10 = this.f6979c;
        if (j10 != -9223372036854775807L) {
            c10 = j10 + this.f6978b;
        } else {
            c10 = c();
        }
        return c10;
    }

    public synchronized long e() {
        return this.f6978b;
    }

    public synchronized void g(long j10) {
        this.f6977a = j10;
        this.f6978b = j10 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f6979c = -9223372036854775807L;
    }
}
