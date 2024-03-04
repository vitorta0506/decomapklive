package bc;

import android.os.Build;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f1242a = false;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f1243b = true;

    /* JADX WARN: Removed duplicated region for block: B:23:0x001b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.security.SecureRandom a() {
        /*
            java.lang.String r0 = "EncryptUtil"
            java.lang.String r1 = "generateSecureRandomNew "
            bc.f.b(r0, r1)
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.security.NoSuchAlgorithmException -> L12
            r2 = 26
            if (r1 < r2) goto L17
            java.security.SecureRandom r1 = java.security.SecureRandom.getInstanceStrong()     // Catch: java.security.NoSuchAlgorithmException -> L12
            goto L18
        L12:
            java.lang.String r1 = "getSecureRandomBytes: NoSuchAlgorithmException"
            bc.f.c(r0, r1)
        L17:
            r1 = 0
        L18:
            r2 = 0
            if (r1 != 0) goto L24
            java.lang.String r3 = "SHA1PRNG"
            java.security.SecureRandom r1 = java.security.SecureRandom.getInstance(r3)     // Catch: java.lang.Throwable -> L22 java.security.NoSuchAlgorithmException -> L67
            goto L24
        L22:
            r3 = move-exception
            goto L43
        L24:
            r3 = 1
            tj.a r4 = new tj.a     // Catch: java.lang.Throwable -> L22 java.security.NoSuchAlgorithmException -> L67
            r4.<init>()     // Catch: java.lang.Throwable -> L22 java.security.NoSuchAlgorithmException -> L67
            r5 = 256(0x100, float:3.59E-43)
            r6 = 384(0x180, float:5.38E-43)
            r7 = 32
            byte[] r7 = new byte[r7]     // Catch: java.lang.Throwable -> L22 java.security.NoSuchAlgorithmException -> L67
            r1.nextBytes(r7)     // Catch: java.lang.Throwable -> L22 java.security.NoSuchAlgorithmException -> L67
            org.bouncycastle.crypto.prng.f r8 = new org.bouncycastle.crypto.prng.f     // Catch: java.lang.Throwable -> L22 java.security.NoSuchAlgorithmException -> L67
            r8.<init>(r1, r3)     // Catch: java.lang.Throwable -> L22 java.security.NoSuchAlgorithmException -> L67
            org.bouncycastle.crypto.prng.f r3 = r8.f(r6)     // Catch: java.lang.Throwable -> L22 java.security.NoSuchAlgorithmException -> L67
            org.bouncycastle.crypto.prng.SP800SecureRandom r0 = r3.b(r4, r5, r7, r2)     // Catch: java.lang.Throwable -> L22 java.security.NoSuchAlgorithmException -> L67
            return r0
        L43:
            boolean r4 = bc.b.f1243b
            if (r4 == 0) goto L6c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "exception : "
            r4.append(r5)
            java.lang.String r3 = r3.getMessage()
            r4.append(r3)
            java.lang.String r3 = " , you should implementation bcprov-jdk15on library"
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            bc.f.c(r0, r3)
            bc.b.f1243b = r2
            goto L6c
        L67:
            java.lang.String r2 = "NoSuchAlgorithmException"
            bc.f.c(r0, r2)
        L6c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: bc.b.a():java.security.SecureRandom");
    }

    private static byte[] b(int i9) {
        SecureRandom a10 = a();
        if (a10 == null) {
            return new byte[0];
        }
        byte[] bArr = new byte[i9];
        a10.nextBytes(bArr);
        return bArr;
    }

    public static byte[] c(int i9) {
        if (!f1242a) {
            byte[] bArr = new byte[i9];
            SecureRandom secureRandom = null;
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    secureRandom = SecureRandom.getInstanceStrong();
                }
            } catch (NoSuchAlgorithmException unused) {
                f.c("EncryptUtil", "getSecureRandomBytes: NoSuchAlgorithmException");
            }
            if (secureRandom == null) {
                try {
                    secureRandom = SecureRandom.getInstance("SHA1PRNG");
                } catch (NoSuchAlgorithmException unused2) {
                    f.c("EncryptUtil", "getSecureRandomBytes getInstance: NoSuchAlgorithmException");
                    return new byte[0];
                } catch (Exception e10) {
                    f.c("EncryptUtil", "getSecureRandomBytes getInstance: exception : " + e10.getMessage());
                    return new byte[0];
                }
            }
            secureRandom.nextBytes(bArr);
            return bArr;
        }
        return b(i9);
    }

    public static String d(int i9) {
        return c.a(c(i9));
    }
}
