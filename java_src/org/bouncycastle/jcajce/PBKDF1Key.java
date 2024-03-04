package org.bouncycastle.jcajce;

import org.bouncycastle.crypto.b;
/* loaded from: classes7.dex */
public class PBKDF1Key implements PBKDFKey {
    private final b converter;
    private final char[] password;

    public PBKDF1Key(char[] cArr, b bVar) {
        char[] cArr2 = new char[cArr.length];
        this.password = cArr2;
        this.converter = bVar;
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "PBKDF1";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return this.converter.convert(this.password);
    }

    @Override // java.security.Key
    public String getFormat() {
        return this.converter.getType();
    }

    public char[] getPassword() {
        return this.password;
    }
}
