package org.bouncycastle.crypto.prng;

import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class SP800SecureRandom extends SecureRandom {
    private wj.d drbg;
    private final b drbgProvider;
    private final c entropySource;
    private final boolean predictionResistant;
    private final SecureRandom randomSource;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SP800SecureRandom(SecureRandom secureRandom, c cVar, b bVar, boolean z10) {
        this.randomSource = secureRandom;
        this.entropySource = cVar;
        this.drbgProvider = bVar;
        this.predictionResistant = z10;
    }

    @Override // java.security.SecureRandom
    public byte[] generateSeed(int i9) {
        return e.a(this.entropySource, i9);
    }

    @Override // java.security.SecureRandom
    public String getAlgorithm() {
        return this.drbgProvider.getAlgorithm();
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        synchronized (this) {
            if (this.drbg == null) {
                this.drbg = this.drbgProvider.a(this.entropySource);
            }
            if (this.drbg.a(bArr, null, this.predictionResistant) < 0) {
                this.drbg.b(null);
                this.drbg.a(bArr, null, this.predictionResistant);
            }
        }
    }

    public void reseed(byte[] bArr) {
        synchronized (this) {
            if (this.drbg == null) {
                this.drbg = this.drbgProvider.a(this.entropySource);
            }
            this.drbg.b(bArr);
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
