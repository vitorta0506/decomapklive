package org.bouncycastle.pqc.jcajce.provider.qtesla;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import oj.v;
import uk.b;
import yk.c;
import yk.d;
/* loaded from: classes7.dex */
public class BCqTESLAPublicKey implements PublicKey {
    private static final long serialVersionUID = 1;
    private transient b keyParams;

    public BCqTESLAPublicKey(v vVar) throws IOException {
        init(vVar);
    }

    public BCqTESLAPublicKey(b bVar) {
        this.keyParams = bVar;
    }

    private void init(v vVar) throws IOException {
        this.keyParams = (b) c.a(vVar);
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
        if (obj instanceof BCqTESLAPublicKey) {
            BCqTESLAPublicKey bCqTESLAPublicKey = (BCqTESLAPublicKey) obj;
            return this.keyParams.c() == bCqTESLAPublicKey.keyParams.c() && org.bouncycastle.util.a.a(this.keyParams.b(), bCqTESLAPublicKey.keyParams.b());
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return uk.c.a(this.keyParams.c());
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

    org.bouncycastle.crypto.c getKeyParams() {
        return this.keyParams;
    }

    public bl.a getParams() {
        return new bl.a(getAlgorithm());
    }

    public int hashCode() {
        return this.keyParams.c() + (org.bouncycastle.util.a.r(this.keyParams.b()) * 37);
    }
}
