package org.bouncycastle.pqc.jcajce.provider.xmss;

import gj.d;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.u;
import org.bouncycastle.pqc.crypto.xmss.q;
import org.bouncycastle.pqc.jcajce.interfaces.XMSSMTPrivateKey;
import pk.k;
/* loaded from: classes7.dex */
public class BCXMSSMTPrivateKey implements PrivateKey, XMSSMTPrivateKey {
    private static final long serialVersionUID = 7682140473044521395L;
    private transient u attributes;
    private transient q keyParams;
    private transient n treeDigest;

    public BCXMSSMTPrivateKey(d dVar) throws IOException {
        init(dVar);
    }

    public BCXMSSMTPrivateKey(n nVar, q qVar) {
        this.treeDigest = nVar;
        this.keyParams = qVar;
    }

    private void init(d dVar) throws IOException {
        this.attributes = dVar.x();
        this.treeDigest = k.y(dVar.B().B()).B().x();
        this.keyParams = (q) yk.a.b(dVar);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        init(d.y((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BCXMSSMTPrivateKey) {
            BCXMSSMTPrivateKey bCXMSSMTPrivateKey = (BCXMSSMTPrivateKey) obj;
            return this.treeDigest.F(bCXMSSMTPrivateKey.treeDigest) && org.bouncycastle.util.a.a(this.keyParams.h(), bCXMSSMTPrivateKey.keyParams.h());
        }
        return false;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTPrivateKey
    public XMSSMTPrivateKey extractKeyShard(int i9) {
        return new BCXMSSMTPrivateKey(this.treeDigest, this.keyParams.c(i9));
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "XMSSMT";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return yk.b.a(this.keyParams, this.attributes).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTPrivateKey
    public int getHeight() {
        return this.keyParams.e().a();
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTPrivateKey
    public long getIndex() {
        if (getUsagesRemaining() != 0) {
            return this.keyParams.d();
        }
        throw new IllegalStateException("key exhausted");
    }

    org.bouncycastle.crypto.c getKeyParams() {
        return this.keyParams;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTPrivateKey
    public int getLayers() {
        return this.keyParams.e().b();
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTPrivateKey
    public String getTreeDigest() {
        return a.b(this.treeDigest);
    }

    n getTreeDigestOID() {
        return this.treeDigest;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTPrivateKey
    public long getUsagesRemaining() {
        return this.keyParams.f();
    }

    public int hashCode() {
        return this.treeDigest.hashCode() + (org.bouncycastle.util.a.r(this.keyParams.h()) * 37);
    }
}
