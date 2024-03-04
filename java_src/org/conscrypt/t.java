package org.conscrypt;

import java.math.BigInteger;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.EllipticCurve;
import java.util.HashMap;
import java.util.Map;
import org.conscrypt.NativeRef;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class t {

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, String> f56414b;

    /* renamed from: a  reason: collision with root package name */
    private final NativeRef.EC_GROUP f56415a;

    static {
        HashMap hashMap = new HashMap();
        f56414b = hashMap;
        hashMap.put("secp256r1", "prime256v1");
        hashMap.put("1.3.132.0.33", "secp224r1");
        hashMap.put("1.3.132.0.34", "secp384r1");
        hashMap.put("1.3.132.0.35", "secp521r1");
        hashMap.put("1.2.840.10045.3.1.7", "prime256v1");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(NativeRef.EC_GROUP ec_group) {
        this.f56415a = ec_group;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ECParameterSpec a() {
        String EC_GROUP_get_curve_name = NativeCrypto.EC_GROUP_get_curve_name(this.f56415a);
        byte[][] EC_GROUP_get_curve = NativeCrypto.EC_GROUP_get_curve(this.f56415a);
        BigInteger bigInteger = new BigInteger(EC_GROUP_get_curve[0]);
        ECParameterSpec eCParameterSpec = new ECParameterSpec(new EllipticCurve(new ECFieldFp(bigInteger), new BigInteger(EC_GROUP_get_curve[1]), new BigInteger(EC_GROUP_get_curve[2])), new u(this, new NativeRef.EC_POINT(NativeCrypto.EC_GROUP_get_generator(this.f56415a))).a(), new BigInteger(NativeCrypto.EC_GROUP_get_order(this.f56415a)), new BigInteger(NativeCrypto.EC_GROUP_get_cofactor(this.f56415a)).intValue());
        a0.s(eCParameterSpec, EC_GROUP_get_curve_name);
        return eCParameterSpec;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeRef.EC_GROUP b() {
        return this.f56415a;
    }

    public boolean equals(Object obj) {
        throw new IllegalArgumentException("OpenSSLECGroupContext.equals is not defined");
    }

    public int hashCode() {
        return super.hashCode();
    }
}
