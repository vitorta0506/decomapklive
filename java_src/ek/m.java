package ek;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private BigInteger f39497a;

    /* renamed from: b  reason: collision with root package name */
    private BigInteger f39498b;

    /* renamed from: c  reason: collision with root package name */
    private BigInteger f39499c;

    public m(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f39497a = bigInteger;
        this.f39498b = bigInteger2;
        this.f39499c = bigInteger3;
    }

    public BigInteger a() {
        return this.f39499c;
    }

    public BigInteger b() {
        return this.f39497a;
    }

    public BigInteger c() {
        return this.f39498b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof m) {
            m mVar = (m) obj;
            return this.f39499c.equals(mVar.f39499c) && this.f39497a.equals(mVar.f39497a) && this.f39498b.equals(mVar.f39498b);
        }
        return false;
    }

    public int hashCode() {
        return (this.f39499c.hashCode() ^ this.f39497a.hashCode()) ^ this.f39498b.hashCode();
    }
}
