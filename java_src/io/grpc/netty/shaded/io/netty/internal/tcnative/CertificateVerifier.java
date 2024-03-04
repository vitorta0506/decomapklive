package io.grpc.netty.shaded.io.netty.internal.tcnative;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes5.dex */
public abstract class CertificateVerifier {
    public static final int A;
    public static final int B;
    public static final int C;
    public static final int D;
    public static final int E;
    public static final int F;
    public static final int G;
    public static final int H;
    public static final int I;
    public static final int J;
    public static final int K;
    public static final int L;
    public static final int M;
    public static final int N;
    public static final int O;
    public static final int P;
    public static final int Q;
    public static final int R;
    public static final int S;
    public static final int T;
    public static final int U;
    public static final int V;
    public static final int W;
    public static final int X;
    public static final int Y;
    public static final int Z;

    /* renamed from: a  reason: collision with root package name */
    public static final int f44891a;

    /* renamed from: a0  reason: collision with root package name */
    public static final int f44892a0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f44893b;

    /* renamed from: b0  reason: collision with root package name */
    public static final int f44894b0;

    /* renamed from: c  reason: collision with root package name */
    public static final int f44895c;

    /* renamed from: c0  reason: collision with root package name */
    public static final int f44896c0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f44897d;

    /* renamed from: d0  reason: collision with root package name */
    public static final int f44898d0;

    /* renamed from: e  reason: collision with root package name */
    public static final int f44899e;

    /* renamed from: e0  reason: collision with root package name */
    public static final int f44900e0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f44901f;

    /* renamed from: f0  reason: collision with root package name */
    public static final int f44902f0;

    /* renamed from: g  reason: collision with root package name */
    public static final int f44903g;

    /* renamed from: g0  reason: collision with root package name */
    public static final int f44904g0;

    /* renamed from: h  reason: collision with root package name */
    public static final int f44905h;

    /* renamed from: h0  reason: collision with root package name */
    public static final int f44906h0;

    /* renamed from: i  reason: collision with root package name */
    public static final int f44907i;

    /* renamed from: i0  reason: collision with root package name */
    public static final int f44908i0;

    /* renamed from: j  reason: collision with root package name */
    public static final int f44909j;

    /* renamed from: j0  reason: collision with root package name */
    public static final int f44910j0;

    /* renamed from: k  reason: collision with root package name */
    public static final int f44911k;

    /* renamed from: k0  reason: collision with root package name */
    public static final int f44912k0;

    /* renamed from: l  reason: collision with root package name */
    public static final int f44913l;

    /* renamed from: l0  reason: collision with root package name */
    public static final int f44914l0;

    /* renamed from: m  reason: collision with root package name */
    public static final int f44915m;

    /* renamed from: m0  reason: collision with root package name */
    public static final int f44916m0;

    /* renamed from: n  reason: collision with root package name */
    public static final int f44917n;

    /* renamed from: n0  reason: collision with root package name */
    public static final int f44918n0;

    /* renamed from: o  reason: collision with root package name */
    public static final int f44919o;

    /* renamed from: o0  reason: collision with root package name */
    private static final Set<Integer> f44920o0;

    /* renamed from: p  reason: collision with root package name */
    public static final int f44921p;

    /* renamed from: q  reason: collision with root package name */
    public static final int f44922q;

    /* renamed from: r  reason: collision with root package name */
    public static final int f44923r;

    /* renamed from: s  reason: collision with root package name */
    public static final int f44924s;

    /* renamed from: t  reason: collision with root package name */
    public static final int f44925t;

    /* renamed from: u  reason: collision with root package name */
    public static final int f44926u;

    /* renamed from: v  reason: collision with root package name */
    public static final int f44927v;

    /* renamed from: w  reason: collision with root package name */
    public static final int f44928w;

    /* renamed from: x  reason: collision with root package name */
    public static final int f44929x;

    /* renamed from: y  reason: collision with root package name */
    public static final int f44930y;

    /* renamed from: z  reason: collision with root package name */
    public static final int f44931z;

