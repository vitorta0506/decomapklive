package io.grpc;

import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public final class t implements Comparable<t> {

    /* renamed from: d  reason: collision with root package name */
    private static final b f45425d = new b();

    /* renamed from: e  reason: collision with root package name */
    private static final long f45426e;

    /* renamed from: f  reason: collision with root package name */
    private static final long f45427f;

    /* renamed from: g  reason: collision with root package name */
    private static final long f45428g;

    /* renamed from: a  reason: collision with root package name */
    private final c f45429a;

    /* renamed from: b  reason: collision with root package name */
    private final long f45430b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f45431c;

    /* loaded from: classes5.dex */
    private static class b extends c {
        private b() {
        }

        @Override // io.grpc.t.c
        public long a() {
            return System.nanoTime();
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class c {
        public abstract long a();
    }

    static {
        long nanos = TimeUnit.DAYS.toNanos(36500L);
        f45426e = nanos;
        f45427f = -nanos;
        f45428g = TimeUnit.SECONDS.toNanos(1L);
    }

    private t(c cVar, long j10, boolean z10) {
        this(cVar, cVar.a(), j10, z10);
    }

    public static t a(long j10, TimeUnit timeUnit) {
        return b(j10, timeUnit, f45425d);
    }

    public static t b(long j10, TimeUnit timeUnit, c cVar) {
        c(timeUnit, "units");
        return new t(cVar, timeUnit.toNanos(j10), true);
    }

    private static <T> T c(T t10, Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    private void d(t tVar) {
        if (this.f45429a == tVar.f45429a) {
            return;
        }
        throw new AssertionError("Tickers (" + this.f45429a + " and " + tVar.f45429a + ") don't match. Custom Ticker should only be used in tests!");
    }

    @Override // java.lang.Comparable
    /* renamed from: e */
    public int compareTo(t tVar) {
        d(tVar);
        int i9 = ((this.f45430b - tVar.f45430b) > 0L ? 1 : ((this.f45430b - tVar.f45430b) == 0L ? 0 : -1));
        if (i9 < 0) {
            return -1;
        }
        return i9 > 0 ? 1 : 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t) {
            t tVar = (t) obj;
            c cVar = this.f45429a;
            if (cVar != null ? cVar == tVar.f45429a : tVar.f45429a == null) {
                return this.f45430b == tVar.f45430b;
            }
            return false;
        }
        return false;
    }

    public boolean f(t tVar) {
        d(tVar);
        return this.f45430b - tVar.f45430b < 0;
    }

    public boolean g() {
        if (!this.f45431c) {
            if (this.f45430b - this.f45429a.a() > 0) {
                return false;
            }
            this.f45431c = true;
        }
        return true;
    }

    public t h(t tVar) {
        d(tVar);
        return f(tVar) ? this : tVar;
    }

    public int hashCode() {
        return Arrays.asList(this.f45429a, Long.valueOf(this.f45430b)).hashCode();
    }

    public long i(TimeUnit timeUnit) {
        long a10 = this.f45429a.a();
        if (!this.f45431c && this.f45430b - a10 <= 0) {
            this.f45431c = true;
        }
        return timeUnit.convert(this.f45430b - a10, TimeUnit.NANOSECONDS);
    }

    public String toString() {
        long i9 = i(TimeUnit.NANOSECONDS);
        long abs = Math.abs(i9);
        long j10 = f45428g;
        long j11 = abs / j10;
        long abs2 = Math.abs(i9) % j10;
        StringBuilder sb2 = new StringBuilder();
        if (i9 < 0) {
            sb2.append('-');
        }
        sb2.append(j11);
        if (abs2 > 0) {
            sb2.append(String.format(Locale.US, ".%09d", Long.valueOf(abs2)));
        }
        sb2.append("s from now");
        if (this.f45429a != f45425d) {
            sb2.append(" (ticker=" + this.f45429a + ")");
        }
        return sb2.toString();
    }

    private t(c cVar, long j10, long j11, boolean z10) {
        this.f45429a = cVar;
        long min = Math.min(f45426e, Math.max(f45427f, j11));
        this.f45430b = j10 + min;
        this.f45431c = z10 && min <= 0;
    }
}
