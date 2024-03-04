package org.bouncycastle.jcajce.provider.drbg;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
import java.security.Security;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.bouncycastle.crypto.prng.SP800SecureRandom;
import org.bouncycastle.util.h;
import org.bouncycastle.util.i;
/* loaded from: classes7.dex */
public class DRBG {

    /* renamed from: a  reason: collision with root package name */
    private static final String[][] f56064a = {new String[]{"sun.security.provider.Sun", "sun.security.provider.SecureRandom"}, new String[]{"org.apache.harmony.security.provider.crypto.CryptoProvider", "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"}, new String[]{"com.android.org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLRandom"}, new String[]{"org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLRandom"}};

    /* loaded from: classes7.dex */
    public static class Default extends SecureRandomSpi {
        private static final SecureRandom random = DRBG.d(true);

        @Override // java.security.SecureRandomSpi
        protected byte[] engineGenerateSeed(int i9) {
            return random.generateSeed(i9);
        }

        @Override // java.security.SecureRandomSpi
        protected void engineNextBytes(byte[] bArr) {
            random.nextBytes(bArr);
        }

        @Override // java.security.SecureRandomSpi
        protected void engineSetSeed(byte[] bArr) {
            random.setSeed(bArr);
        }
    }

    /* loaded from: classes7.dex */
    public static class NonceAndIV extends SecureRandomSpi {
        private static final SecureRandom random = DRBG.d(false);

        @Override // java.security.SecureRandomSpi
        protected byte[] engineGenerateSeed(int i9) {
            return random.generateSeed(i9);
        }

        @Override // java.security.SecureRandomSpi
        protected void engineNextBytes(byte[] bArr) {
            random.nextBytes(bArr);
        }

