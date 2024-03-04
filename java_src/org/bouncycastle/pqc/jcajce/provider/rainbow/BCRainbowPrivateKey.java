package org.bouncycastle.pqc.jcajce.provider.rainbow;

import bl.b;
import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;
import org.bouncycastle.asn1.u0;
import pk.e;
import pk.g;
import vk.a;
import vk.d;
/* loaded from: classes7.dex */
public class BCRainbowPrivateKey implements PrivateKey {
    private static final long serialVersionUID = 1;
    private short[][] A1inv;
    private short[][] A2inv;

    /* renamed from: b1  reason: collision with root package name */
    private short[] f56254b1;

    /* renamed from: b2  reason: collision with root package name */
    private short[] f56255b2;
    private a[] layers;

    /* renamed from: vi  reason: collision with root package name */
    private int[] f56256vi;

    public BCRainbowPrivateKey(b bVar) {
        this(bVar.c(), bVar.a(), bVar.d(), bVar.b(), bVar.f(), bVar.e());
    }

    public BCRainbowPrivateKey(d dVar) {
        throw null;
    }

    public BCRainbowPrivateKey(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, a[] aVarArr) {
        this.A1inv = sArr;
        this.f56254b1 = sArr2;
        this.A2inv = sArr3;
        this.f56255b2 = sArr4;
        this.f56256vi = iArr;
        this.layers = aVarArr;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BCRainbowPrivateKey)) {
            return false;
        }
        BCRainbowPrivateKey bCRainbowPrivateKey = (BCRainbowPrivateKey) obj;
        boolean z10 = ((((wk.a.j(this.A1inv, bCRainbowPrivateKey.getInvA1())) && wk.a.j(this.A2inv, bCRainbowPrivateKey.getInvA2())) && wk.a.i(this.f56254b1, bCRainbowPrivateKey.getB1())) && wk.a.i(this.f56255b2, bCRainbowPrivateKey.getB2())) && Arrays.equals(this.f56256vi, bCRainbowPrivateKey.getVi());
        if (this.layers.length != bCRainbowPrivateKey.getLayers().length) {
            return false;
        }
        for (int length = this.layers.length - 1; length >= 0; length--) {
            z10 &= this.layers[length].equals(bCRainbowPrivateKey.getLayers()[length]);
        }
        return z10;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "Rainbow";
    }

    public short[] getB1() {
        return this.f56254b1;
    }

    public short[] getB2() {
        return this.f56255b2;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new gj.d(new oj.a(e.f57013a, u0.f55980a), new g(this.A1inv, this.f56254b1, this.A2inv, this.f56255b2, this.f56256vi, this.layers)).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public short[][] getInvA1() {
        return this.A1inv;
    }

    public short[][] getInvA2() {
        return this.A2inv;
    }

    public a[] getLayers() {
        return this.layers;
    }

    public int[] getVi() {
        return this.f56256vi;
    }

    public int hashCode() {
        int length = (((((((((this.layers.length * 37) + org.bouncycastle.util.a.y(this.A1inv)) * 37) + org.bouncycastle.util.a.x(this.f56254b1)) * 37) + org.bouncycastle.util.a.y(this.A2inv)) * 37) + org.bouncycastle.util.a.x(this.f56255b2)) * 37) + org.bouncycastle.util.a.u(this.f56256vi);
        for (int length2 = this.layers.length - 1; length2 >= 0; length2--) {
            length = (length * 37) + this.layers[length2].hashCode();
        }
        return length;
    }
}
