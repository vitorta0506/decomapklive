package org.bouncycastle.crypto.prng;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;
import kotlin.UByte;
/* loaded from: classes7.dex */
public class FixedSecureRandom extends SecureRandom {
    private byte[] _data;
    private int _index;
    private int _intPad;

    public FixedSecureRandom(boolean z10, byte[] bArr) {
        this(z10, new byte[][]{bArr});
    }

    public FixedSecureRandom(boolean z10, byte[][] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i9 = 0; i9 != bArr.length; i9++) {
            try {
                byteArrayOutputStream.write(bArr[i9]);
            } catch (IOException unused) {
                throw new IllegalArgumentException("can't save value array.");
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        this._data = byteArray;
        if (z10) {
            this._intPad = byteArray.length % 4;
        }
    }

    public FixedSecureRandom(byte[] bArr) {
        this(false, new byte[][]{bArr});
    }

    public FixedSecureRandom(byte[][] bArr) {
        this(false, bArr);
    }

    private int nextValue() {
        byte[] bArr = this._data;
        int i9 = this._index;
        this._index = i9 + 1;
        return bArr[i9] & UByte.MAX_VALUE;
    }

    @Override // java.security.SecureRandom
    public byte[] generateSeed(int i9) {
        byte[] bArr = new byte[i9];
        nextBytes(bArr);
        return bArr;
    }

    public boolean isExhausted() {
        return this._index == this._data.length;
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        System.arraycopy(this._data, this._index, bArr, 0, bArr.length);
        this._index += bArr.length;
    }

    @Override // java.util.Random
    public int nextInt() {
        int nextValue = (nextValue() << 24) | 0 | (nextValue() << 16);
        int i9 = this._intPad;
        if (i9 == 2) {
            this._intPad = i9 - 1;
        } else {
            nextValue |= nextValue() << 8;
        }
        int i10 = this._intPad;
        if (i10 == 1) {
            this._intPad = i10 - 1;
            return nextValue;
        }
        return nextValue | nextValue();
    }

    @Override // java.util.Random
    public long nextLong() {
        return (nextValue() << 56) | 0 | (nextValue() << 48) | (nextValue() << 40) | (nextValue() << 32) | (nextValue() << 24) | (nextValue() << 16) | (nextValue() << 8) | nextValue();
    }
}
