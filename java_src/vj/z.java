package vj;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class z implements org.bouncycastle.crypto.c {

    /* renamed from: a  reason: collision with root package name */
    private BigInteger f59242a;

    /* renamed from: b  reason: collision with root package name */
    private BigInteger f59243b;

    /* renamed from: c  reason: collision with root package name */
    private BigInteger f59244c;

    public z(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f59242a = bigInteger;
        this.f59243b = bigInteger2;
        this.f59244c = bigInteger3;
    }

    public BigInteger a() {
        return this.f59244c;
    }

    public BigInteger b() {
        return this.f59242a;
    }

    public BigInteger c() {
        return this.f59243b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof z) {
            z zVar = (z) obj;
            return zVar.b().equals(this.f59242a) && zVar.c().equals(this.f59243b) && zVar.a().equals(this.f59244c);
        }
        return false;
    }

    public int hashCode() {
        return (this.f59242a.hashCode() ^ this.f59243b.hashCode()) ^ this.f59244c.hashCode();
    }
}
