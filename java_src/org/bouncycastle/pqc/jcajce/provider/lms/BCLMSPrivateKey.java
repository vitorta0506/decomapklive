package org.bouncycastle.pqc.jcajce.provider.lms;

import gj.d;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.u;
import org.bouncycastle.pqc.jcajce.interfaces.LMSPrivateKey;
import rk.c;
import rk.j;
import rk.k;
import yk.b;
/* loaded from: classes7.dex */
public class BCLMSPrivateKey implements PrivateKey, LMSPrivateKey {
    private static final long serialVersionUID = 8568701712864512338L;
    private transient u attributes;
    private transient j keyParams;

    public BCLMSPrivateKey(d dVar) throws IOException {
        init(dVar);
    }

    public BCLMSPrivateKey(j jVar) {
        this.keyParams = jVar;
    }

    private void init(d dVar) throws IOException {
        this.attributes = dVar.x();
        this.keyParams = (j) yk.a.b(dVar);
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
        if (obj instanceof BCLMSPrivateKey) {
            try {
                return org.bouncycastle.util.a.a(this.keyParams.getEncoded(), ((BCLMSPrivateKey) obj).keyParams.getEncoded());
            } catch (IOException unused) {
                throw new IllegalStateException("unable to perform equals");
            }
        }
        return false;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.LMSPrivateKey
    public LMSPrivateKey extractKeyShard(int i9) {
        j jVar = this.keyParams;
        return jVar instanceof k ? new BCLMSPrivateKey(((k) jVar).c(i9)) : new BCLMSPrivateKey(((c) jVar).b(i9));
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "LMS";
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

    @Override // org.bouncycastle.pqc.jcajce.interfaces.LMSPrivateKey
    public long getIndex() {
        if (getUsagesRemaining() != 0) {
            j jVar = this.keyParams;
            return jVar instanceof k ? ((k) jVar).h() : ((c) jVar).c();
        }
        throw new IllegalStateException("key exhausted");
    }

    org.bouncycastle.crypto.c getKeyParams() {
        return this.keyParams;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.LMSKey
    public int getLevels() {
        j jVar = this.keyParams;
        if (jVar instanceof k) {
            return 1;
        }
        return ((c) jVar).g();
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.LMSPrivateKey
    public long getUsagesRemaining() {
        j jVar = this.keyParams;
        return jVar instanceof k ? ((k) jVar).p() : ((c) jVar).k();
    }

    public int hashCode() {
        try {
            return org.bouncycastle.util.a.r(this.keyParams.getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("unable to calculate hashCode");
        }
    }
}
