package org.bouncycastle.crypto.prng;

import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class a implements d {

    /* renamed from: a  reason: collision with root package name */
    private final SecureRandom f56023a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f56024b;

    /* renamed from: org.bouncycastle.crypto.prng.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    class C0591a implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f56025a;

        C0591a(int i9) {
            this.f56025a = i9;
        }

        @Override // org.bouncycastle.crypto.prng.c
        public byte[] a() {
            if ((a.this.f56023a instanceof SP800SecureRandom) || (a.this.f56023a instanceof X931SecureRandom)) {
                byte[] bArr = new byte[(this.f56025a + 7) / 8];
                a.this.f56023a.nextBytes(bArr);
                return bArr;
            }
            return a.this.f56023a.generateSeed((this.f56025a + 7) / 8);
        }

        @Override // org.bouncycastle.crypto.prng.c
        public int b() {
            return this.f56025a;
        }
    }

    public a(SecureRandom secureRandom, boolean z10) {
        this.f56023a = secureRandom;
        this.f56024b = z10;
    }

    @Override // org.bouncycastle.crypto.prng.d
    public c get(int i9) {
        return new C0591a(i9);
    }
}
