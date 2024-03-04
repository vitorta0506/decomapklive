package mk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
class g implements a {

    /* renamed from: a  reason: collision with root package name */
    protected final BigInteger f55173a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(BigInteger bigInteger) {
        this.f55173a = bigInteger;
    }

    @Override // mk.a
    public int a() {
        return 1;
    }

    @Override // mk.a
    public BigInteger b() {
        return this.f55173a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            return this.f55173a.equals(((g) obj).f55173a);
        }
        return false;
    }

    public int hashCode() {
        return this.f55173a.hashCode();
    }
}
