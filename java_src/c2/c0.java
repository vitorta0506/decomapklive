package c2;

import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class c0 {

    /* renamed from: c  reason: collision with root package name */
    public static final c0 f1468c = new c0(0, 0);

    /* renamed from: a  reason: collision with root package name */
    public final long f1469a;

    /* renamed from: b  reason: collision with root package name */
    public final long f1470b;

    public c0(long j10, long j11) {
        this.f1469a = j10;
        this.f1470b = j11;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c0.class != obj.getClass()) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f1469a == c0Var.f1469a && this.f1470b == c0Var.f1470b;
    }

    public int hashCode() {
        return (((int) this.f1469a) * 31) + ((int) this.f1470b);
    }

    public String toString() {
        return "[timeUs=" + this.f1469a + ", position=" + this.f1470b + "]";
    }
}
