package org.bouncycastle.pqc.jcajce.provider.sphincs;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import oj.v;
import org.bouncycastle.asn1.n;
import org.bouncycastle.pqc.jcajce.interfaces.SPHINCSKey;
import pk.e;
import pk.i;
import xk.c;
import yk.d;
/* loaded from: classes7.dex */
public class BCSphincs256PublicKey implements PublicKey, SPHINCSKey {
    private static final long serialVersionUID = 1;
    private transient c params;
    private transient n treeDigest;

    public BCSphincs256PublicKey(v vVar) throws IOException {
        init(vVar);
    }

    public BCSphincs256PublicKey(n nVar, c cVar) {
        this.treeDigest = nVar;
        this.params = cVar;
    }

    private void init(v vVar) throws IOException {
        this.treeDigest = i.x(vVar.x().B()).y().x();
        this.params = (c) yk.c.a(vVar);
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
        if (obj instanceof BCSphincs256PublicKey) {
            BCSphincs256PublicKey bCSphincs256PublicKey = (BCSphincs256PublicKey) obj;
            return this.treeDigest.F(bCSphincs256PublicKey.treeDigest) && org.bouncycastle.util.a.a(this.params.c(), bCSphincs256PublicKey.params.c());
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
            return (this.params.b() != null ? d.a(this.params) : new v(new oj.a(e.f57030r, new i(new oj.a(this.treeDigest))), this.params.c())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.SPHINCSKey
    public byte[] getKeyData() {
        return this.params.c();
    }

    org.bouncycastle.crypto.c getKeyParams() {
        return this.params;
    }

    n getTreeDigest() {
        return this.treeDigest;
    }

    public int hashCode() {
        return this.treeDigest.hashCode() + (org.bouncycastle.util.a.r(this.params.c()) * 37);
    }
}