        @Override // java.security.SecureRandomSpi
        protected void engineSetSeed(byte[] bArr) {
            random.setSeed(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a implements PrivilegedAction<Boolean> {
        a() {
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public Boolean run() {
            try {
                return Boolean.valueOf(SecureRandom.class.getMethod("getInstanceStrong", new Class[0]) != null);
            } catch (Exception unused) {
                return Boolean.FALSE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class b implements PrivilegedAction<SecureRandom> {
        b() {
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public SecureRandom run() {
            try {
                return (SecureRandom) SecureRandom.class.getMethod("getInstanceStrong", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception unused) {
                return DRBG.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class c implements PrivilegedAction<org.bouncycastle.crypto.prng.d> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56065a;

        c(String str) {
            this.f56065a = str;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public org.bouncycastle.crypto.prng.d run() {
            try {
                return (org.bouncycastle.crypto.prng.d) org.bouncycastle.jcajce.provider.symmetric.util.a.a(DRBG.class, this.f56065a).newInstance();
            } catch (Exception e10) {
                throw new IllegalStateException("entropy source " + this.f56065a + " not created: " + e10.getMessage(), e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class d extends SecureRandom {
        d(Object[] objArr) {
            super((SecureRandomSpi) objArr[1], (Provider) objArr[0]);
        }
    }

    /* loaded from: classes7.dex */
    private static class e extends Provider {
        protected e() {
            super("BCHEP", 1.0d, "Bouncy Castle Hybrid Entropy Provider");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class f extends SecureRandom {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f56066a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f56067b;

        /* renamed from: c  reason: collision with root package name */
        private final SecureRandom f56068c;

        /* renamed from: d  reason: collision with root package name */
        private final SP800SecureRandom f56069d;

        /* loaded from: classes7.dex */
        class a implements org.bouncycastle.crypto.prng.d {
            a() {
            }

            @Override // org.bouncycastle.crypto.prng.d
            public org.bouncycastle.crypto.prng.c get(int i9) {
                return new b(i9);
            }
        }

        /* loaded from: classes7.dex */
        private class b implements org.bouncycastle.crypto.prng.c {

            /* renamed from: a  reason: collision with root package name */
            private final int f56071a;

            /* renamed from: b  reason: collision with root package name */
            private final AtomicReference f56072b = new AtomicReference();

            /* renamed from: c  reason: collision with root package name */
            private final AtomicBoolean f56073c = new AtomicBoolean(false);

            /* loaded from: classes7.dex */
            private class a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                private final int f56075a;

                a(int i9) {
                    this.f56075a = i9;
                }

                private void b(long j10) {
                    try {
                        Thread.sleep(j10);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    String a10 = h.a("org.bouncycastle.drbg.gather_pause_secs");
                    long j10 = 5000;
                    if (a10 != null) {
                        try {
                            j10 = Long.parseLong(a10) * 1000;
                        } catch (Exception unused) {
                        }
                    }
                    int i9 = this.f56075a;
                    byte[] bArr = new byte[i9];
                    for (int i10 = 0; i10 < b.this.f56071a / 8; i10++) {
                        b(j10);
                        byte[] generateSeed = f.this.f56068c.generateSeed(8);
                        System.arraycopy(generateSeed, 0, bArr, i10 * 8, generateSeed.length);
                    }
                    int i11 = b.this.f56071a - ((b.this.f56071a / 8) * 8);
                    if (i11 != 0) {
                        b(j10);
                        byte[] generateSeed2 = f.this.f56068c.generateSeed(i11);
                        System.arraycopy(generateSeed2, 0, bArr, i9 - generateSeed2.length, generateSeed2.length);
                    }
                    b.this.f56072b.set(bArr);
                    f.this.f56066a.set(true);
                }
            }

            b(int i9) {
                this.f56071a = (i9 + 7) / 8;
            }

            @Override // org.bouncycastle.crypto.prng.c
            public byte[] a() {
                byte[] bArr = (byte[]) this.f56072b.getAndSet(null);
                if (bArr == null || bArr.length != this.f56071a) {
                    bArr = f.this.f56068c.generateSeed(this.f56071a);
                } else {
                    this.f56073c.set(false);
                }
                if (!this.f56073c.getAndSet(true)) {
                    Thread thread = new Thread(new a(this.f56071a));
                    thread.setDaemon(true);
                    thread.start();
                }
                return bArr;
            }

            @Override // org.bouncycastle.crypto.prng.c
            public int b() {
                return this.f56071a * 8;
            }
        }

        f() {
            super(null, new e());
            this.f56066a = new AtomicBoolean(false);
            this.f56067b = new AtomicInteger(0);
            SecureRandom c10 = DRBG.c();
            this.f56068c = c10;
            this.f56069d = new org.bouncycastle.crypto.prng.f(new a()).g(i.e("Bouncy Castle Hybrid Entropy Source")).c(new uj.a(new rj.h()), c10.generateSeed(32), false);
        }

        @Override // java.security.SecureRandom
        public byte[] generateSeed(int i9) {
            byte[] bArr = new byte[i9];
            if (this.f56067b.getAndIncrement() > 20 && this.f56066a.getAndSet(false)) {
                this.f56067b.set(0);
                this.f56069d.reseed(null);
            }
            this.f56069d.nextBytes(bArr);
            return bArr;
        }

        @Override // java.security.SecureRandom, java.util.Random
        public void setSeed(long j10) {
            SP800SecureRandom sP800SecureRandom = this.f56069d;
            if (sP800SecureRandom != null) {
                sP800SecureRandom.setSeed(j10);
            }
        }

        @Override // java.security.SecureRandom
        public void setSeed(byte[] bArr) {
            SP800SecureRandom sP800SecureRandom = this.f56069d;
            if (sP800SecureRandom != null) {
                sP800SecureRandom.setSeed(bArr);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class g extends SecureRandom {

        /* renamed from: a  reason: collision with root package name */
        private final InputStream f56077a;

        /* loaded from: classes7.dex */
        class a implements PrivilegedAction<InputStream> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ URL f56078a;

            a(URL url) {
                this.f56078a = url;
            }

            @Override // java.security.PrivilegedAction
            /* renamed from: a */
            public InputStream run() {
                try {
                    return this.f56078a.openStream();
                } catch (IOException unused) {
                    throw new IllegalStateException("unable to open random source");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes7.dex */
        public class b implements PrivilegedAction<Integer> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ byte[] f56080a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f56081b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f56082c;

            b(byte[] bArr, int i9, int i10) {
                this.f56080a = bArr;
                this.f56081b = i9;
                this.f56082c = i10;
            }

            @Override // java.security.PrivilegedAction
            /* renamed from: a */
            public Integer run() {
                try {
                    return Integer.valueOf(g.this.f56077a.read(this.f56080a, this.f56081b, this.f56082c));
                } catch (IOException unused) {
                    throw new InternalError("unable to read random source");
                }
            }
        }

        g(URL url) {
            super(null, new e());
            this.f56077a = (InputStream) AccessController.doPrivileged(new a(url));
        }

        private int b(byte[] bArr, int i9, int i10) {
            return ((Integer) AccessController.doPrivileged(new b(bArr, i9, i10))).intValue();
        }

        @Override // java.security.SecureRandom
        public byte[] generateSeed(int i9) {
            byte[] bArr;
            synchronized (this) {
                bArr = new byte[i9];
                int i10 = 0;
                while (i10 != i9) {
                    int b10 = b(bArr, i10, i9 - i10);
                    if (b10 <= -1) {
                        break;
                    }
                    i10 += b10;
                }
                if (i10 != i9) {
                    throw new InternalError("unable to fully read random source");
                }
            }
            return bArr;
        }

        @Override // java.security.SecureRandom, java.util.Random
        public void setSeed(long j10) {
        }

        @Override // java.security.SecureRandom
        public void setSeed(byte[] bArr) {
        }
    }

    static /* synthetic */ SecureRandom a() {
        return e();
    }

    static /* synthetic */ SecureRandom c() {
        return g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SecureRandom d(boolean z10) {
        if (h.a("org.bouncycastle.drbg.entropysource") == null) {
            f fVar = new f();
            byte[] generateSeed = fVar.generateSeed(16);
            return new org.bouncycastle.crypto.prng.f(fVar, true).g(z10 ? i(generateSeed) : j(generateSeed)).d(new rj.h(), fVar.generateSeed(32), z10);
        }
        org.bouncycastle.crypto.prng.d f10 = f();
        org.bouncycastle.crypto.prng.c cVar = f10.get(128);
        byte[] a10 = cVar.a();
        return new org.bouncycastle.crypto.prng.f(f10).g(z10 ? i(a10) : j(a10)).d(new rj.h(), org.bouncycastle.util.a.j(cVar.a(), cVar.a()), z10);
    }

    private static SecureRandom e() {
        if (Security.getProperty("securerandom.source") == null) {
            return new d(h());
        }
        try {
            return new g(new URL(Security.getProperty("securerandom.source")));
        } catch (Exception unused) {
            return new d(h());
        }
    }

    private static org.bouncycastle.crypto.prng.d f() {
        return (org.bouncycastle.crypto.prng.d) AccessController.doPrivileged(new c(h.a("org.bouncycastle.drbg.entropysource")));
    }

    private static SecureRandom g() {
        return ((Boolean) AccessController.doPrivileged(new a())).booleanValue() ? (SecureRandom) AccessController.doPrivileged(new b()) : e();
    }

    private static final Object[] h() {
        int i9 = 0;
        while (true) {
            String[][] strArr = f56064a;
            if (i9 >= strArr.length) {
                return null;
            }
            String[] strArr2 = strArr[i9];
            try {
                return new Object[]{Class.forName(strArr2[0]).newInstance(), Class.forName(strArr2[1]).newInstance()};
            } catch (Throwable unused) {
                i9++;
            }
        }
    }

    private static byte[] i(byte[] bArr) {
        return org.bouncycastle.util.a.l(i.e("Default"), bArr, org.bouncycastle.util.g.j(Thread.currentThread().getId()), org.bouncycastle.util.g.j(System.currentTimeMillis()));
    }

    private static byte[] j(byte[] bArr) {
        return org.bouncycastle.util.a.l(i.e("Nonce"), bArr, org.bouncycastle.util.g.m(Thread.currentThread().getId()), org.bouncycastle.util.g.m(System.currentTimeMillis()));
    }
}
