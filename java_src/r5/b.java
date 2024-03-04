package r5;

import java.util.Objects;
/* loaded from: classes2.dex */
final class b extends d {

    /* renamed from: a  reason: collision with root package name */
    private final String f57391a;

    /* renamed from: b  reason: collision with root package name */
    private final String f57392b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, String str2) {
        Objects.requireNonNull(str, "Null clientName");
        this.f57391a = str;
        Objects.requireNonNull(str2, "Null methodName");
        this.f57392b = str2;
    }

    @Override // r5.d
    public String a() {
        return this.f57391a;
    }

    @Override // r5.d
    public String b() {
        return this.f57392b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            return this.f57391a.equals(dVar.a()) && this.f57392b.equals(dVar.b());
        }
        return false;
    }

    public int hashCode() {
        return ((this.f57391a.hashCode() ^ 1000003) * 1000003) ^ this.f57392b.hashCode();
    }
}
