package org.bouncycastle.crypto.prng;

import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class X931SecureRandom extends SecureRandom {
    private final g drbg;
    private final boolean predictionResistant;
    private final SecureRandom randomSource;

    X931SecureRandom(SecureRandom secureRandom, g gVar, boolean z10) {
        this.randomSource = secureRandom;
        this.predictionResistant = z10;
    }

    @Override // java.security.SecureRandom
    public byte[] generateSeed(int i9) {
        throw null;
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        synchronized (this) {
            throw null;
        }
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void setSeed(long j10) {
        synchronized (this) {
            SecureRandom secureRandom = this.randomSource;
            if (secureRandom != null) {
                secureRandom.setSeed(j10);
            }
        }
    }

    @Override // java.security.SecureRandom
    public void setSeed(byte[] bArr) {
        synchronized (this) {
            SecureRandom secureRandom = this.randomSource;
            if (secureRandom != null) {
                secureRandom.setSeed(bArr);
            }
        }
    }
}
