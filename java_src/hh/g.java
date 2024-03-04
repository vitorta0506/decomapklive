package hh;
/* loaded from: classes5.dex */
final class g extends u {

    /* renamed from: a  reason: collision with root package name */
    private final int f40776a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(int i9) {
        this.f40776a = i9;
    }

    @Override // hh.u
    public int b() {
        return this.f40776a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof u) && this.f40776a == ((u) obj).b();
    }

    public int hashCode() {
        return this.f40776a ^ 1000003;
    }

    public String toString() {
        return "DestinationPortMatcher{port=" + this.f40776a + "}";
    }
}
