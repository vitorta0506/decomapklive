package org.bouncycastle.pqc.jcajce.provider.mceliece;

import java.io.IOException;
import java.security.PublicKey;
import oj.v;
import org.light.utils.IOUtils;
import pk.d;
import pk.e;
import sk.g;
/* loaded from: classes7.dex */
public class BCMcEliecePublicKey implements PublicKey {
    private static final long serialVersionUID = 1;
    private g params;

    public BCMcEliecePublicKey(g gVar) {
        this.params = gVar;
    }

    public boolean equals(Object obj) {
        if (obj instanceof BCMcEliecePublicKey) {
            BCMcEliecePublicKey bCMcEliecePublicKey = (BCMcEliecePublicKey) obj;
            return this.params.d() == bCMcEliecePublicKey.getN() && this.params.e() == bCMcEliecePublicKey.getT() && this.params.b().equals(bCMcEliecePublicKey.getG());
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
            return new v(new oj.a(e.f57025m), new d(this.params.d(), this.params.e(), this.params.b())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public cl.a getG() {
        return this.params.b();
    }

    public int getK() {
        return this.params.c();
    }

    vj.a getKeyParams() {
        return this.params;
    }

    public int getN() {
        return this.params.d();
    }

    public int getT() {
        return this.params.e();
    }

    public int hashCode() {
        return ((this.params.d() + (this.params.e() * 37)) * 37) + this.params.b().hashCode();
    }

    public String toString() {
        return (("McEliecePublicKey:\n length of the code         : " + this.params.d() + IOUtils.LINE_SEPARATOR_UNIX) + " error correction capability: " + this.params.e() + IOUtils.LINE_SEPARATOR_UNIX) + " generator matrix           : " + this.params.b();
    }
}
