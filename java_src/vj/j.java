package vj;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class j extends g {

    /* renamed from: d  reason: collision with root package name */
    private static final BigInteger f59215d = BigInteger.valueOf(1);

    /* renamed from: e  reason: collision with root package name */
    private static final BigInteger f59216e = BigInteger.valueOf(2);

    /* renamed from: c  reason: collision with root package name */
    private BigInteger f59217c;

    public j(BigInteger bigInteger, h hVar) {
        super(false, hVar);
        this.f59217c = d(bigInteger, hVar);
    }

    private BigInteger d(BigInteger bigInteger, h hVar) {
        if (hVar != null) {
            BigInteger bigInteger2 = f59216e;
            if (bigInteger2.compareTo(bigInteger) > 0 || hVar.b().subtract(bigInteger2).compareTo(bigInteger) < 0 || !f59215d.equals(bigInteger.modPow(hVar.c(), hVar.b()))) {
                throw new IllegalArgumentException("y value does not appear to be in correct group");
            }
            return bigInteger;
        }
        return bigInteger;
    }

    public BigInteger c() {
        return this.f59217c;
    }
}
