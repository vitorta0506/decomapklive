package org.bouncycastle.pqc.jcajce.provider.newhope;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import oj.v;
import org.bouncycastle.pqc.jcajce.interfaces.NHPublicKey;
import tk.b;
import yk.c;
import yk.d;
/* loaded from: classes7.dex */
public class BCNHPublicKey implements NHPublicKey {
    private static final long serialVersionUID = 1;
    private transient b params;

    public BCNHPublicKey(v vVar) throws IOException {
        init(vVar);
    }

    public BCNHPublicKey(b bVar) {
        this.params = bVar;
    }

    private void init(v vVar) throws IOException {
        this.params = (b) c.a(vVar);
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
        if (obj == null || !(obj instanceof BCNHPublicKey)) {
            return false;
        }
        return org.bouncycastle.util.a.a(this.params.b(), ((BCNHPublicKey) obj).params.b());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "NH";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return d.a(this.params).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    org.bouncycastle.crypto.c getKeyParams() {
        return this.params;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.NHPublicKey
    public byte[] getPublicData() {
        return this.params.b();
    }

    public int hashCode() {
        return org.bouncycastle.util.a.r(this.params.b());
    }
}