    static {
        int x509vOK = NativeStaticallyReferencedJniMethods.x509vOK();
        f44891a = x509vOK;
        int x509vErrUnspecified = NativeStaticallyReferencedJniMethods.x509vErrUnspecified();
        f44893b = x509vErrUnspecified;
        int x509vErrUnableToGetIssuerCert = NativeStaticallyReferencedJniMethods.x509vErrUnableToGetIssuerCert();
        f44895c = x509vErrUnableToGetIssuerCert;
        int x509vErrUnableToGetCrl = NativeStaticallyReferencedJniMethods.x509vErrUnableToGetCrl();
        f44897d = x509vErrUnableToGetCrl;
        int x509vErrUnableToDecryptCertSignature = NativeStaticallyReferencedJniMethods.x509vErrUnableToDecryptCertSignature();
        f44899e = x509vErrUnableToDecryptCertSignature;
        int x509vErrUnableToDecryptCrlSignature = NativeStaticallyReferencedJniMethods.x509vErrUnableToDecryptCrlSignature();
        f44901f = x509vErrUnableToDecryptCrlSignature;
        int x509vErrUnableToDecodeIssuerPublicKey = NativeStaticallyReferencedJniMethods.x509vErrUnableToDecodeIssuerPublicKey();
        f44903g = x509vErrUnableToDecodeIssuerPublicKey;
        int x509vErrCertSignatureFailure = NativeStaticallyReferencedJniMethods.x509vErrCertSignatureFailure();
        f44905h = x509vErrCertSignatureFailure;
        int x509vErrCrlSignatureFailure = NativeStaticallyReferencedJniMethods.x509vErrCrlSignatureFailure();
        f44907i = x509vErrCrlSignatureFailure;
        int x509vErrCertNotYetValid = NativeStaticallyReferencedJniMethods.x509vErrCertNotYetValid();
        f44909j = x509vErrCertNotYetValid;
        int x509vErrCertHasExpired = NativeStaticallyReferencedJniMethods.x509vErrCertHasExpired();
        f44911k = x509vErrCertHasExpired;
        int x509vErrCrlNotYetValid = NativeStaticallyReferencedJniMethods.x509vErrCrlNotYetValid();
        f44913l = x509vErrCrlNotYetValid;
        int x509vErrCrlHasExpired = NativeStaticallyReferencedJniMethods.x509vErrCrlHasExpired();
        f44915m = x509vErrCrlHasExpired;
        int x509vErrErrorInCertNotBeforeField = NativeStaticallyReferencedJniMethods.x509vErrErrorInCertNotBeforeField();
        f44917n = x509vErrErrorInCertNotBeforeField;
        int x509vErrErrorInCertNotAfterField = NativeStaticallyReferencedJniMethods.x509vErrErrorInCertNotAfterField();
        f44919o = x509vErrErrorInCertNotAfterField;
        int x509vErrErrorInCrlLastUpdateField = NativeStaticallyReferencedJniMethods.x509vErrErrorInCrlLastUpdateField();
        f44921p = x509vErrErrorInCrlLastUpdateField;
        int x509vErrErrorInCrlNextUpdateField = NativeStaticallyReferencedJniMethods.x509vErrErrorInCrlNextUpdateField();
        f44922q = x509vErrErrorInCrlNextUpdateField;
        int x509vErrOutOfMem = NativeStaticallyReferencedJniMethods.x509vErrOutOfMem();
        f44923r = x509vErrOutOfMem;
        int x509vErrDepthZeroSelfSignedCert = NativeStaticallyReferencedJniMethods.x509vErrDepthZeroSelfSignedCert();
        f44924s = x509vErrDepthZeroSelfSignedCert;
        int x509vErrSelfSignedCertInChain = NativeStaticallyReferencedJniMethods.x509vErrSelfSignedCertInChain();
        f44925t = x509vErrSelfSignedCertInChain;
        int x509vErrUnableToGetIssuerCertLocally = NativeStaticallyReferencedJniMethods.x509vErrUnableToGetIssuerCertLocally();
        f44926u = x509vErrUnableToGetIssuerCertLocally;
        int x509vErrUnableToVerifyLeafSignature = NativeStaticallyReferencedJniMethods.x509vErrUnableToVerifyLeafSignature();
        f44927v = x509vErrUnableToVerifyLeafSignature;
        int x509vErrCertChainTooLong = NativeStaticallyReferencedJniMethods.x509vErrCertChainTooLong();
        f44928w = x509vErrCertChainTooLong;
        int x509vErrCertRevoked = NativeStaticallyReferencedJniMethods.x509vErrCertRevoked();
        f44929x = x509vErrCertRevoked;
        int x509vErrInvalidCa = NativeStaticallyReferencedJniMethods.x509vErrInvalidCa();
        f44930y = x509vErrInvalidCa;
        int x509vErrPathLengthExceeded = NativeStaticallyReferencedJniMethods.x509vErrPathLengthExceeded();
        f44931z = x509vErrPathLengthExceeded;
        int x509vErrInvalidPurpose = NativeStaticallyReferencedJniMethods.x509vErrInvalidPurpose();
        A = x509vErrInvalidPurpose;
        int x509vErrCertUntrusted = NativeStaticallyReferencedJniMethods.x509vErrCertUntrusted();
        B = x509vErrCertUntrusted;
        int x509vErrCertRejected = NativeStaticallyReferencedJniMethods.x509vErrCertRejected();
        C = x509vErrCertRejected;
        int x509vErrSubjectIssuerMismatch = NativeStaticallyReferencedJniMethods.x509vErrSubjectIssuerMismatch();
        D = x509vErrSubjectIssuerMismatch;
        int x509vErrAkidSkidMismatch = NativeStaticallyReferencedJniMethods.x509vErrAkidSkidMismatch();
        E = x509vErrAkidSkidMismatch;
        int x509vErrAkidIssuerSerialMismatch = NativeStaticallyReferencedJniMethods.x509vErrAkidIssuerSerialMismatch();
        F = x509vErrAkidIssuerSerialMismatch;
        int x509vErrKeyUsageNoCertSign = NativeStaticallyReferencedJniMethods.x509vErrKeyUsageNoCertSign();
        G = x509vErrKeyUsageNoCertSign;
        int x509vErrUnableToGetCrlIssuer = NativeStaticallyReferencedJniMethods.x509vErrUnableToGetCrlIssuer();
        H = x509vErrUnableToGetCrlIssuer;
        int x509vErrUnhandledCriticalExtension = NativeStaticallyReferencedJniMethods.x509vErrUnhandledCriticalExtension();
        I = x509vErrUnhandledCriticalExtension;
        int x509vErrKeyUsageNoCrlSign = NativeStaticallyReferencedJniMethods.x509vErrKeyUsageNoCrlSign();
        J = x509vErrKeyUsageNoCrlSign;
        int x509vErrUnhandledCriticalCrlExtension = NativeStaticallyReferencedJniMethods.x509vErrUnhandledCriticalCrlExtension();
        K = x509vErrUnhandledCriticalCrlExtension;
        int x509vErrInvalidNonCa = NativeStaticallyReferencedJniMethods.x509vErrInvalidNonCa();
        L = x509vErrInvalidNonCa;
        int x509vErrProxyPathLengthExceeded = NativeStaticallyReferencedJniMethods.x509vErrProxyPathLengthExceeded();
        M = x509vErrProxyPathLengthExceeded;
        int x509vErrKeyUsageNoDigitalSignature = NativeStaticallyReferencedJniMethods.x509vErrKeyUsageNoDigitalSignature();
        N = x509vErrKeyUsageNoDigitalSignature;
        int x509vErrProxyCertificatesNotAllowed = NativeStaticallyReferencedJniMethods.x509vErrProxyCertificatesNotAllowed();
        O = x509vErrProxyCertificatesNotAllowed;
        int x509vErrInvalidExtension = NativeStaticallyReferencedJniMethods.x509vErrInvalidExtension();
        P = x509vErrInvalidExtension;
        int x509vErrInvalidPolicyExtension = NativeStaticallyReferencedJniMethods.x509vErrInvalidPolicyExtension();
        Q = x509vErrInvalidPolicyExtension;
        int x509vErrNoExplicitPolicy = NativeStaticallyReferencedJniMethods.x509vErrNoExplicitPolicy();
        R = x509vErrNoExplicitPolicy;
        int x509vErrDifferntCrlScope = NativeStaticallyReferencedJniMethods.x509vErrDifferntCrlScope();
        S = x509vErrDifferntCrlScope;
        int x509vErrUnsupportedExtensionFeature = NativeStaticallyReferencedJniMethods.x509vErrUnsupportedExtensionFeature();
        T = x509vErrUnsupportedExtensionFeature;
        int x509vErrUnnestedResource = NativeStaticallyReferencedJniMethods.x509vErrUnnestedResource();
        U = x509vErrUnnestedResource;
        int x509vErrPermittedViolation = NativeStaticallyReferencedJniMethods.x509vErrPermittedViolation();
        V = x509vErrPermittedViolation;
        int x509vErrExcludedViolation = NativeStaticallyReferencedJniMethods.x509vErrExcludedViolation();
        W = x509vErrExcludedViolation;
        int x509vErrSubtreeMinMax = NativeStaticallyReferencedJniMethods.x509vErrSubtreeMinMax();
        X = x509vErrSubtreeMinMax;
        int x509vErrApplicationVerification = NativeStaticallyReferencedJniMethods.x509vErrApplicationVerification();
        Y = x509vErrApplicationVerification;
        int x509vErrUnsupportedConstraintType = NativeStaticallyReferencedJniMethods.x509vErrUnsupportedConstraintType();
        Z = x509vErrUnsupportedConstraintType;
        int x509vErrUnsupportedConstraintSyntax = NativeStaticallyReferencedJniMethods.x509vErrUnsupportedConstraintSyntax();
        f44892a0 = x509vErrUnsupportedConstraintSyntax;
        int x509vErrUnsupportedNameSyntax = NativeStaticallyReferencedJniMethods.x509vErrUnsupportedNameSyntax();
        f44894b0 = x509vErrUnsupportedNameSyntax;
        int x509vErrCrlPathValidationError = NativeStaticallyReferencedJniMethods.x509vErrCrlPathValidationError();
        f44896c0 = x509vErrCrlPathValidationError;
        int x509vErrPathLoop = NativeStaticallyReferencedJniMethods.x509vErrPathLoop();
        f44898d0 = x509vErrPathLoop;
        int x509vErrSuiteBInvalidVersion = NativeStaticallyReferencedJniMethods.x509vErrSuiteBInvalidVersion();
        f44900e0 = x509vErrSuiteBInvalidVersion;
        int x509vErrSuiteBInvalidAlgorithm = NativeStaticallyReferencedJniMethods.x509vErrSuiteBInvalidAlgorithm();
        f44902f0 = x509vErrSuiteBInvalidAlgorithm;
        int x509vErrSuiteBInvalidCurve = NativeStaticallyReferencedJniMethods.x509vErrSuiteBInvalidCurve();
        f44904g0 = x509vErrSuiteBInvalidCurve;
        int x509vErrSuiteBInvalidSignatureAlgorithm = NativeStaticallyReferencedJniMethods.x509vErrSuiteBInvalidSignatureAlgorithm();
        f44906h0 = x509vErrSuiteBInvalidSignatureAlgorithm;
        int x509vErrSuiteBLosNotAllowed = NativeStaticallyReferencedJniMethods.x509vErrSuiteBLosNotAllowed();
        f44908i0 = x509vErrSuiteBLosNotAllowed;
        int x509vErrSuiteBCannotSignP384WithP256 = NativeStaticallyReferencedJniMethods.x509vErrSuiteBCannotSignP384WithP256();
        f44910j0 = x509vErrSuiteBCannotSignP384WithP256;
        int x509vErrHostnameMismatch = NativeStaticallyReferencedJniMethods.x509vErrHostnameMismatch();
        f44912k0 = x509vErrHostnameMismatch;
        int x509vErrEmailMismatch = NativeStaticallyReferencedJniMethods.x509vErrEmailMismatch();
        f44914l0 = x509vErrEmailMismatch;
        int x509vErrIpAddressMismatch = NativeStaticallyReferencedJniMethods.x509vErrIpAddressMismatch();
        f44916m0 = x509vErrIpAddressMismatch;
        int x509vErrDaneNoMatch = NativeStaticallyReferencedJniMethods.x509vErrDaneNoMatch();
        f44918n0 = x509vErrDaneNoMatch;
        HashSet hashSet = new HashSet();
        hashSet.add(Integer.valueOf(x509vOK));
        hashSet.add(Integer.valueOf(x509vErrUnspecified));
        hashSet.add(Integer.valueOf(x509vErrUnableToGetIssuerCert));
        hashSet.add(Integer.valueOf(x509vErrUnableToGetCrl));
        hashSet.add(Integer.valueOf(x509vErrUnableToDecryptCertSignature));
        hashSet.add(Integer.valueOf(x509vErrUnableToDecryptCrlSignature));
        hashSet.add(Integer.valueOf(x509vErrUnableToDecodeIssuerPublicKey));
        hashSet.add(Integer.valueOf(x509vErrCertSignatureFailure));
        hashSet.add(Integer.valueOf(x509vErrCrlSignatureFailure));
        hashSet.add(Integer.valueOf(x509vErrCertNotYetValid));
        hashSet.add(Integer.valueOf(x509vErrCertHasExpired));
        hashSet.add(Integer.valueOf(x509vErrCrlNotYetValid));
        hashSet.add(Integer.valueOf(x509vErrCrlHasExpired));
        hashSet.add(Integer.valueOf(x509vErrErrorInCertNotBeforeField));
        hashSet.add(Integer.valueOf(x509vErrErrorInCertNotAfterField));
        hashSet.add(Integer.valueOf(x509vErrErrorInCrlLastUpdateField));
        hashSet.add(Integer.valueOf(x509vErrErrorInCrlNextUpdateField));
        hashSet.add(Integer.valueOf(x509vErrOutOfMem));
        hashSet.add(Integer.valueOf(x509vErrDepthZeroSelfSignedCert));
        hashSet.add(Integer.valueOf(x509vErrSelfSignedCertInChain));
        hashSet.add(Integer.valueOf(x509vErrUnableToGetIssuerCertLocally));
        hashSet.add(Integer.valueOf(x509vErrUnableToVerifyLeafSignature));
        hashSet.add(Integer.valueOf(x509vErrCertChainTooLong));
        hashSet.add(Integer.valueOf(x509vErrCertRevoked));
        hashSet.add(Integer.valueOf(x509vErrInvalidCa));
        hashSet.add(Integer.valueOf(x509vErrPathLengthExceeded));
        hashSet.add(Integer.valueOf(x509vErrInvalidPurpose));
        hashSet.add(Integer.valueOf(x509vErrCertUntrusted));
        hashSet.add(Integer.valueOf(x509vErrCertRejected));
        hashSet.add(Integer.valueOf(x509vErrSubjectIssuerMismatch));
        hashSet.add(Integer.valueOf(x509vErrAkidSkidMismatch));
        hashSet.add(Integer.valueOf(x509vErrAkidIssuerSerialMismatch));
        hashSet.add(Integer.valueOf(x509vErrKeyUsageNoCertSign));
        hashSet.add(Integer.valueOf(x509vErrUnableToGetCrlIssuer));
        hashSet.add(Integer.valueOf(x509vErrUnhandledCriticalExtension));
        hashSet.add(Integer.valueOf(x509vErrKeyUsageNoCrlSign));
        hashSet.add(Integer.valueOf(x509vErrUnhandledCriticalCrlExtension));
        hashSet.add(Integer.valueOf(x509vErrInvalidNonCa));
        hashSet.add(Integer.valueOf(x509vErrProxyPathLengthExceeded));
        hashSet.add(Integer.valueOf(x509vErrKeyUsageNoDigitalSignature));
        hashSet.add(Integer.valueOf(x509vErrProxyCertificatesNotAllowed));
        hashSet.add(Integer.valueOf(x509vErrInvalidExtension));
        hashSet.add(Integer.valueOf(x509vErrInvalidPolicyExtension));
        hashSet.add(Integer.valueOf(x509vErrNoExplicitPolicy));
        hashSet.add(Integer.valueOf(x509vErrDifferntCrlScope));
        hashSet.add(Integer.valueOf(x509vErrUnsupportedExtensionFeature));
        hashSet.add(Integer.valueOf(x509vErrUnnestedResource));
        hashSet.add(Integer.valueOf(x509vErrPermittedViolation));
        hashSet.add(Integer.valueOf(x509vErrExcludedViolation));
        hashSet.add(Integer.valueOf(x509vErrSubtreeMinMax));
        hashSet.add(Integer.valueOf(x509vErrApplicationVerification));
        hashSet.add(Integer.valueOf(x509vErrUnsupportedConstraintType));
        hashSet.add(Integer.valueOf(x509vErrUnsupportedConstraintSyntax));
        hashSet.add(Integer.valueOf(x509vErrUnsupportedNameSyntax));
        hashSet.add(Integer.valueOf(x509vErrCrlPathValidationError));
        hashSet.add(Integer.valueOf(x509vErrPathLoop));
        hashSet.add(Integer.valueOf(x509vErrSuiteBInvalidVersion));
        hashSet.add(Integer.valueOf(x509vErrSuiteBInvalidAlgorithm));
        hashSet.add(Integer.valueOf(x509vErrSuiteBInvalidCurve));
        hashSet.add(Integer.valueOf(x509vErrSuiteBInvalidSignatureAlgorithm));
        hashSet.add(Integer.valueOf(x509vErrSuiteBLosNotAllowed));
        hashSet.add(Integer.valueOf(x509vErrSuiteBCannotSignP384WithP256));
        hashSet.add(Integer.valueOf(x509vErrHostnameMismatch));
        hashSet.add(Integer.valueOf(x509vErrEmailMismatch));
        hashSet.add(Integer.valueOf(x509vErrIpAddressMismatch));
        hashSet.add(Integer.valueOf(x509vErrDaneNoMatch));
        f44920o0 = Collections.unmodifiableSet(hashSet);
    }

    public static boolean a(int i9) {
        return f44920o0.contains(Integer.valueOf(i9));
    }
}
