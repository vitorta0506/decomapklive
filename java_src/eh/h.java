package eh;

import java.util.Objects;
/* loaded from: classes5.dex */
final class h extends x0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f38764a;

    /* renamed from: b  reason: collision with root package name */
    private final int f38765b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str, int i9) {
        Objects.requireNonNull(str, "Null category");
        this.f38764a = str;
        this.f38765b = i9;
    }

    @Override // eh.x0
    String a() {
        return this.f38764a;
    }

    @Override // eh.x0
    int c() {
        return this.f38765b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof x0) {
            x0 x0Var = (x0) obj;
            return this.f38764a.equals(x0Var.a()) && this.f38765b == x0Var.c();
        }
        return false;
    }

    public int hashCode() {
        return ((this.f38764a.hashCode() ^ 1000003) * 1000003) ^ this.f38765b;
    }

    public String toString() {
        return "DropOverload{category=" + this.f38764a + ", dropsPerMillion=" + this.f38765b + "}";
    }
}
