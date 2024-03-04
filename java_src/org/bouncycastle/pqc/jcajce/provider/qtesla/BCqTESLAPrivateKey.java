package org.bouncycastle.pqc.jcajce.provider.qtesla;

import gj.d;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.u;
import uk.c;
import yk.b;
/* loaded from: classes7.dex */
public class BCqTESLAPrivateKey implements PrivateKey {
    private static final long serialVersionUID = 1;
    private transient u attributes;
    private transient uk.a keyParams;

    public BCqTESLAPrivateKey(d dVar) throws IOException {
        init(dVar);
    }

    public BCqTESLAPrivateKey(uk.a aVar) {
        this.keyParams = aVar;
    }

    private void init(d dVar) throws IOException {
        this.attributes = dVar.x();
        this.keyParams = (uk.a) yk.a.b(dVar);
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
        if (obj instanceof BCqTESLAPrivateKey) {
            BCqTESLAPrivateKey bCqTESLAPrivateKey = (BCqTESLAPrivateKey) obj;
            return this.keyParams.c() == bCqTESLAPrivateKey.keyParams.c() && org.bouncycastle.util.a.a(this.keyParams.b(), bCqTESLAPrivateKey.keyParams.b());
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return c.a(this.keyParams.c());
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return b.a(this.keyParams, this.attributes).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
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
