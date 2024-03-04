package org.bouncycastle.pqc.jcajce.provider.sphincs;

import gj.d;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.u;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.crypto.c;
import org.bouncycastle.pqc.jcajce.interfaces.SPHINCSKey;
import pk.e;
import pk.i;
import xk.b;
/* loaded from: classes7.dex */
public class BCSphincs256PrivateKey implements PrivateKey, SPHINCSKey {
    private static final long serialVersionUID = 1;
    private transient u attributes;
    private transient b params;
    private transient n treeDigest;

    public BCSphincs256PrivateKey(d dVar) throws IOException {
        init(dVar);
    }

    public BCSphincs256PrivateKey(n nVar, b bVar) {
        this.treeDigest = nVar;
        this.params = bVar;
    }

    private void init(d dVar) throws IOException {
        this.attributes = dVar.x();
        this.treeDigest = i.x(dVar.B().B()).y().x();
        this.params = (b) yk.a.b(dVar);
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
        if (obj instanceof BCSphincs256PrivateKey) {
            BCSphincs256PrivateKey bCSphincs256PrivateKey = (BCSphincs256PrivateKey) obj;
            return this.treeDigest.F(bCSphincs256PrivateKey.treeDigest) && org.bouncycastle.util.a.a(this.params.c(), bCSphincs256PrivateKey.params.c());
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return (this.params.b() != null ? yk.b.a(this.params, this.attributes) : new d(new oj.a(e.f57030r, new i(new oj.a(this.treeDigest))), new w0(this.params.c()), this.attributes)).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.SPHINCSKey
    public byte[] getKeyData() {
        return this.params.c();
    }

    c getKeyParams() {
        return this.params;
    }

    n getTreeDigest() {
        return this.treeDigest;
    }

    public int hashCode() {
        return this.treeDigest.hashCode() + (org.bouncycastle.util.a.r(this.params.c()) * 37);
    }
}
