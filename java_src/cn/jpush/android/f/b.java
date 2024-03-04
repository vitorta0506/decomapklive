package cn.jpush.android.f;

import java.util.Objects;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public String f3058a;

    /* renamed from: b  reason: collision with root package name */
    public long f3059b;

    public b(String str, long j10) {
        this.f3058a = str;
        this.f3059b = j10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && b.class == obj.getClass()) {
            b bVar = (b) obj;
            if (this.f3059b == bVar.f3059b && Objects.equals(this.f3058a, bVar.f3058a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f3058a, Long.valueOf(this.f3059b));
    }
}
