package org.bouncycastle.pqc.jcajce.provider.mceliece;

import cl.h;
import cl.i;
import gj.d;
import java.io.IOException;
import java.security.PrivateKey;
import pk.e;
import sk.f;
/* loaded from: classes7.dex */
public class BCMcEliecePrivateKey implements org.bouncycastle.crypto.c, PrivateKey {
    private static final long serialVersionUID = 1;
    private f params;

    public BCMcEliecePrivateKey(f fVar) {
        this.params = fVar;
    }

    public boolean equals(Object obj) {
        if (obj instanceof BCMcEliecePrivateKey) {
            BCMcEliecePrivateKey bCMcEliecePrivateKey = (BCMcEliecePrivateKey) obj;
            return getN() == bCMcEliecePrivateKey.getN() && getK() == bCMcEliecePrivateKey.getK() && getField().equals(bCMcEliecePrivateKey.getField()) && getGoppaPoly().equals(bCMcEliecePrivateKey.getGoppaPoly()) && getSInv().equals(bCMcEliecePrivateKey.getSInv()) && getP1().equals(bCMcEliecePrivateKey.getP1()) && getP2().equals(bCMcEliecePrivateKey.getP2());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "McEliece";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new d(new oj.a(e.f57025m), new pk.c(this.params.f(), this.params.e(), this.params.b(), this.params.c(), this.params.g(), this.params.h(), this.params.j())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    public cl.b getField() {
        return this.params.b();
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public i getGoppaPoly() {
        return this.params.c();
    }

    public cl.a getH() {
        return this.params.d();
    }

    public int getK() {
        return this.params.e();
    }

    vj.a getKeyParams() {
        return this.params;
    }

    public int getN() {
        return this.params.f();
    }

    public h getP1() {
        return this.params.g();
    }

    public h getP2() {
        return this.params.h();
    }

    public i[] getQInv() {
        return this.params.i();
    }

    public cl.a getSInv() {
        return this.params.j();
    }

    public int hashCode() {
        return (((((((((((this.params.e() * 37) + this.params.f()) * 37) + this.params.b().hashCode()) * 37) + this.params.c().hashCode()) * 37) + this.params.g().hashCode()) * 37) + this.params.h().hashCode()) * 37) + this.params.j().hashCode();
    }
}
