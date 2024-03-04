package org.bouncycastle.jcajce;

import javax.crypto.interfaces.PBEKey;
import org.bouncycastle.crypto.b;
import org.bouncycastle.util.a;
/* loaded from: classes7.dex */
public class PBKDF2KeyWithParameters extends PBKDF2Key implements PBEKey {
    private final int iterationCount;
    private final byte[] salt;

    public PBKDF2KeyWithParameters(char[] cArr, b bVar, byte[] bArr, int i9) {
        super(cArr, bVar);
        this.salt = a.e(bArr);
        this.iterationCount = i9;
    }

    @Override // javax.crypto.interfaces.PBEKey
    public int getIterationCount() {
        return this.iterationCount;
    }

    @Override // javax.crypto.interfaces.PBEKey
    public byte[] getSalt() {
        return this.salt;
    }
}
