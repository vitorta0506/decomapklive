.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;
.super Lio/grpc/netty/shaded/io/netty/util/b;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;


# static fields
.field private static final BEGIN_PRIVATE_KEY:[B

.field private static final END_PRIVATE_KEY:[B

.field private static final PKCS8_FORMAT:Ljava/lang/String; = "PKCS#8"

.field private static final serialVersionUID:J = 0x6eb79c9d9ba22f38L


# instance fields
.field private final content:Lkg/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    const-string v1, "-----BEGIN PRIVATE KEY-----\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->BEGIN_PRIVATE_KEY:[B

    const-string v1, "\n-----END PRIVATE KEY-----\n"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->END_PRIVATE_KEY:[B

    return-void
.end method

.method private constructor <init>(Lkg/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/b;-><init>()V

    const-string v0, "content"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/j;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->content:Lkg/j;

    return-void
.end method

.method static toPEM(Lkg/k;ZLjava/security/PrivateKey;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 1

    .line 1
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->toPEM(Lkg/k;Z[B)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not support encoding"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static toPEM(Lkg/k;Z[B)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 5

    .line 6
    invoke-static {p2}, Lkg/s0;->k([B)Lkg/j;

    move-result-object p2

    .line 7
    :try_start_0
    invoke-static {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->r(Lkg/k;Lkg/j;)Lkg/j;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->BEGIN_PRIVATE_KEY:[B

    array-length v2, v1

    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->END_PRIVATE_KEY:[B

    array-length v4, v3

    add-int/2addr v2, v4

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p0, v2}, Lkg/k;->h(I)Lkg/j;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v2}, Lkg/k;->l(I)Lkg/j;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :goto_0
    :try_start_2
    invoke-virtual {p0, v1}, Lkg/j;->A2([B)Lkg/j;

    .line 11
    invoke-virtual {p0, v0}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    .line 12
    invoke-virtual {p0, v3}, Lkg/j;->A2([B)Lkg/j;

    .line 13
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h1;-><init>(Lkg/j;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->z(Lkg/j;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 15
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->z(Lkg/j;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_4
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->z(Lkg/j;)V

    .line 17
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 18
    :try_start_5
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->z(Lkg/j;)V

    .line 19
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    .line 20
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->z(Lkg/j;)V

    .line 21
    throw p0
.end method

.method public static valueOf(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;-><init>(Lkg/j;)V

    return-object v0
.end method

.method public static valueOf([B)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;
    .locals 0

    .line 1
    invoke-static {p0}, Lkg/s0;->k([B)Lkg/j;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->valueOf(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public content()Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->content:Lkg/j;

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v1
.end method

.method public copy()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->content:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->N()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->copy()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lkg/l;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->copy()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method protected deallocate()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->content:Lkg/j;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->z(Lkg/j;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/b;->release(I)Z

    return-void
.end method

.method public duplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->content:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->f0()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->duplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lkg/l;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->duplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getEncoded()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSensitive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;-><init>(Lkg/j;)V

    return-object v0
.end method

.method public bridge synthetic replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lkg/j;)Lkg/l;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 7
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->retain()Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    return-object v0
.end method

.method public retain(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/b;->retain(I)Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    return-object p1
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->retain(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->retain(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lkg/l;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lkg/l;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->retain(I)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public retainedDuplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->content:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->V1()Lkg/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->replace(Lkg/j;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->retainedDuplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lkg/l;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->retainedDuplicate()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public touch()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->content:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->q2()Lkg/j;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->content:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->r2(Ljava/lang/Object;)Lkg/j;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->touch()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->touch()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lkg/l;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->touch()Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lkg/l;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;

    move-result-object p1

    return-object p1
.end method
