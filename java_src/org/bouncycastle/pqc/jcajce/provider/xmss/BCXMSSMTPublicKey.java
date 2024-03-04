package org.bouncycastle.pqc.jcajce.provider.xmss;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import oj.v;
import org.bouncycastle.asn1.n;
import org.bouncycastle.pqc.crypto.xmss.r;
import yk.d;
/* loaded from: classes7.dex */
public class BCXMSSMTPublicKey implements PublicKey {
    private static final long serialVersionUID = 3230324130542413475L;
    private transient r keyParams;
    private transient n treeDigest;

    public BCXMSSMTPublicKey(v vVar) throws IOException {
        init(vVar);
    }

    public BCXMSSMTPublicKey(n nVar, r rVar) {
        this.treeDigest = nVar;
        this.keyParams = rVar;
    }

    private void init(v vVar) throws IOException {
        r rVar = (r) yk.c.a(vVar);
        this.keyParams = rVar;
        this.treeDigest = a.a(rVar.b());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        init(v.z((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BCXMSSMTPublicKey) {
            BCXMSSMTPublicKey bCXMSSMTPublicKey = (BCXMSSMTPublicKey) obj;
            return this.treeDigest.F(bCXMSSMTPublicKey.treeDigest) && org.bouncycastle.util.a.a(this.keyParams.f(), bCXMSSMTPublicKey.keyParams.f());
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "XMSSMT";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return d.a(this.keyParams).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int getHeight() {
        return this.keyParams.c().a();
    }

    org.bouncycastle.crypto.c getKeyParams() {
        return this.keyParams;
    }

    public int getLayers() {
        return this.keyParams.c().b();
    }

    public String getTreeDigest() {
        return a.b(this.treeDigest);
    }

    public int hashCode() {
        return this.treeDigest.hashCode() + (org.bouncycastle.util.a.r(this.keyParams.f()) * 37);
    }
}
