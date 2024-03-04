package vj;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class e0 extends a {

    /* renamed from: d  reason: collision with root package name */
    private static final BigInteger f59194d = new BigInteger("8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f", 16);

    /* renamed from: e  reason: collision with root package name */
    private static final BigInteger f59195e = BigInteger.valueOf(1);

    /* renamed from: b  reason: collision with root package name */
    private BigInteger f59196b;

    /* renamed from: c  reason: collision with root package name */
    private BigInteger f59197c;

    public e0(boolean z10, BigInteger bigInteger, BigInteger bigInteger2) {
        super(z10);
        if (!z10 && (bigInteger2.intValue() & 1) == 0) {
            throw new IllegalArgumentException("RSA publicExponent is even");
        }
        this.f59196b = d(bigInteger);
        this.f59197c = bigInteger2;
    }

    private BigInteger d(BigInteger bigInteger) {
        if ((bigInteger.intValue() & 1) != 0) {
            if (org.bouncycastle.util.h.b("org.bouncycastle.rsa.allow_unsafe_mod") || bigInteger.gcd(f59194d).equals(f59195e)) {
                return bigInteger;
            }
            throw new IllegalArgumentException("RSA modulus has a small prime factor");
        }
        throw new IllegalArgumentException("RSA modulus is even");
    }

    public BigInteger b() {
        return this.f59197c;
    }

    public BigInteger c() {
        return this.f59196b;
    }
}
