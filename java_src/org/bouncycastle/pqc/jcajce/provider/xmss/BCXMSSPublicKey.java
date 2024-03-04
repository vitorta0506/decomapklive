package org.bouncycastle.pqc.jcajce.provider.xmss;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import oj.v;
import org.bouncycastle.asn1.n;
import org.bouncycastle.pqc.crypto.xmss.w;
import yk.d;
/* loaded from: classes7.dex */
public class BCXMSSPublicKey implements PublicKey {
    private static final long serialVersionUID = -5617456225328969766L;
    private transient w keyParams;
    private transient n treeDigest;

    public BCXMSSPublicKey(v vVar) throws IOException {
        init(vVar);
    }

    public BCXMSSPublicKey(n nVar, w wVar) {
        this.treeDigest = nVar;
        this.keyParams = wVar;
    }

    private void init(v vVar) throws IOException {
        w wVar = (w) yk.c.a(vVar);
        this.keyParams = wVar;
        this.treeDigest = a.a(wVar.b());
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
        if (obj instanceof BCXMSSPublicKey) {
            BCXMSSPublicKey bCXMSSPublicKey = (BCXMSSPublicKey) obj;
            try {
                if (this.treeDigest.F(bCXMSSPublicKey.treeDigest)) {
                    if (org.bouncycastle.util.a.a(this.keyParams.getEncoded(), bCXMSSPublicKey.keyParams.getEncoded())) {
                        return true;
                    }
                }
                return false;
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "XMSS";
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
        return this.keyParams.c().b();
    }

    org.bouncycastle.crypto.c getKeyParams() {
        return this.keyParams;
    }

    public String getTreeDigest() {
        return a.b(this.treeDigest);
    }

    public int hashCode() {
        try {
            return this.treeDigest.hashCode() + (org.bouncycastle.util.a.r(this.keyParams.getEncoded()) * 37);
        } catch (IOException unused) {
            return this.treeDigest.hashCode();
        }
    }
}
