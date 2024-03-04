package org.bouncycastle.pqc.jcajce.provider.gmss;

import java.security.PublicKey;
import org.bouncycastle.asn1.n;
import org.bouncycastle.crypto.c;
import org.bouncycastle.util.encoders.d;
import pk.e;
import qk.b;
/* loaded from: classes7.dex */
public class BCGMSSPublicKey implements c, PublicKey {
    private static final long serialVersionUID = 1;
    private b gmssParameterSet;
    private b gmssParams;
    private byte[] publicKeyBytes;

    public BCGMSSPublicKey(qk.c cVar) {
        throw null;
    }

    public BCGMSSPublicKey(byte[] bArr, b bVar) {
        this.publicKeyBytes = bArr;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "GMSS";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        n nVar = e.f57019g;
        throw null;
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public b getParameterSet() {
        return null;
    }

    public byte[] getPublicKeyBytes() {
        return this.publicKeyBytes;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("GMSS public key : ");
        sb2.append(new String(d.d(this.publicKeyBytes)));
        sb2.append("\nHeight of Trees: \n");
        throw null;
    }
}
