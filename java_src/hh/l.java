package hh;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class l extends a0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f40782a;

    /* renamed from: b  reason: collision with root package name */
    private final y f40783b;

    /* renamed from: c  reason: collision with root package name */
    private final y f40784c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(String str, y yVar, y yVar2) {
        Objects.requireNonNull(str, "Null name");
        this.f40782a = str;
        Objects.requireNonNull(yVar, "Null permissions");
        this.f40783b = yVar;
        Objects.requireNonNull(yVar2, "Null principals");
        this.f40784c = yVar2;
    }

    @Override // hh.a0
    public String b() {
        return this.f40782a;
    }

    @Override // hh.a0
    public y c() {
        return this.f40783b;
    }

    @Override // hh.a0
    public y d() {
        return this.f40784c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a0) {
            a0 a0Var = (a0) obj;
            return this.f40782a.equals(a0Var.b()) && this.f40783b.equals(a0Var.c()) && this.f40784c.equals(a0Var.d());
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f40782a.hashCode() ^ 1000003) * 1000003) ^ this.f40783b.hashCode()) * 1000003) ^ this.f40784c.hashCode();
    }

    public String toString() {
        return "PolicyMatcher{name=" + this.f40782a + ", permissions=" + this.f40783b + ", principals=" + this.f40784c + "}";
    }
}
