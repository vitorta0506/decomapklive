package org.bouncycastle.crypto.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;
import org.bouncycastle.crypto.d;
/* loaded from: classes7.dex */
public class JournalingSecureRandom extends SecureRandom {
    private static byte[] EMPTY_TRANSCRIPT = new byte[0];
    private final SecureRandom base;
    private int index;
    private b tOut;
    private byte[] transcript;

    /* loaded from: classes7.dex */
    private class b extends ByteArrayOutputStream {
        private b() {
        }

        public void a() {
            org.bouncycastle.util.a.o(((ByteArrayOutputStream) this).buf, (byte) 0);
        }
    }

    public JournalingSecureRandom() {
        this(d.b());
    }

    public JournalingSecureRandom(SecureRandom secureRandom) {
        this.tOut = new b();
        this.index = 0;
        this.base = secureRandom;
        this.transcript = EMPTY_TRANSCRIPT;
    }

    public JournalingSecureRandom(byte[] bArr, SecureRandom secureRandom) {
        this.tOut = new b();
        this.index = 0;
        this.base = secureRandom;
        this.transcript = org.bouncycastle.util.a.e(bArr);
    }

    public void clear() {
        org.bouncycastle.util.a.o(this.transcript, (byte) 0);
        this.tOut.a();
    }

    public byte[] getFullTranscript() {
        int i9 = this.index;
        byte[] bArr = this.transcript;
        return i9 == bArr.length ? this.tOut.toByteArray() : org.bouncycastle.util.a.e(bArr);
    }

    public byte[] getTranscript() {
        return this.tOut.toByteArray();
    }

    @Override // java.security.SecureRandom, java.util.Random
    public final void nextBytes(byte[] bArr) {
        if (this.index >= this.transcript.length) {
            this.base.nextBytes(bArr);
        } else {
            int i9 = 0;
            while (i9 != bArr.length) {
                int i10 = this.index;
                byte[] bArr2 = this.transcript;
                if (i10 >= bArr2.length) {
                    break;
                }
                this.index = i10 + 1;
                bArr[i9] = bArr2[i10];
                i9++;
            }
            if (i9 != bArr.length) {
                int length = bArr.length - i9;
                byte[] bArr3 = new byte[length];
                this.base.nextBytes(bArr3);
                System.arraycopy(bArr3, 0, bArr, i9, length);
            }
        }
        try {
            this.tOut.write(bArr);
        } catch (IOException e10) {
            throw new IllegalStateException("unable to record transcript: " + e10.getMessage());
        }
    }

    public void reset() {
        this.index = 0;
        if (this.transcript.length == 0) {
            this.transcript = this.tOut.toByteArray();
        }
        this.tOut.reset();
    }
}
