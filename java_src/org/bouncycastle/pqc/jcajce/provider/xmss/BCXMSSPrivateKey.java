package org.bouncycastle.pqc.jcajce.provider.xmss;

import gj.d;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.u;
import org.bouncycastle.pqc.crypto.xmss.v;
import org.bouncycastle.pqc.jcajce.interfaces.XMSSPrivateKey;
import pk.j;
/* loaded from: classes7.dex */
public class BCXMSSPrivateKey implements PrivateKey, XMSSPrivateKey {
    private static final long serialVersionUID = 8568701712864512338L;
    private transient u attributes;
    private transient v keyParams;
    private transient n treeDigest;

    public BCXMSSPrivateKey(d dVar) throws IOException {
        init(dVar);
    }

    public BCXMSSPrivateKey(n nVar, v vVar) {
        this.treeDigest = nVar;
        this.keyParams = vVar;
    }

    private void init(d dVar) throws IOException {
        this.attributes = dVar.x();
        this.treeDigest = j.y(dVar.B().B()).z().x();
        this.keyParams = (v) yk.a.b(dVar);
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
        if (obj instanceof BCXMSSPrivateKey) {
            BCXMSSPrivateKey bCXMSSPrivateKey = (BCXMSSPrivateKey) obj;
            return this.treeDigest.F(bCXMSSPrivateKey.treeDigest) && org.bouncycastle.util.a.a(this.keyParams.g(), bCXMSSPrivateKey.keyParams.g());
        }
        return false;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSPrivateKey
    public XMSSPrivateKey extractKeyShard(int i9) {
        return new BCXMSSPrivateKey(this.treeDigest, this.keyParams.c(i9));
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "XMSS";
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

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSPrivateKey
    public int getHeight() {
        return this.keyParams.e().b();
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSPrivateKey
    public long getIndex() {
        if (getUsagesRemaining() != 0) {
            return this.keyParams.d();
        }
        throw new IllegalStateException("key exhausted");
    }

    org.bouncycastle.crypto.c getKeyParams() {
        return this.keyParams;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSPrivateKey
    public String getTreeDigest() {
        return a.b(this.treeDigest);
    }

    n getTreeDigestOID() {
        return this.treeDigest;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSPrivateKey
    public long getUsagesRemaining() {
        return this.keyParams.f();
    }

    public int hashCode() {
        return this.treeDigest.hashCode() + (org.bouncycastle.util.a.r(this.keyParams.g()) * 37);
    }
}
