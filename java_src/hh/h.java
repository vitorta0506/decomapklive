package hh;
/* loaded from: classes5.dex */
final class h extends v {

    /* renamed from: a  reason: collision with root package name */
    private final int f40777a;

    /* renamed from: b  reason: collision with root package name */
    private final int f40778b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(int i9, int i10) {
        this.f40777a = i9;
        this.f40778b = i10;
    }

    @Override // hh.v
    public int b() {
        return this.f40778b;
    }

    @Override // hh.v
    public int c() {
        return this.f40777a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v) {
            v vVar = (v) obj;
            return this.f40777a == vVar.c() && this.f40778b == vVar.b();
        }
        return false;
    }

    public int hashCode() {
        return ((this.f40777a ^ 1000003) * 1000003) ^ this.f40778b;
    }

    public String toString() {
        return "DestinationPortRangeMatcher{start=" + this.f40777a + ", end=" + this.f40778b + "}";
    }
}
