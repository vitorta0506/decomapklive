package eh;

import java.util.Objects;
/* loaded from: classes5.dex */
final class t extends t1 {

    /* renamed from: a  reason: collision with root package name */
    private final String f39326a;

    /* renamed from: b  reason: collision with root package name */
    private final String f39327b;

    /* renamed from: c  reason: collision with root package name */
    private final String f39328c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(String str, String str2, String str3) {
        Objects.requireNonNull(str, "Null region");
        this.f39326a = str;
        Objects.requireNonNull(str2, "Null zone");
        this.f39327b = str2;
        Objects.requireNonNull(str3, "Null subZone");
        this.f39328c = str3;
    }

    @Override // eh.t1
    String b() {
        return this.f39326a;
    }

    @Override // eh.t1
    String c() {
        return this.f39328c;
    }

    @Override // eh.t1
    String d() {
        return this.f39327b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t1) {
            t1 t1Var = (t1) obj;
            return this.f39326a.equals(t1Var.b()) && this.f39327b.equals(t1Var.d()) && this.f39328c.equals(t1Var.c());
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f39326a.hashCode() ^ 1000003) * 1000003) ^ this.f39327b.hashCode()) * 1000003) ^ this.f39328c.hashCode();
    }

    public String toString() {
        return "Locality{region=" + this.f39326a + ", zone=" + this.f39327b + ", subZone=" + this.f39328c + "}";
    }
}
