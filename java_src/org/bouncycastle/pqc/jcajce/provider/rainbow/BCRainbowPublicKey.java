package org.bouncycastle.pqc.jcajce.provider.rainbow;

import java.security.PublicKey;
import org.bouncycastle.asn1.u0;
import pk.h;
import vk.c;
import vk.e;
import wk.a;
/* loaded from: classes7.dex */
public class BCRainbowPublicKey implements PublicKey {
    private static final long serialVersionUID = 1;
    private short[][] coeffquadratic;
    private short[] coeffscalar;
    private short[][] coeffsingular;
    private int docLength;
    private c rainbowParams;

    public BCRainbowPublicKey(int i9, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.docLength = i9;
        this.coeffquadratic = sArr;
        this.coeffsingular = sArr2;
        this.coeffscalar = sArr3;
    }

    public BCRainbowPublicKey(bl.c cVar) {
        this(cVar.d(), cVar.a(), cVar.c(), cVar.b());
    }

    public BCRainbowPublicKey(e eVar) {
        throw null;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BCRainbowPublicKey)) {
            return false;
        }
        BCRainbowPublicKey bCRainbowPublicKey = (BCRainbowPublicKey) obj;
        return this.docLength == bCRainbowPublicKey.getDocLength() && a.j(this.coeffquadratic, bCRainbowPublicKey.getCoeffQuadratic()) && a.j(this.coeffsingular, bCRainbowPublicKey.getCoeffSingular()) && a.i(this.coeffscalar, bCRainbowPublicKey.getCoeffScalar());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "Rainbow";
    }

    public short[][] getCoeffQuadratic() {
        return this.coeffquadratic;
    }

    public short[] getCoeffScalar() {
        return org.bouncycastle.util.a.i(this.coeffscalar);
    }

    public short[][] getCoeffSingular() {
        short[][] sArr = new short[this.coeffsingular.length];
        int i9 = 0;
        while (true) {
            short[][] sArr2 = this.coeffsingular;
            if (i9 == sArr2.length) {
                return sArr;
            }
            sArr[i9] = org.bouncycastle.util.a.i(sArr2[i9]);
            i9++;
        }
    }

    public int getDocLength() {
        return this.docLength;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return al.a.a(new oj.a(pk.e.f57013a, u0.f55980a), new h(this.docLength, this.coeffquadratic, this.coeffsingular, this.coeffscalar));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        return (((((this.docLength * 37) + org.bouncycastle.util.a.y(this.coeffquadratic)) * 37) + org.bouncycastle.util.a.y(this.coeffsingular)) * 37) + org.bouncycastle.util.a.x(this.coeffscalar);
    }
}
