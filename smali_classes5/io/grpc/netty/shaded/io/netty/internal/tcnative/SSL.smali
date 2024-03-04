.class public final Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;
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

.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:J

.field public static final k:J

.field public static final l:J

.field public static final m:J

.field public static final n:J

.field public static final o:I

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
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslOpCipherServerPreference()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->a:I

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslOpNoSSLv2()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->b:I

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslOpNoSSLv3()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->c:I

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslOpNoTLSv1()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->d:I

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslOpNoTLSv11()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->e:I

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslOpNoTLSv12()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->f:I

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslOpNoTLSv13()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->g:I

    .line 8
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslOpNoTicket()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->h:I

    .line 9
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslOpNoCompression()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->i:I

    .line 10
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslSessCacheOff()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->j:J

    .line 11
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslSessCacheServer()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->k:J

    .line 12
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslSessCacheClient()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->l:J

    .line 13
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslSessCacheNoInternalLookup()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->m:J

    .line 14
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslSessCacheNoInternalStore()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->n:J

    .line 15
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslStConnect()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->o:I

    .line 16
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslStAccept()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->p:I

    .line 17
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslModeEnablePartialWrite()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->q:I

    .line 18
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslModeAcceptMovingWriteBuffer()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->r:I

    .line 19
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslModeReleaseBuffers()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->s:I

    .line 20
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslModeEnableFalseStart()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->t:I

    .line 21
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslMaxPlaintextLength()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->u:I

    .line 22
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslMaxRecordLength()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->v:I

    .line 23
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509CheckFlagAlwaysCheckSubject()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->w:I

    .line 24
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509CheckFlagDisableWildCards()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->x:I

    .line 25
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509CheckFlagNoPartialWildCards()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->y:I

    .line 26
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->x509CheckFlagMultiLabelWildCards()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->z:I

    .line 27
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslRenegotiateNever()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->A:I

    .line 28
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslRenegotiateOnce()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->B:I

    .line 29
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslRenegotiateFreely()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->C:I

    .line 30
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslRenegotiateIgnore()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->D:I

    .line 31
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslRenegotiateExplicit()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->E:I

    .line 32
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslSendShutdown()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->F:I

    .line 33
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslReceivedShutdown()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->G:I

    .line 34
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslErrorNone()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->H:I

    .line 35
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslErrorSSL()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->I:I

    .line 36
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslErrorWantRead()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->J:I

    .line 37
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslErrorWantWrite()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->K:I

    .line 38
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslErrorWantX509Lookup()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->L:I

    .line 39
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslErrorSyscall()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->M:I

    .line 40
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslErrorZeroReturn()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->N:I

    .line 41
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslErrorWantConnect()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->O:I

    .line 42
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslErrorWantAccept()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->P:I

    .line 43
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslErrorWantPrivateKeyOperation()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->Q:I

    .line 44
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/NativeStaticallyReferencedJniMethods;->sslErrorWantCertificateVerify()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->R:I

    return-void
.end method

.method public static a(JLjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "."

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setTlsExtHostName0(JLjava/lang/String;)V

    return-void
.end method

.method public static native authenticationMethods(J)[Ljava/lang/String;
.end method

.method public static native bioClearByteBuffer(J)V
.end method

.method public static native bioFlushByteBuffer(J)I
.end method

.method public static native bioLengthByteBuffer(J)I
.end method

.method public static native bioLengthNonApplication(J)I
.end method

.method public static native bioNewByteBuffer(JI)J
.end method

.method public static native bioSetByteBuffer(JJIZ)V
.end method

.method public static native bioWrite(JJI)I
.end method

.method public static native clearError()V
.end method

.method public static native clearOptions(JI)V
.end method

.method public static native doHandshake(J)I
.end method

.method public static native enableOcsp(J)V
.end method

.method public static native freeBIO(J)V
.end method

.method public static native freePrivateKey(J)V
.end method

.method public static native freeSSL(J)V
.end method

.method public static native freeX509Chain(J)V
.end method

.method public static native getAlpnSelected(J)Ljava/lang/String;
.end method

.method public static native getCipherForSSL(J)Ljava/lang/String;
.end method

.method public static native getCiphers(J)[Ljava/lang/String;
.end method

.method public static native getError(JI)I
.end method

.method public static native getErrorString(J)Ljava/lang/String;
.end method

.method public static native getHandshakeCount(J)I
.end method

.method public static native getLastErrorNumber()I
.end method

.method public static native getMaxWrapOverhead(J)I
.end method

.method public static native getMode(J)I
.end method

.method public static native getNextProtoNegotiated(J)Ljava/lang/String;
.end method

.method public static native getOptions(J)I
.end method

.method public static native getPeerCertChain(J)[[B
.end method

.method public static native getPeerCertificate(J)[B
.end method

.method public static native getSessionId(J)[B
.end method

.method public static native getShutdown(J)I
.end method

.method public static native getSigAlgs(J)[Ljava/lang/String;
.end method

.method public static native getSniHostname(J)Ljava/lang/String;
.end method

.method public static native getTask(J)Ljava/lang/Runnable;
.end method

.method public static native getTime(J)J
.end method

.method public static native getVersion(J)Ljava/lang/String;
.end method

.method static native initialize(Ljava/lang/String;)I
.end method

.method public static native isInInit(J)I
.end method

.method public static native newMemBIO()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native newSSL(JZ)J
.end method

.method public static native parsePrivateKey(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native parseX509Chain(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native readFromSSL(JJI)I
.end method

.method public static native setCipherSuites(JLjava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native setKeyMaterial(JJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native setMode(JI)I
.end method

.method public static native setOptions(JI)V
.end method

.method public static native setRenegotiateMode(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native setSession(JJ)Z
.end method

.method private static native setTlsExtHostName0(JLjava/lang/String;)V
.end method

.method public static native setVerify(JII)V
.end method

.method public static native shutdownSSL(J)I
.end method

.method public static native sslPending(J)I
.end method

.method public static native version()I
.end method

.method public static native versionString()Ljava/lang/String;
.end method

.method public static native writeToSSL(JJI)I
.end method
