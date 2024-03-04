package org.bouncycastle.pqc.jcajce.provider.mceliece;

import cl.h;
import cl.i;
import gj.d;
import java.io.IOException;
import java.security.PrivateKey;
import pk.e;
/* loaded from: classes7.dex */
public class BCMcElieceCCA2PrivateKey implements PrivateKey {
    private static final long serialVersionUID = 1;
    private sk.b params;

    public BCMcElieceCCA2PrivateKey(sk.b bVar) {
        this.params = bVar;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BCMcElieceCCA2PrivateKey)) {
            return false;
        }
        BCMcElieceCCA2PrivateKey bCMcElieceCCA2PrivateKey = (BCMcElieceCCA2PrivateKey) obj;
        return getN() == bCMcElieceCCA2PrivateKey.getN() && getK() == bCMcElieceCCA2PrivateKey.getK() && getField().equals(bCMcElieceCCA2PrivateKey.getField()) && getGoppaPoly().equals(bCMcElieceCCA2PrivateKey.getGoppaPoly()) && getP().equals(bCMcElieceCCA2PrivateKey.getP()) && getH().equals(bCMcElieceCCA2PrivateKey.getH());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new d(new oj.a(e.f57026n), new pk.a(getN(), getK(), getField(), getGoppaPoly(), getP(), c.a(this.params.b()))).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    public cl.b getField() {
        return this.params.c();
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public i getGoppaPoly() {
        return this.params.d();
    }

    public cl.a getH() {
        return this.params.e();
    }

    public int getK() {
        return this.params.f();
    }

    vj.a getKeyParams() {
        return this.params;
    }

    public int getN() {
        return this.params.g();
    }

    public h getP() {
        return this.params.h();
    }

    public i[] getQInv() {
        return this.params.i();
    }

    public int getT() {
        return this.params.d().g();
    }

    public int hashCode() {
        return (((((((((this.params.f() * 37) + this.params.g()) * 37) + this.params.c().hashCode()) * 37) + this.params.d().hashCode()) * 37) + this.params.h().hashCode()) * 37) + this.params.e().hashCode();
    }
}
