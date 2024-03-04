package io.grpc.netty.shaded.io.netty.internal.tcnative;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class SSLContext {
    private SSLContext() {
    }

    private static byte[] a(String[] strArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                for (String str : strArr) {
                    byte[] bytes = str.getBytes(StandardCharsets.US_ASCII);
                    if (bytes.length <= 65535) {
                        byteArrayOutputStream.write(bytes.length);
                        byteArrayOutputStream.write(bytes);
                    }
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                } catch (IOException unused) {
                }
                return byteArray;
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (IOException unused2) {
            }
            throw th2;
        }
    }

    public static void b(long j10, String[] strArr, int i9) {
        setAlpnProtos0(j10, a(strArr), i9);
    }

    public static boolean c(long j10, String... strArr) {
        Objects.requireNonNull(strArr, "curves");
        if (strArr.length != 0) {
            StringBuilder sb2 = new StringBuilder();
            for (String str : strArr) {
                sb2.append(str);
                sb2.append(':');
            }
            sb2.setLength(sb2.length() - 1);
            return setCurvesList0(j10, sb2.toString());
        }
        throw new IllegalArgumentException();
    }

    public static native void clearOptions(long j10, int i9);

    public static void d(long j10, String[] strArr, int i9) {
        setNpnProtos0(j10, a(strArr), i9);
    }

    public static native void disableOcsp(long j10);

    public static void e(long j10, AsyncSSLPrivateKeyMethod asyncSSLPrivateKeyMethod) {
        setPrivateKeyMethod0(j10, asyncSSLPrivateKeyMethod);
    }

    public static native void enableOcsp(long j10, boolean z10);

    public static void f(long j10, rg.c cVar) {
        e(j10, new a(cVar));
    }

    public static native int free(long j10);

    public static void g(long j10, rg.d[] dVarArr) {
        if (dVarArr != null && dVarArr.length != 0) {
            byte[] bArr = new byte[dVarArr.length * 48];
            if (dVarArr.length <= 0) {
                setSessionTicketKeys0(j10, bArr);
                return;
            } else {
                rg.d dVar = dVarArr[0];
                throw null;
            }
        }
        throw new IllegalArgumentException("Length of the keys should be longer than 0.");
    }

    public static native int getMode(long j10);

    public static native int getOptions(long j10);

    public static native long make(int i9, int i10) throws Exception;

    private static native void setAlpnProtos0(long j10, byte[] bArr, int i9);

    public static native boolean setCACertificateBio(long j10, long j11);

    public static native void setCertVerifyCallback(long j10, CertificateVerifier certificateVerifier);

    public static native boolean setCertificateBio(long j10, long j11, long j12, String str) throws Exception;

    public static native void setCertificateCallback(long j10, CertificateCallback certificateCallback);

    public static native boolean setCertificateChainBio(long j10, long j11, boolean z10);

    public static native boolean setCipherSuite(long j10, String str, boolean z10) throws Exception;

    private static native boolean setCurvesList0(long j10, String str);

    public static native int setMode(long j10, int i9);

    private static native void setNpnProtos0(long j10, byte[] bArr, int i9);

    public static native void setOptions(long j10, int i9);

    private static native void setPrivateKeyMethod0(long j10, AsyncSSLPrivateKeyMethod asyncSSLPrivateKeyMethod);

    public static native void setSSLSessionCache(long j10, SSLSessionCache sSLSessionCache);

    public static native long setSessionCacheMode(long j10, long j11);

    public static native long setSessionCacheTimeout(long j10, long j11);

    public static native boolean setSessionIdContext(long j10, byte[] bArr);

    private static native void setSessionTicketKeys0(long j10, byte[] bArr);

    public static native void setSniHostnameMatcher(long j10, SniHostNameMatcher sniHostNameMatcher);

    public static native void setTmpDHLength(long j10, int i9);

    public static native void setUseTasks(long j10, boolean z10);

    public static native void setVerify(long j10, int i9, int i10);
}
