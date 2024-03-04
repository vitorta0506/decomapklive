package org.bouncycastle.asn1;

import java.io.IOException;
import java.math.BigInteger;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes7.dex */
public class g extends r {

    /* renamed from: c  reason: collision with root package name */
    private static g[] f55925c = new g[12];

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f55926a;

    /* renamed from: b  reason: collision with root package name */
    private final int f55927b;

    public g(byte[] bArr) {
        if (k.S(bArr)) {
            throw new IllegalArgumentException("malformed enumerated");
        }
        if ((bArr[0] & ByteCompanionObject.MIN_VALUE) != 0) {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
        this.f55926a = org.bouncycastle.util.a.e(bArr);
        this.f55927b = k.c0(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g K(byte[] bArr) {
        if (bArr.length > 1) {
            return new g(bArr);
        }
        if (bArr.length != 0) {
            int i9 = bArr[0] & UByte.MAX_VALUE;
            g[] gVarArr = f55925c;
            if (i9 >= gVarArr.length) {
                return new g(bArr);
            }
            g gVar = gVarArr[i9];
            if (gVar == null) {
                g gVar2 = new g(bArr);
                gVarArr[i9] = gVar2;
                return gVar2;
            }
            return gVar;
        }
        throw new IllegalArgumentException("ENUMERATED has zero length");
    }

    public static g L(Object obj) {
        if (obj == null || (obj instanceof g)) {
            return (g) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (g) r.G((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    public BigInteger M() {
        return new BigInteger(this.f55926a);
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return org.bouncycastle.util.a.r(this.f55926a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof g) {
            return org.bouncycastle.util.a.a(this.f55926a, ((g) rVar).f55926a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 10, this.f55926a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return a2.a(this.f55926a.length) + 1 + this.f55926a.length;
    }
}
