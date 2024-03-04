package io.grpc.netty.shaded.io.netty.internal.tcnative;
/* loaded from: classes5.dex */
public final class SSL {

    /* renamed from: a  reason: collision with root package name */
    public static final int f44934a = NativeStaticallyReferencedJniMethods.sslOpCipherServerPreference();

    /* renamed from: b  reason: collision with root package name */
    public static final int f44935b = NativeStaticallyReferencedJniMethods.sslOpNoSSLv2();

    /* renamed from: c  reason: collision with root package name */
    public static final int f44936c = NativeStaticallyReferencedJniMethods.sslOpNoSSLv3();

    /* renamed from: d  reason: collision with root package name */
    public static final int f44937d = NativeStaticallyReferencedJniMethods.sslOpNoTLSv1();

    /* renamed from: e  reason: collision with root package name */
    public static final int f44938e = NativeStaticallyReferencedJniMethods.sslOpNoTLSv11();

    /* renamed from: f  reason: collision with root package name */
    public static final int f44939f = NativeStaticallyReferencedJniMethods.sslOpNoTLSv12();

    /* renamed from: g  reason: collision with root package name */
    public static final int f44940g = NativeStaticallyReferencedJniMethods.sslOpNoTLSv13();

    /* renamed from: h  reason: collision with root package name */
    public static final int f44941h = NativeStaticallyReferencedJniMethods.sslOpNoTicket();

    /* renamed from: i  reason: collision with root package name */
    public static final int f44942i = NativeStaticallyReferencedJniMethods.sslOpNoCompression();

    /* renamed from: j  reason: collision with root package name */
    public static final long f44943j = NativeStaticallyReferencedJniMethods.sslSessCacheOff();

    /* renamed from: k  reason: collision with root package name */
    public static final long f44944k = NativeStaticallyReferencedJniMethods.sslSessCacheServer();

    /* renamed from: l  reason: collision with root package name */
    public static final long f44945l = NativeStaticallyReferencedJniMethods.sslSessCacheClient();

    /* renamed from: m  reason: collision with root package name */
    public static final long f44946m = NativeStaticallyReferencedJniMethods.sslSessCacheNoInternalLookup();

    /* renamed from: n  reason: collision with root package name */
    public static final long f44947n = NativeStaticallyReferencedJniMethods.sslSessCacheNoInternalStore();

    /* renamed from: o  reason: collision with root package name */
    public static final int f44948o = NativeStaticallyReferencedJniMethods.sslStConnect();

    /* renamed from: p  reason: collision with root package name */
    public static final int f44949p = NativeStaticallyReferencedJniMethods.sslStAccept();

    /* renamed from: q  reason: collision with root package name */
    public static final int f44950q = NativeStaticallyReferencedJniMethods.sslModeEnablePartialWrite();

    /* renamed from: r  reason: collision with root package name */
    public static final int f44951r = NativeStaticallyReferencedJniMethods.sslModeAcceptMovingWriteBuffer();

    /* renamed from: s  reason: collision with root package name */
    public static final int f44952s = NativeStaticallyReferencedJniMethods.sslModeReleaseBuffers();

    /* renamed from: t  reason: collision with root package name */
    public static final int f44953t = NativeStaticallyReferencedJniMethods.sslModeEnableFalseStart();

    /* renamed from: u  reason: collision with root package name */
    public static final int f44954u = NativeStaticallyReferencedJniMethods.sslMaxPlaintextLength();

    /* renamed from: v  reason: collision with root package name */
    public static final int f44955v = NativeStaticallyReferencedJniMethods.sslMaxRecordLength();

    /* renamed from: w  reason: collision with root package name */
    public static final int f44956w = NativeStaticallyReferencedJniMethods.x509CheckFlagAlwaysCheckSubject();

    /* renamed from: x  reason: collision with root package name */
    public static final int f44957x = NativeStaticallyReferencedJniMethods.x509CheckFlagDisableWildCards();

    /* renamed from: y  reason: collision with root package name */
    public static final int f44958y = NativeStaticallyReferencedJniMethods.x509CheckFlagNoPartialWildCards();

