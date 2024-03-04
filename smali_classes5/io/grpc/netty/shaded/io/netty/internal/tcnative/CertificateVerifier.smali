.class public abstract Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I

.field public static final B:I

.field public static final C:I

.field public static final D:I

.field public static final E:I

.field public static final F:I

.field public static final G:I

.field public static final H:I

.field public static final I:I

.field public static final J:I

.field public static final K:I

.field public static final L:I

.field public static final M:I

.field public static final N:I

.field public static final O:I

.field public static final P:I

.field public static final Q:I

.field public static final R:I

.field public static final S:I

.field public static final T:I

.field public static final U:I

.field public static final V:I

.field public static final W:I

.field public static final X:I

.field public static final Y:I

.field public static final Z:I

.field public static final a:I

.field public static final a0:I

.field public static final b:I

.field public static final b0:I

.field public static final c:I

.field public static final c0:I

.field public static final d:I

.field public static final d0:I

.field public static final e:I

.field public static final e0:I

.field public static final f:I

.field public static final f0:I

.field public static final g:I

.field public static final g0:I

.field public static final h:I

.field public static final h0:I

.field public static final i:I

.field public static final i0:I

.field public static final j:I

.field public static final j0:I

.field public static final k:I

.field public static final k0:I

.field public static final l:I

.field public static final l0:I

.field public static final m:I

.field public static final m0:I

.field public static final n:I

.field public static final n0:I

.field public static final o:I

.field private static final o0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:I

.field public static final w:I

.field public static final x:I

.field public static final y:I

