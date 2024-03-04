package s6;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final String f57676a;

    /* renamed from: b  reason: collision with root package name */
    private final String f57677b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2) {
        Objects.requireNonNull(str, "Null libraryName");
        this.f57676a = str;
        Objects.requireNonNull(str2, "Null version");
        this.f57677b = str2;
    }

    @Override // s6.f
    public String b() {
        return this.f57676a;
    }

    @Override // s6.f
    public String c() {
        return this.f57677b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            return this.f57676a.equals(fVar.b()) && this.f57677b.equals(fVar.c());
        }
        return false;
    }

    public int hashCode() {
        return ((this.f57676a.hashCode() ^ 1000003) * 1000003) ^ this.f57677b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f57676a + ", version=" + this.f57677b + "}";
    }
}
