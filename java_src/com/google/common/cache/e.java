package com.google.common.cache;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final long f12442a;

    /* renamed from: b  reason: collision with root package name */
    private final long f12443b;

    /* renamed from: c  reason: collision with root package name */
    private final long f12444c;

    /* renamed from: d  reason: collision with root package name */
    private final long f12445d;

    /* renamed from: e  reason: collision with root package name */
    private final long f12446e;

    /* renamed from: f  reason: collision with root package name */
    private final long f12447f;

    public e(long j10, long j11, long j12, long j13, long j14, long j15) {
        com.google.common.base.o.d(j10 >= 0);
        com.google.common.base.o.d(j11 >= 0);
        com.google.common.base.o.d(j12 >= 0);
        com.google.common.base.o.d(j13 >= 0);
        com.google.common.base.o.d(j14 >= 0);
        com.google.common.base.o.d(j15 >= 0);
        this.f12442a = j10;
        this.f12443b = j11;
        this.f12444c = j12;
        this.f12445d = j13;
        this.f12446e = j14;
        this.f12447f = j15;
    }

    public boolean equals(Object obj) {
        if (obj instanceof e) {
            e eVar = (e) obj;
            return this.f12442a == eVar.f12442a && this.f12443b == eVar.f12443b && this.f12444c == eVar.f12444c && this.f12445d == eVar.f12445d && this.f12446e == eVar.f12446e && this.f12447f == eVar.f12447f;
        }
        return false;
    }

    public int hashCode() {
        return com.google.common.base.l.b(Long.valueOf(this.f12442a), Long.valueOf(this.f12443b), Long.valueOf(this.f12444c), Long.valueOf(this.f12445d), Long.valueOf(this.f12446e), Long.valueOf(this.f12447f));
    }

    public String toString() {
        return com.google.common.base.j.c(this).c("hitCount", this.f12442a).c("missCount", this.f12443b).c("loadSuccessCount", this.f12444c).c("loadExceptionCount", this.f12445d).c("totalLoadTime", this.f12446e).c("evictionCount", this.f12447f).toString();
    }
}