.field public static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 67

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vOK()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->a:I

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnspecified()I

    move-result v1

    sput v1, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->b:I

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnableToGetIssuerCert()I

    move-result v2

    sput v2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->c:I

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnableToGetCrl()I

    move-result v3

    sput v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->d:I

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnableToDecryptCertSignature()I

    move-result v4

    sput v4, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->e:I

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnableToDecryptCrlSignature()I

    move-result v5

    sput v5, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->f:I

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnableToDecodeIssuerPublicKey()I

    move-result v6

    sput v6, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->g:I

    .line 8
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrCertSignatureFailure()I

    move-result v7

    sput v7, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->h:I

    .line 9
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrCrlSignatureFailure()I

    move-result v8

    sput v8, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->i:I

    .line 10
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrCertNotYetValid()I

    move-result v9

    sput v9, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->j:I

    .line 11
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrCertHasExpired()I

    move-result v10

    sput v10, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->k:I

    .line 12
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrCrlNotYetValid()I

    move-result v11

    sput v11, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->l:I

    .line 13
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrCrlHasExpired()I

    move-result v12

    sput v12, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->m:I

    .line 14
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrErrorInCertNotBeforeField()I

    move-result v13

    sput v13, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->n:I

    .line 15
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrErrorInCertNotAfterField()I

    move-result v14

    sput v14, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->o:I

    .line 16
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrErrorInCrlLastUpdateField()I

    move-result v15

    sput v15, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->p:I

    .line 17
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrErrorInCrlNextUpdateField()I

    move-result v16

    sput v16, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->q:I

    .line 18
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrOutOfMem()I

    move-result v17

    sput v17, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->r:I

    .line 19
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrDepthZeroSelfSignedCert()I

    move-result v18

    sput v18, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->s:I

    .line 20
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrSelfSignedCertInChain()I

    move-result v19

    sput v19, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->t:I

    .line 21
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnableToGetIssuerCertLocally()I

    move-result v20

    sput v20, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->u:I

    .line 22
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnableToVerifyLeafSignature()I

    move-result v21

    sput v21, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->v:I

    .line 23
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrCertChainTooLong()I

    move-result v22

    sput v22, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->w:I

    .line 24
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrCertRevoked()I

    move-result v23

    sput v23, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->x:I

    .line 25
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrInvalidCa()I

    move-result v24

    sput v24, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->y:I

    .line 26
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrPathLengthExceeded()I

    move-result v25

    sput v25, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->z:I

    .line 27
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrInvalidPurpose()I

    move-result v26

    sput v26, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->A:I

    .line 28
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrCertUntrusted()I

    move-result v27

    sput v27, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->B:I

    .line 29
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrCertRejected()I

    move-result v28

    sput v28, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->C:I

    .line 30
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrSubjectIssuerMismatch()I

    move-result v29

    sput v29, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->D:I

    .line 31
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrAkidSkidMismatch()I

    move-result v30

    sput v30, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->E:I

    .line 32
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrAkidIssuerSerialMismatch()I

    move-result v31

    sput v31, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->F:I

    .line 33
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrKeyUsageNoCertSign()I

    move-result v32

    sput v32, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->G:I

    .line 34
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnableToGetCrlIssuer()I

    move-result v33

    sput v33, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->H:I

    .line 35
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnhandledCriticalExtension()I

    move-result v34

    sput v34, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->I:I

    .line 36
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrKeyUsageNoCrlSign()I

    move-result v35

    sput v35, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->J:I

    .line 37
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnhandledCriticalCrlExtension()I

    move-result v36

    sput v36, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->K:I

    .line 38
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrInvalidNonCa()I

    move-result v37

    sput v37, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->L:I

    .line 39
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrProxyPathLengthExceeded()I

    move-result v38

    sput v38, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->M:I

    .line 40
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrKeyUsageNoDigitalSignature()I

    move-result v39

    sput v39, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->N:I

    .line 41
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrProxyCertificatesNotAllowed()I

    move-result v40

    sput v40, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->O:I

    .line 42
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrInvalidExtension()I

    move-result v41

    sput v41, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->P:I

    .line 43
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrInvalidPolicyExtension()I

    move-result v42

    sput v42, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->Q:I

    .line 44
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrNoExplicitPolicy()I

    move-result v43

    sput v43, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->R:I

    .line 45
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrDifferntCrlScope()I

    move-result v44

    sput v44, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->S:I

    .line 46
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnsupportedExtensionFeature()I

    move-result v45

    sput v45, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->T:I

    .line 47
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnnestedResource()I

    move-result v46

    sput v46, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->U:I

    .line 48
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrPermittedViolation()I

    move-result v47

    sput v47, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->V:I

    .line 49
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrExcludedViolation()I

    move-result v48

    sput v48, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->W:I

    .line 50
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrSubtreeMinMax()I

    move-result v49

    sput v49, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->X:I

    .line 51
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrApplicationVerification()I

    move-result v50

    sput v50, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->Y:I

    .line 52
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnsupportedConstraintType()I

    move-result v51

    sput v51, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->Z:I

    .line 53
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnsupportedConstraintSyntax()I

    move-result v52

    sput v52, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->a0:I

    .line 54
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrUnsupportedNameSyntax()I

    move-result v53

    sput v53, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->b0:I

    .line 55
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrCrlPathValidationError()I

    move-result v54

    sput v54, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->c0:I

    .line 56
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrPathLoop()I

    move-result v55

    sput v55, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->d0:I

    .line 57
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrSuiteBInvalidVersion()I

    move-result v56

    sput v56, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->e0:I

    .line 58
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrSuiteBInvalidAlgorithm()I

    move-result v57

    sput v57, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->f0:I

    .line 59
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrSuiteBInvalidCurve()I

    move-result v58

    sput v58, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->g0:I

    .line 60
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrSuiteBInvalidSignatureAlgorithm()I

    move-result v59

    sput v59, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->h0:I

    .line 61
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrSuiteBLosNotAllowed()I

    move-result v60

    sput v60, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->i0:I

    .line 62
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrSuiteBCannotSignP384WithP256()I

    move-result v61

    sput v61, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->j0:I

    .line 63
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrHostnameMismatch()I

    move-result v62

    sput v62, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->k0:I

    .line 64
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrEmailMismatch()I

    move-result v63

    sput v63, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->l0:I

    .line 65
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrIpAddressMismatch()I

    move-result v64

    sput v64, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->m0:I

    .line 66
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509vErrDaneNoMatch()I

    move-result v65

    sput v65, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->n0:I

    move/from16 v66, v15

    .line 67
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {v15}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->o0:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;->o0:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
