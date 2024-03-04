package vj;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class d extends b {

    /* renamed from: c  reason: collision with root package name */
    private BigInteger f59189c;

    public d(BigInteger bigInteger, c cVar) {
        super(true, cVar);
        this.f59189c = bigInteger;
    }

    public BigInteger c() {
        return this.f59189c;
    }

    @Override // vj.b
    public boolean equals(Object obj) {
        return (obj instanceof d) && ((d) obj).c().equals(this.f59189c) && super.equals(obj);
    }

    @Override // vj.b
    public int hashCode() {
        return this.f59189c.hashCode() ^ super.hashCode();
    }
}
