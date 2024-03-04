.class public final Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Ljava/lang/String;)[B
    .locals 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 3
    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 4
    array-length v4, v3

    const v5, 0xffff

    if-gt v4, v5, :cond_0

    .line 5
    array-length v4, v3

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 6
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 9
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 11
    :catch_2
    throw p0
.end method

.method public static b(J[Ljava/lang/String;I)V
    .locals 0

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->a([Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setAlpnProtos0(J[BI)V

    return-void
.end method

.method public static varargs c(J[Ljava/lang/String;)Z
    .locals 4

    const-string v0, "curves"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCurvesList0(JLjava/lang/String;)Z

    move-result p0

    return p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static native clearOptions(JI)V
.end method

.method public static d(J[Ljava/lang/String;I)V
    .locals 0

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->a([Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setNpnProtos0(J[BI)V

    return-void
.end method

.method public static native disableOcsp(J)V
.end method

.method public static e(JLio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setPrivateKeyMethod0(JLio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;)V

    return-void
.end method

.method public static native enableOcsp(JZ)V
.end method

.method public static f(JLrg/c;)V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/a;

    invoke-direct {v0, p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/a;-><init>(Lrg/c;)V

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->e(JLio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;)V

    return-void
.end method

.method public static native free(J)I
.end method

.method public static g(J[Lrg/d;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    array-length v0, p2

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x30

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 3
    array-length v2, p2

    if-gtz v2, :cond_0

    .line 4
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setSessionTicketKeys0(J[B)V

    return-void

    .line 5
    :cond_0
    aget-object p0, p2, v1

    const/4 p0, 0x0

    .line 6
    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of the keys should be longer than 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static native getMode(J)I
.end method

.method public static native getOptions(J)I
.end method

.method public static native make(II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private static native setAlpnProtos0(J[BI)V
.end method

.method public static native setCACertificateBio(JJ)Z
.end method

.method public static native setCertVerifyCallback(JLio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;)V
.end method

.method public static native setCertificateBio(JJJLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native setCertificateCallback(JLio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateCallback;)V
.end method

.method public static native setCertificateChainBio(JJZ)Z
.end method

.method public static native setCipherSuite(JLjava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private static native setCurvesList0(JLjava/lang/String;)Z
.end method

.method public static native setMode(JI)I
.end method

.method private static native setNpnProtos0(J[BI)V
.end method

.method public static native setOptions(JI)V
.end method

.method private static native setPrivateKeyMethod0(JLio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;)V
.end method

.method public static native setSSLSessionCache(JLio/grpc/netty/shaded/io/netty/internal/tcnative/SSLSessionCache;)V
.end method

.method public static native setSessionCacheMode(JJ)J
.end method

.method public static native setSessionCacheTimeout(JJ)J
.end method

.method public static native setSessionIdContext(J[B)Z
.end method

.method private static native setSessionTicketKeys0(J[B)V
.end method

.method public static native setSniHostnameMatcher(JLio/grpc/netty/shaded/io/netty/internal/tcnative/SniHostNameMatcher;)V
.end method

.method public static native setTmpDHLength(JI)V
.end method

.method public static native setUseTasks(JZ)V
.end method

.method public static native setVerify(JII)V
.end method
