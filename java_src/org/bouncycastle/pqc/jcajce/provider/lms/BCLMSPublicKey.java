package org.bouncycastle.pqc.jcajce.provider.lms;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import oj.v;
import org.bouncycastle.pqc.jcajce.interfaces.LMSKey;
import rk.j;
import rk.l;
import yk.c;
import yk.d;
/* loaded from: classes7.dex */
public class BCLMSPublicKey implements PublicKey, LMSKey {
    private static final long serialVersionUID = -5617456225328969766L;
    private transient j keyParams;

    public BCLMSPublicKey(v vVar) throws IOException {
        init(vVar);
    }

    public BCLMSPublicKey(j jVar) {
        this.keyParams = jVar;
    }

    private void init(v vVar) throws IOException {
        this.keyParams = (j) c.a(vVar);
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
        if (obj instanceof BCLMSPublicKey) {
            try {
                return org.bouncycastle.util.a.a(this.keyParams.getEncoded(), ((BCLMSPublicKey) obj).keyParams.getEncoded());
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "LMS";
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

    @Override // org.bouncycastle.pqc.jcajce.interfaces.LMSKey
    public int getLevels() {
        j jVar = this.keyParams;
        if (jVar instanceof l) {
            return 1;
        }
        return ((rk.d) jVar).c();
    }

    public int hashCode() {
        try {
            return org.bouncycastle.util.a.r(this.keyParams.getEncoded());
        } catch (IOException unused) {
            return -1;
        }
    }
}
