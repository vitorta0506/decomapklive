package org.conscrypt;

import java.math.BigInteger;
import java.security.spec.ECPoint;
import org.conscrypt.NativeRef;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private final t f56416a;

    /* renamed from: b  reason: collision with root package name */
    private final NativeRef.EC_POINT f56417b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(t tVar, NativeRef.EC_POINT ec_point) {
        this.f56416a = tVar;
        this.f56417b = ec_point;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ECPoint a() {
        byte[][] EC_POINT_get_affine_coordinates = NativeCrypto.EC_POINT_get_affine_coordinates(this.f56416a.b(), this.f56417b);
        return new ECPoint(new BigInteger(EC_POINT_get_affine_coordinates[0]), new BigInteger(EC_POINT_get_affine_coordinates[1]));
    }

    public boolean equals(Object obj) {
        throw new IllegalArgumentException("OpenSSLECPointContext.equals is not defined.");
    }

    public int hashCode() {
        return super.hashCode();
    }
}
