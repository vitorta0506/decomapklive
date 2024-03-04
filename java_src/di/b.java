package di;

import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public final class b<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f38134a;

    /* renamed from: b  reason: collision with root package name */
    final long f38135b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f38136c;

    public b(T t10, long j10, TimeUnit timeUnit) {
        this.f38134a = t10;
        this.f38135b = j10;
        this.f38136c = (TimeUnit) xh.b.e(timeUnit, "unit is null");
    }

    public long a() {
        return this.f38135b;
    }

    public T b() {
        return this.f38134a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            return xh.b.c(this.f38134a, bVar.f38134a) && this.f38135b == bVar.f38135b && xh.b.c(this.f38136c, bVar.f38136c);
        }
        return false;
    }

    public int hashCode() {
        T t10 = this.f38134a;
        int hashCode = t10 != null ? t10.hashCode() : 0;
        long j10 = this.f38135b;
        return (((hashCode * 31) + ((int) (j10 ^ (j10 >>> 31)))) * 31) + this.f38136c.hashCode();
    }

    public String toString() {
        return "Timed[time=" + this.f38135b + ", unit=" + this.f38136c + ", value=" + this.f38134a + "]";
    }
}
