package ek;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
/* loaded from: classes7.dex */
public class h implements AlgorithmParameterSpec {

    /* renamed from: a  reason: collision with root package name */
    private BigInteger f39491a;

    /* renamed from: b  reason: collision with root package name */
    private BigInteger f39492b;

    public h(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f39491a = bigInteger;
        this.f39492b = bigInteger2;
    }

    public BigInteger a() {
        return this.f39492b;
    }

    public BigInteger b() {
        return this.f39491a;
    }
}
