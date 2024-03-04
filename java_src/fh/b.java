package fh;
/* loaded from: classes5.dex */
final class b extends h {

    /* renamed from: a  reason: collision with root package name */
    private final int f39727a;

    /* renamed from: b  reason: collision with root package name */
    private final int f39728b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(int i9, int i10) {
        this.f39727a = i9;
        this.f39728b = i10;
    }

    @Override // fh.h
    public int b() {
        return this.f39728b;
    }

    @Override // fh.h
    public int c() {
        return this.f39727a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            return this.f39727a == hVar.c() && this.f39728b == hVar.b();
        }
        return false;
    }

    public int hashCode() {
        return ((this.f39727a ^ 1000003) * 1000003) ^ this.f39728b;
    }

    public String toString() {
        return "FractionMatcher{numerator=" + this.f39727a + ", denominator=" + this.f39728b + "}";
    }
}
