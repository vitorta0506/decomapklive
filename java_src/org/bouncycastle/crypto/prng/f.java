package org.bouncycastle.crypto.prng;

import java.security.SecureRandom;
/* loaded from: classes7.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final SecureRandom f56027a;

    /* renamed from: b  reason: collision with root package name */
    private final d f56028b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f56029c;

    /* renamed from: d  reason: collision with root package name */
    private int f56030d;

    /* renamed from: e  reason: collision with root package name */
    private int f56031e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class a implements org.bouncycastle.crypto.prng.b {

        /* renamed from: a  reason: collision with root package name */
        private final org.bouncycastle.crypto.a f56032a;

        /* renamed from: b  reason: collision with root package name */
        private final int f56033b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f56034c;

        /* renamed from: d  reason: collision with root package name */
        private final byte[] f56035d;

        /* renamed from: e  reason: collision with root package name */
        private final int f56036e;

        public a(org.bouncycastle.crypto.a aVar, int i9, byte[] bArr, byte[] bArr2, int i10) {
            this.f56032a = aVar;
            this.f56033b = i9;
            this.f56034c = bArr;
            this.f56035d = bArr2;
            this.f56036e = i10;
        }

        @Override // org.bouncycastle.crypto.prng.b
        public wj.d a(org.bouncycastle.crypto.prng.c cVar) {
            return new wj.a(this.f56032a, this.f56033b, this.f56036e, cVar, this.f56035d, this.f56034c);
        }

        @Override // org.bouncycastle.crypto.prng.b
        public String getAlgorithm() {
            return "CTR-DRBG-" + this.f56032a.getAlgorithmName() + this.f56033b;
        }
    }

    /* loaded from: classes7.dex */
    private static class b implements org.bouncycastle.crypto.prng.b {

        /* renamed from: a  reason: collision with root package name */
        private final org.bouncycastle.crypto.g f56037a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f56038b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f56039c;

        /* renamed from: d  reason: collision with root package name */
        private final int f56040d;

        public b(org.bouncycastle.crypto.g gVar, byte[] bArr, byte[] bArr2, int i9) {
            this.f56037a = gVar;
            this.f56038b = bArr;
            this.f56039c = bArr2;
            this.f56040d = i9;
        }

        @Override // org.bouncycastle.crypto.prng.b
        public wj.d a(org.bouncycastle.crypto.prng.c cVar) {
            return new wj.b(this.f56037a, this.f56040d, cVar, this.f56039c, this.f56038b);
        }

        @Override // org.bouncycastle.crypto.prng.b
        public String getAlgorithm() {
            StringBuilder sb2;
            String algorithmName;
            if (this.f56037a instanceof uj.a) {
                sb2 = new StringBuilder();
                sb2.append("HMAC-DRBG-");
                algorithmName = f.e(((uj.a) this.f56037a).g());
            } else {
                sb2 = new StringBuilder();
                sb2.append("HMAC-DRBG-");
                algorithmName = this.f56037a.getAlgorithmName();
            }
            sb2.append(algorithmName);
            return sb2.toString();
        }
    }

    /* loaded from: classes7.dex */
    private static class c implements org.bouncycastle.crypto.prng.b {

        /* renamed from: a  reason: collision with root package name */
        private final org.bouncycastle.crypto.e f56041a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f56042b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f56043c;

        /* renamed from: d  reason: collision with root package name */
        private final int f56044d;

        public c(org.bouncycastle.crypto.e eVar, byte[] bArr, byte[] bArr2, int i9) {
            this.f56041a = eVar;
            this.f56042b = bArr;
            this.f56043c = bArr2;
            this.f56044d = i9;
        }

        @Override // org.bouncycastle.crypto.prng.b
        public wj.d a(org.bouncycastle.crypto.prng.c cVar) {
            return new wj.c(this.f56041a, this.f56044d, cVar, this.f56043c, this.f56042b);
        }

        @Override // org.bouncycastle.crypto.prng.b
        public String getAlgorithm() {
            return "HASH-DRBG-" + f.e(this.f56041a);
        }
    }

    public f(SecureRandom secureRandom, boolean z10) {
        this.f56030d = 256;
        this.f56031e = 256;
        this.f56027a = secureRandom;
        this.f56028b = new org.bouncycastle.crypto.prng.a(secureRandom, z10);
    }

    public f(d dVar) {
        this.f56030d = 256;
        this.f56031e = 256;
        this.f56027a = null;
        this.f56028b = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String e(org.bouncycastle.crypto.e eVar) {
        String algorithmName = eVar.getAlgorithmName();
        int indexOf = algorithmName.indexOf(45);
        if (indexOf <= 0 || algorithmName.startsWith("SHA3")) {
            return algorithmName;
        }
        return algorithmName.substring(0, indexOf) + algorithmName.substring(indexOf + 1);
    }

    public SP800SecureRandom b(org.bouncycastle.crypto.a aVar, int i9, byte[] bArr, boolean z10) {
        return new SP800SecureRandom(this.f56027a, this.f56028b.get(this.f56031e), new a(aVar, i9, bArr, this.f56029c, this.f56030d), z10);
    }

    public SP800SecureRandom c(org.bouncycastle.crypto.g gVar, byte[] bArr, boolean z10) {
        return new SP800SecureRandom(this.f56027a, this.f56028b.get(this.f56031e), new b(gVar, bArr, this.f56029c, this.f56030d), z10);
    }

    public SP800SecureRandom d(org.bouncycastle.crypto.e eVar, byte[] bArr, boolean z10) {
        return new SP800SecureRandom(this.f56027a, this.f56028b.get(this.f56031e), new c(eVar, bArr, this.f56029c, this.f56030d), z10);
    }

    public f f(int i9) {
        this.f56031e = i9;
        return this;
    }

    public f g(byte[] bArr) {
        this.f56029c = org.bouncycastle.util.a.e(bArr);
        return this;
    }
}
