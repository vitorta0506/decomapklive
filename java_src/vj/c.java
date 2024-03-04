package vj;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class c implements org.bouncycastle.crypto.c {

    /* renamed from: a  reason: collision with root package name */
    private BigInteger f59181a;

    /* renamed from: b  reason: collision with root package name */
    private BigInteger f59182b;

    /* renamed from: c  reason: collision with root package name */
    private BigInteger f59183c;

    /* renamed from: d  reason: collision with root package name */
    private BigInteger f59184d;

    /* renamed from: e  reason: collision with root package name */
    private int f59185e;

    /* renamed from: f  reason: collision with root package name */
    private int f59186f;

    /* renamed from: g  reason: collision with root package name */
    private f f59187g;

    public c(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, null, 0);
    }

    public c(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i9) {
        this(bigInteger, bigInteger2, bigInteger3, a(i9), i9, null, null);
    }

    public c(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i9, int i10, BigInteger bigInteger4, f fVar) {
        if (i10 != 0) {
            if (i10 > bigInteger.bitLength()) {
                throw new IllegalArgumentException("when l value specified, it must satisfy 2^(l-1) <= p");
            }
            if (i10 < i9) {
                throw new IllegalArgumentException("when l value specified, it may not be less than m value");
            }
        }
        if (i9 > bigInteger.bitLength() && !org.bouncycastle.util.h.b("org.bouncycastle.dh.allow_unsafe_p_value")) {
            throw new IllegalArgumentException("unsafe p value so small specific l required");
        }
        this.f59181a = bigInteger2;
        this.f59182b = bigInteger;
        this.f59183c = bigInteger3;
        this.f59185e = i9;
        this.f59186f = i10;
        this.f59184d = bigInteger4;
        this.f59187g = fVar;
    }

    public c(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, f fVar) {
        this(bigInteger, bigInteger2, bigInteger3, 160, 0, bigInteger4, fVar);
    }

    private static int a(int i9) {
        if (i9 != 0 && i9 < 160) {
            return i9;
        }
        return 160;
    }

    public BigInteger b() {
        return this.f59181a;
    }

    public BigInteger c() {
        return this.f59184d;
    }

    public int d() {
        return this.f59186f;
    }

    public int e() {
        return this.f59185e;
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (g() != null) {
                if (!g().equals(cVar.g())) {
                    return false;
                }
            } else if (cVar.g() != null) {
                return false;
            }
            return cVar.f().equals(this.f59182b) && cVar.b().equals(this.f59181a);
        }
        return false;
    }

    public BigInteger f() {
        return this.f59182b;
    }

    public BigInteger g() {
        return this.f59183c;
    }

    public f h() {
        return this.f59187g;
    }

    public int hashCode() {
        return (f().hashCode() ^ b().hashCode()) ^ (g() != null ? g().hashCode() : 0);
    }
}