    /* renamed from: z  reason: collision with root package name */
    public static final int f44959z = NativeStaticallyReferencedJniMethods.x509CheckFlagMultiLabelWildCards();
    public static final int A = NativeStaticallyReferencedJniMethods.sslRenegotiateNever();
    public static final int B = NativeStaticallyReferencedJniMethods.sslRenegotiateOnce();
    public static final int C = NativeStaticallyReferencedJniMethods.sslRenegotiateFreely();
    public static final int D = NativeStaticallyReferencedJniMethods.sslRenegotiateIgnore();
    public static final int E = NativeStaticallyReferencedJniMethods.sslRenegotiateExplicit();
    public static final int F = NativeStaticallyReferencedJniMethods.sslSendShutdown();
    public static final int G = NativeStaticallyReferencedJniMethods.sslReceivedShutdown();
    public static final int H = NativeStaticallyReferencedJniMethods.sslErrorNone();
    public static final int I = NativeStaticallyReferencedJniMethods.sslErrorSSL();
    public static final int J = NativeStaticallyReferencedJniMethods.sslErrorWantRead();
    public static final int K = NativeStaticallyReferencedJniMethods.sslErrorWantWrite();
    public static final int L = NativeStaticallyReferencedJniMethods.sslErrorWantX509Lookup();
    public static final int M = NativeStaticallyReferencedJniMethods.sslErrorSyscall();
    public static final int N = NativeStaticallyReferencedJniMethods.sslErrorZeroReturn();
    public static final int O = NativeStaticallyReferencedJniMethods.sslErrorWantConnect();
    public static final int P = NativeStaticallyReferencedJniMethods.sslErrorWantAccept();
    public static final int Q = NativeStaticallyReferencedJniMethods.sslErrorWantPrivateKeyOperation();
    public static final int R = NativeStaticallyReferencedJniMethods.sslErrorWantCertificateVerify();

    public static void a(long j10, String str) {
        if (str != null && str.endsWith(".")) {
            str = str.substring(0, str.length() - 1);
        }
        setTlsExtHostName0(j10, str);
    }

    public static native String[] authenticationMethods(long j10);

    public static native void bioClearByteBuffer(long j10);

    public static native int bioFlushByteBuffer(long j10);

    public static native int bioLengthByteBuffer(long j10);

    public static native int bioLengthNonApplication(long j10);

    public static native long bioNewByteBuffer(long j10, int i9);

    public static native void bioSetByteBuffer(long j10, long j11, int i9, boolean z10);

    public static native int bioWrite(long j10, long j11, int i9);

    public static native void clearError();

    public static native void clearOptions(long j10, int i9);

    public static native int doHandshake(long j10);

    public static native void enableOcsp(long j10);

    public static native void freeBIO(long j10);

    public static native void freePrivateKey(long j10);

    public static native void freeSSL(long j10);

    public static native void freeX509Chain(long j10);

    public static native String getAlpnSelected(long j10);

    public static native String getCipherForSSL(long j10);

    public static native String[] getCiphers(long j10);

    public static native int getError(long j10, int i9);

    public static native String getErrorString(long j10);

    public static native int getHandshakeCount(long j10);

    public static native int getLastErrorNumber();

    public static native int getMaxWrapOverhead(long j10);

    public static native int getMode(long j10);

    public static native String getNextProtoNegotiated(long j10);

    public static native int getOptions(long j10);

    public static native byte[][] getPeerCertChain(long j10);

    public static native byte[] getPeerCertificate(long j10);

    public static native byte[] getSessionId(long j10);

    public static native int getShutdown(long j10);

    public static native String[] getSigAlgs(long j10);

    public static native String getSniHostname(long j10);

    public static native Runnable getTask(long j10);

    public static native long getTime(long j10);

    public static native String getVersion(long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int initialize(String str);

    public static native int isInInit(long j10);

    public static native long newMemBIO() throws Exception;

    public static native long newSSL(long j10, boolean z10);

    public static native long parsePrivateKey(long j10, String str) throws Exception;

    public static native long parseX509Chain(long j10) throws Exception;

    public static native int readFromSSL(long j10, long j11, int i9);

    public static native boolean setCipherSuites(long j10, String str, boolean z10) throws Exception;

    public static native void setKeyMaterial(long j10, long j11, long j12) throws Exception;

    public static native int setMode(long j10, int i9);

    public static native void setOptions(long j10, int i9);

    public static native void setRenegotiateMode(long j10, int i9) throws Exception;

    public static native boolean setSession(long j10, long j11);

    private static native void setTlsExtHostName0(long j10, String str);

    public static native void setVerify(long j10, int i9, int i10);

    public static native int shutdownSSL(long j10);

    public static native int sslPending(long j10);

    public static native int version();

    public static native String versionString();

    public static native int writeToSSL(long j10, long j11, int i9);
}
