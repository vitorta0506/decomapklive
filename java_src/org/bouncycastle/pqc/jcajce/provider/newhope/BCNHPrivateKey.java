package org.bouncycastle.pqc.jcajce.provider.newhope;

import gj.d;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.asn1.u;
import org.bouncycastle.crypto.c;
import org.bouncycastle.pqc.jcajce.interfaces.NHPrivateKey;
import yk.b;
/* loaded from: classes7.dex */
public class BCNHPrivateKey implements NHPrivateKey {
    private static final long serialVersionUID = 1;
    private transient u attributes;
    private transient tk.a params;

    public BCNHPrivateKey(d dVar) throws IOException {
        init(dVar);
    }

    public BCNHPrivateKey(tk.a aVar) {
        this.params = aVar;
    }

    private void init(d dVar) throws IOException {
        this.attributes = dVar.x();
        this.params = (tk.a) yk.a.b(dVar);
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
        if (obj instanceof BCNHPrivateKey) {
            return org.bouncycastle.util.a.d(this.params.b(), ((BCNHPrivateKey) obj).params.b());
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "NH";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return b.a(this.params, this.attributes).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    c getKeyParams() {
        return this.params;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.NHPrivateKey
    public short[] getSecretData() {
        return this.params.b();
    }

    public int hashCode() {
        return org.bouncycastle.util.a.x(this.params.b());
    }
}
