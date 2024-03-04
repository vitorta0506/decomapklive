package ek;

import java.math.BigInteger;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
/* loaded from: classes7.dex */
public class c extends ECParameterSpec {

    /* renamed from: a  reason: collision with root package name */
    private String f39485a;

    public c(String str, EllipticCurve ellipticCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        super(ellipticCurve, eCPoint, bigInteger, bigInteger2.intValue());
        this.f39485a = str;
    }

    public String a() {
        return this.f39485a;
    }
}
