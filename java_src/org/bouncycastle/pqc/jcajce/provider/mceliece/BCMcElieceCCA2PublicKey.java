package org.bouncycastle.pqc.jcajce.provider.mceliece;

import java.io.IOException;
import java.security.PublicKey;
import oj.v;
import org.light.utils.IOUtils;
import pk.e;
/* loaded from: classes7.dex */
public class BCMcElieceCCA2PublicKey implements org.bouncycastle.crypto.c, PublicKey {
    private static final long serialVersionUID = 1;
    private sk.c params;

    public BCMcElieceCCA2PublicKey(sk.c cVar) {
        this.params = cVar;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BCMcElieceCCA2PublicKey)) {
            return false;
        }
        BCMcElieceCCA2PublicKey bCMcElieceCCA2PublicKey = (BCMcElieceCCA2PublicKey) obj;
        return this.params.e() == bCMcElieceCCA2PublicKey.getN() && this.params.f() == bCMcElieceCCA2PublicKey.getT() && this.params.c().equals(bCMcElieceCCA2PublicKey.getG());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new v(new oj.a(e.f57026n), new pk.b(this.params.e(), this.params.f(), this.params.c(), c.a(this.params.b()))).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public cl.a getG() {
        return this.params.c();
    }

    public int getK() {
        return this.params.d();
    }

    vj.a getKeyParams() {
        return this.params;
    }

    public int getN() {
        return this.params.e();
    }

    public int getT() {
        return this.params.f();
    }

    public int hashCode() {
        return ((this.params.e() + (this.params.f() * 37)) * 37) + this.params.c().hashCode();
    }

    public String toString() {
        return (("McEliecePublicKey:\n length of the code         : " + this.params.e() + IOUtils.LINE_SEPARATOR_UNIX) + " error correction capability: " + this.params.f() + IOUtils.LINE_SEPARATOR_UNIX) + " generator matrix           : " + this.params.c().toString();
    }
}
