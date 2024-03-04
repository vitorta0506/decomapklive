package org.bouncycastle.jcajce.provider.symmetric.util;

import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.PBEKeySpec;
import javax.security.auth.Destroyable;
import org.bouncycastle.asn1.n;
import org.bouncycastle.crypto.c;
import org.bouncycastle.crypto.h;
import vj.c0;
import vj.d0;
/* loaded from: classes7.dex */
public class BCPBEKey implements PBEKey, Destroyable {
    String algorithm;
    int digest;
    private final AtomicBoolean hasBeenDestroyed;
    private final int iterationCount;
    int ivSize;
    int keySize;
    n oid;
    private final c param;
    private final char[] password;
    private final byte[] salt;
    boolean tryWrong;
    int type;

    public BCPBEKey(String str, n nVar, int i9, int i10, int i11, int i12, PBEKeySpec pBEKeySpec, c cVar) {
        this.hasBeenDestroyed = new AtomicBoolean(false);
        this.tryWrong = false;
        this.algorithm = str;
        this.oid = nVar;
        this.type = i9;
        this.digest = i10;
        this.keySize = i11;
        this.ivSize = i12;
        this.password = pBEKeySpec.getPassword();
        this.iterationCount = pBEKeySpec.getIterationCount();
        this.salt = pBEKeySpec.getSalt();
        this.param = cVar;
    }

    public BCPBEKey(String str, c cVar) {
        this.hasBeenDestroyed = new AtomicBoolean(false);
        this.tryWrong = false;
        this.algorithm = str;
        this.param = cVar;
        this.password = null;
        this.iterationCount = -1;
        this.salt = null;
    }

    static void checkDestroyed(Destroyable destroyable) {
        if (destroyable.isDestroyed()) {
            throw new IllegalStateException("key has been destroyed");
        }
    }

    @Override // javax.security.auth.Destroyable
    public void destroy() {
        if (this.hasBeenDestroyed.getAndSet(true)) {
            return;
        }
        char[] cArr = this.password;
        if (cArr != null) {
            org.bouncycastle.util.a.p(cArr, (char) 0);
        }
        byte[] bArr = this.salt;
        if (bArr != null) {
            org.bouncycastle.util.a.o(bArr, (byte) 0);
        }
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        checkDestroyed(this);
        return this.algorithm;
    }

    int getDigest() {
        checkDestroyed(this);
        return this.digest;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        checkDestroyed(this);
        c cVar = this.param;
        if (cVar == null) {
            int i9 = this.type;
            return i9 == 2 ? h.a(this.password) : i9 == 5 ? h.c(this.password) : h.b(this.password);
        }
        if (cVar instanceof d0) {
            cVar = ((d0) cVar).a();
        }
        return ((c0) cVar).a();
    }

    @Override // java.security.Key
    public String getFormat() {
        return "RAW";
    }

    @Override // javax.crypto.interfaces.PBEKey
    public int getIterationCount() {
        checkDestroyed(this);
        return this.iterationCount;
    }

    public int getIvSize() {
        checkDestroyed(this);
        return this.ivSize;
    }

    int getKeySize() {
        checkDestroyed(this);
        return this.keySize;
    }

    public n getOID() {
        checkDestroyed(this);
        return this.oid;
    }

    public c getParam() {
        checkDestroyed(this);
        return this.param;
    }

    @Override // javax.crypto.interfaces.PBEKey
    public char[] getPassword() {
        checkDestroyed(this);
        char[] cArr = this.password;
        if (cArr != null) {
            return org.bouncycastle.util.a.f(cArr);
        }
        throw new IllegalStateException("no password available");
    }

    @Override // javax.crypto.interfaces.PBEKey
    public byte[] getSalt() {
        checkDestroyed(this);
        return org.bouncycastle.util.a.e(this.salt);
    }

    int getType() {
        checkDestroyed(this);
        return this.type;
    }

    @Override // javax.security.auth.Destroyable
    public boolean isDestroyed() {
        return this.hasBeenDestroyed.get();
    }

    public void setTryWrongPKCS12Zero(boolean z10) {
        this.tryWrong = z10;
    }

    boolean shouldTryWrongPKCS12() {
        return this.tryWrong;
    }
}
