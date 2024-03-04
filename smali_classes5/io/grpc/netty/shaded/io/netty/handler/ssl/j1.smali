.class public abstract Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$g;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$f;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$d;
    }
.end annotation


# static fields
.field static final A:Z

.field static final B:Z

.field static final C:Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

.field private static final r:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final s:I

.field static final t:Z

.field private static final u:Ljava/lang/Integer;

.field private static final v:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;",
            ">;"
        }
    .end annotation
.end field

.field static final w:Z

.field static final x:Z

.field static final y:Z

.field static final z:Z


# instance fields
.field protected d:J

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

.field private final g:I

.field private final h:Lio/grpc/netty/shaded/io/netty/util/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lio/grpc/netty/shaded/io/netty/util/b;

.field final j:[Ljava/security/cert/Certificate;

.field final k:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

.field final l:[Ljava/lang/String;

.field final m:Z

.field final n:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

.field final o:Ljava/util/concurrent/locks/ReadWriteLock;

.field private volatile p:I

.field final q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->r:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "io.grpc.netty.shaded.io.netty.handler.ssl.openssl.bioNonApplicationBufferSize"

    const/16 v2, 0x800

    .line 3
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    .line 4
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->s:I

    const-string v1, "io.grpc.netty.shaded.io.netty.handler.ssl.openssl.useTasks"

    .line 5
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->t:Z

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->b()Lio/grpc/netty/shaded/io/netty/util/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/util/t;->c(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->v:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    const-string v0, "jdk.tls.client.enableSessionTicketExtension"

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->w:Z

    .line 8
    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->x:Z

    const-string v0, "jdk.tls.server.enableSessionTicketExtension"

    .line 9
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->y:Z

    .line 10
    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->z:Z

    const-string v0, "io.grpc.netty.shaded.io.netty.handler.ssl.openssl.sessionCacheServer"

    .line 11
    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->A:Z

    const-string v0, "io.grpc.netty.shaded.io.netty.handler.ssl.openssl.sessionCacheClient"

    .line 12
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->B:Z

    .line 13
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$b;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$b;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->C:Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "jdk.tls.ephemeralDHKeySize"

    .line 14
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 15
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :catch_0
    :try_start_2
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->r:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReferenceCountedOpenSslContext supports -Djdk.tls.ephemeralDHKeySize={int}, but got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :catchall_0
    :cond_0
    :goto_0
    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->u:Ljava/lang/Integer;

    return-void
.end method

.method varargs constructor <init>(Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;I[Ljava/security/cert/Certificate;Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ[Ljava/util/Map$Entry;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/i;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;",
            "I[",
            "Ljava/security/cert/Certificate;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZZ[",
            "Ljava/util/Map$Entry<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/r1<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p4

    move/from16 v2, p9

    move-object/from16 v3, p11

    const-string v4, ""

    move/from16 v5, p8

    .line 1
    invoke-direct {v1, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;-><init>(Z)V

    .line 2
    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$a;

    invoke-direct {v5, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;)V

    iput-object v5, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->i:Lio/grpc/netty/shaded/io/netty/util/b;

    .line 3
    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$f;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$f;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$a;)V

    iput-object v5, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    .line 4
    new-instance v5, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v5, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->o:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 5
    sget v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->s:I

    iput v5, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->p:I

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->e()V

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->k()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "OCSP is not supported."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "mode most be either SSL.SSL_MODE_SERVER or SSL.SSL_MODE_CLIENT"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    :goto_1
    sget-boolean v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->t:Z

    const/4 v8, 0x0

    if-eqz v3, :cond_8

    .line 11
    array-length v9, v3

    move-object v12, v6

    move-object v13, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v10, v9, :cond_9

    aget-object v14, v3, v10

    .line 12
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/grpc/netty/shaded/io/netty/handler/ssl/r1;

    .line 13
    sget-object v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;

    if-ne v15, v6, :cond_4

    .line 14
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_3

    .line 15
    :cond_4
    sget-object v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;->f:Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;

    if-ne v15, v6, :cond_5

    .line 16
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move v7, v6

    goto :goto_3

    .line 17
    :cond_5
    sget-object v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;->h:Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;

    if-ne v15, v6, :cond_6

    .line 18
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lio/grpc/netty/shaded/io/netty/handler/ssl/u0;

    goto :goto_3

    .line 19
    :cond_6
    sget-object v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;->i:Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;

    if-ne v15, v6, :cond_7

    .line 20
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lio/grpc/netty/shaded/io/netty/handler/ssl/g0;

    goto :goto_3

    .line 21
    :cond_7
    sget-object v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->r:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping unsupported "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/r1;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-interface {v6, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_9
    if-eqz v12, :cond_b

    if-nez v13, :cond_a

    goto :goto_4

    .line 24
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You can either only use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/g0;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/u0;

    .line 26
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_b
    :goto_4
    iput-boolean v11, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->q:Z

    if-eqz p10, :cond_c

    .line 28
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->v:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-virtual {v3, v1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->l(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/v;

    move-result-object v3

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    iput-object v3, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->h:Lio/grpc/netty/shaded/io/netty/util/v;

    .line 29
    iput v0, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->g:I

    .line 30
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->r()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "clientAuth"

    move-object/from16 v5, p6

    invoke-static {v5, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    goto :goto_6

    :cond_d
    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;->NONE:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    :goto_6
    iput-object v3, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->k:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    move-object/from16 v3, p7

    .line 31
    iput-object v3, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->l:[Ljava/lang/String;

    .line 32
    iput-boolean v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->m:Z

    if-nez p5, :cond_e

    const/4 v6, 0x0

    goto :goto_7

    .line 33
    :cond_e
    invoke-virtual/range {p5 .. p5}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, [Ljava/security/cert/Certificate;

    :goto_7
    iput-object v6, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->j:[Ljava/security/cert/Certificate;

    const-string v3, "cipherFilter"

    move-object/from16 v5, p2

    .line 34
    invoke-static {v5, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/i;

    sget-object v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->c:Ljava/util/List;

    .line 35
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->a()Ljava/util/Set;

    move-result-object v6

    move-object/from16 v9, p1

    .line 36
    invoke-interface {v3, v9, v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i;->a(Ljava/lang/Iterable;Ljava/util/List;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v3

    .line 37
    new-instance v5, Ljava/util/LinkedHashSet;

    array-length v6, v3

    invoke-direct {v5, v6}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 38
    invoke-static {v5, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->e:Ljava/util/List;

    const-string v5, "apn"

    move-object/from16 v6, p3

    .line 40
    invoke-static {v6, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    iput-object v5, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->f:Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    .line 41
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->l()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v9, 0x1e

    if-eqz v5, :cond_f

    const/16 v9, 0x3e

    .line 42
    :cond_f
    :try_start_1
    invoke-static {v9, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v9

    iput-wide v9, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 46
    iget-wide v9, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v9, v10, v4, v8}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    if-eqz v5, :cond_11

    .line 47
    iget-wide v9, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    const/4 v3, 0x1

    invoke-static {v9, v10, v4, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    goto :goto_8

    .line 48
    :cond_10
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->i()Z

    move-result v4

    .line 49
    invoke-static {v3, v0, v9, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h;->c(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)V

    .line 50
    iget-wide v3, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v4, v10, v8}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    if-eqz v5, :cond_11

    .line 51
    iget-wide v3, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    sget-object v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->r:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 52
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->b(Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    .line 53
    invoke-static {v3, v4, v5, v9}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :cond_11
    :goto_8
    :try_start_4
    iget-wide v3, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->getOptions(J)I

    move-result v3

    sget v4, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->b:I

    or-int/2addr v3, v4

    sget v5, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->c:I

    or-int/2addr v3, v5

    sget v9, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->d:I

    or-int/2addr v3, v9

    sget v10, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->e:I

    or-int/2addr v3, v10

    sget v11, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->a:I

    or-int/2addr v3, v11

    sget v11, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->i:I

    or-int/2addr v3, v11

    sget v11, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->h:I

    or-int/2addr v3, v11

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_12

    or-int v0, v4, v5

    or-int/2addr v0, v9

    or-int/2addr v0, v10

    .line 56
    sget v4, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->f:I

    or-int/2addr v0, v4

    or-int/2addr v3, v0

    .line 57
    :cond_12
    iget-wide v4, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v4, v5, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setOptions(JI)V

    .line 58
    iget-wide v3, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->getMode(J)I

    move-result v0

    sget v5, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->r:I

    or-int/2addr v0, v5

    invoke-static {v3, v4, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setMode(JI)I

    .line 59
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 60
    iget-wide v3, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v4, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setTmpDHLength(JI)V

    .line 61
    :cond_13
    invoke-interface/range {p3 .. p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    new-array v3, v8, [Ljava/lang/String;

    .line 63
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 64
    invoke-interface/range {p3 .. p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;->a()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v3

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->N(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;)I

    move-result v3

    .line 65
    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$c;->a:[I

    invoke-interface/range {p3 .. p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;->protocol()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_16

    const/4 v5, 0x2

    if-eq v4, v5, :cond_15

    const/4 v5, 0x3

    if-ne v4, v5, :cond_14

    .line 66
    iget-wide v4, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v4, v5, v0, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->d(J[Ljava/lang/String;I)V

    .line 67
    iget-wide v4, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v4, v5, v0, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->b(J[Ljava/lang/String;I)V

    goto :goto_9

    .line 68
    :cond_14
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 69
    :cond_15
    iget-wide v4, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v4, v5, v0, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->b(J[Ljava/lang/String;I)V

    goto :goto_9

    .line 70
    :cond_16
    iget-wide v4, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v4, v5, v0, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->d(J[Ljava/lang/String;I)V

    :cond_17
    :goto_9
    if-eqz v2, :cond_18

    .line 71
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->q()Z

    move-result v0

    invoke-static {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->enableOcsp(JZ)V

    .line 72
    :cond_18
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v2, v3, v7}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setUseTasks(JZ)V

    if-eqz v12, :cond_19

    .line 73
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$g;

    iget-object v4, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    invoke-direct {v0, v4, v12}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$g;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Lio/grpc/netty/shaded/io/netty/handler/ssl/u0;)V

    invoke-static {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->f(JLrg/c;)V

    :cond_19
    if-eqz v13, :cond_1a

    .line 74
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e;

    iget-object v4, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    invoke-direct {v0, v4, v13}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Lio/grpc/netty/shaded/io/netty/handler/ssl/g0;)V

    invoke-static {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->e(JLio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;)V

    .line 75
    :cond_1a
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->o:[Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->c(J[Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception v0

    .line 76
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to set cipher suite: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->e:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 77
    throw v0

    :catch_2
    move-exception v0

    .line 78
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "failed to create an SSL_CTX"

    invoke-direct {v2, v3, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    .line 79
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->release()Z

    .line 80
    throw v0
.end method

.method static synthetic D(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;)Lio/grpc/netty/shaded/io/netty/util/v;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->h:Lio/grpc/netty/shaded/io/netty/util/v;

    return-object p0
.end method

.method static synthetic E(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->I()V

    return-void
.end method

.method static synthetic F([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->W([B)[B

    move-result-object p0

    return-object p0
.end method

.method protected static G([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 2
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_1

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result p0

    const/4 v0, 0x7

    if-lt p0, v0, :cond_0

    .line 4
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e1;->c(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no X509TrustManager found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static H([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2
    instance-of v3, v2, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_0

    .line 3
    check-cast v2, Ljavax/net/ssl/X509KeyManager;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no X509KeyManager found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private I()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->o:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 4
    iget-boolean v5, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->m:Z

    if-eqz v5, :cond_0

    .line 5
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->disableOcsp(J)V

    .line 6
    :cond_0
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->free(J)I

    .line 7
    iput-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    .line 8
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw v1
.end method

.method static J(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeBIO(J)V

    :cond_0
    return-void
.end method

.method private static L(Lkg/j;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->newMemBIO()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v2

    .line 3
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->n(Lkg/j;)J

    move-result-wide v3

    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioWrite(JJI)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v2, :cond_0

    .line 4
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-wide v0

    .line 5
    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not write data to memory BIO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 8
    throw v0
.end method

.method private static N(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;)I
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$c;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static O(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;
    .locals 1

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i0;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i0;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i0;->a(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    invoke-virtual {p0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->H([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)V

    return-object v0
.end method

.method static Q(J[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object/from16 v0, p3

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    sget-object v4, Lkg/k;->a:Lkg/k;

    const/4 v5, 0x1

    move-object/from16 v6, p2

    invoke-static {v4, v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->toPEM(Lkg/k;Z[Ljava/security/cert/X509Certificate;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    move-result-object v3
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2
    :try_start_1
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    move-result-object v6

    invoke-static {v4, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->R(Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;)J

    move-result-wide v14
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3
    :try_start_2
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    move-result-object v6

    invoke-static {v4, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->R(Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;)J

    move-result-wide v11
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    .line 4
    :try_start_3
    invoke-static {v4, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->S(Lkg/k;Ljava/security/PrivateKey;)J

    move-result-wide v1

    :cond_0
    if-nez p4, :cond_1

    const-string v0, ""
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v13, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_1
    move-object/from16 v13, p4

    :goto_0
    move-wide/from16 v7, p0

    move-wide v9, v14

    move-object/from16 p2, v3

    move-wide v3, v11

    move-wide v11, v1

    .line 5
    :try_start_4
    invoke-static/range {v7 .. v13}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCertificateBio(JJJLjava/lang/String;)Z

    move-wide/from16 v6, p0

    .line 6
    invoke-static {v6, v7, v3, v4, v5}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCertificateChainBio(JJZ)Z
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->J(J)V

    .line 8
    invoke-static {v14, v15}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->J(J)V

    .line 9
    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->J(J)V

    .line 10
    invoke-interface/range {p2 .. p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-void

    :catchall_0
    move-exception v0

    move-wide v11, v3

    move-object/from16 v3, p2

    goto :goto_6

    :catch_2
    move-exception v0

    move-wide v11, v3

    move-object/from16 v3, p2

    goto :goto_3

    :catch_3
    move-exception v0

    move-wide v11, v3

    move-object/from16 v3, p2

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 p2, v3

    move-wide v11, v1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 p2, v3

    move-wide v11, v1

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 p2, v3

    move-wide v11, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 p2, v3

    goto :goto_1

    :catch_6
    move-exception v0

    move-object/from16 p2, v3

    goto :goto_2

    :catch_7
    move-exception v0

    move-object/from16 p2, v3

    goto :goto_4

    :catchall_3
    move-exception v0

    :goto_1
    move-wide v11, v1

    move-wide v14, v11

    goto :goto_6

    :catch_8
    move-exception v0

    :goto_2
    move-wide v11, v1

    move-wide v14, v11

    .line 11
    :goto_3
    :try_start_5
    new-instance v4, Ljavax/net/ssl/SSLException;

    const-string v5, "failed to set certificate and key"

    invoke-direct {v4, v5, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_9
    move-exception v0

    :goto_4
    move-wide v11, v1

    move-wide v14, v11

    .line 12
    :goto_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    .line 13
    :goto_6
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->J(J)V

    .line 14
    invoke-static {v14, v15}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->J(J)V

    .line 15
    invoke-static {v11, v12}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->J(J)V

    if-eqz v3, :cond_2

    .line 16
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 17
    :cond_2
    throw v0
.end method

.method static R(Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lkg/l;->content()Lkg/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lkg/j;->h1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lkg/j;->W1()Lkg/j;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->L(Lkg/j;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-wide v0

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v1

    invoke-interface {p0, v1}, Lkg/k;->h(I)Lkg/j;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 6
    :try_start_2
    invoke-virtual {v0}, Lkg/j;->Q1()I

    move-result v1

    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    .line 7
    invoke-virtual {p0}, Lkg/j;->W1()Lkg/j;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->L(Lkg/j;)J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :try_start_3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;->isSensitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->y(Lkg/j;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :cond_1
    :try_start_4
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 11
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-wide v0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_5
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 13
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_1
    move-exception v0

    .line 14
    :try_start_6
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;->isSensitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->y(Lkg/j;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 16
    :cond_2
    :try_start_7
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 17
    throw v0

    :catchall_2
    move-exception v0

    .line 18
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 19
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 20
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 21
    throw p0
.end method

.method static S(Lkg/k;Ljava/security/PrivateKey;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemPrivateKey;->toPEM(Lkg/k;ZLjava/security/PrivateKey;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    move-result-object v0

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->R(Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-wide v0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 4
    throw p0
.end method

.method static varargs T(Lkg/k;[Ljava/security/cert/X509Certificate;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const-string v0, "certChain"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->f([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/PemX509Certificate;->toPEM(Lkg/k;Z[Ljava/security/cert/X509Certificate;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;

    move-result-object v0

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->R(Lkg/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/f1;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-wide v0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 5
    throw p0
.end method

.method static U(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;
    .locals 6

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->C:Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$c;->a:[I

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->a()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 p0, 0x4

    if-ne v0, p0, :cond_1

    .line 3
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->C:Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0

    .line 5
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$c;->c:[I

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->b()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const-string v3, " behavior"

    const-string v4, "OpenSSL provider does not support "

    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->b()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    :goto_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1$c;->b:[I

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_1

    .line 10
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_6
    :goto_1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/n0;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/n0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;)V

    return-object v0
.end method

.method static V(Ljavax/net/ssl/X509TrustManager;)Z
    .locals 2

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    instance-of p0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static W([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    invoke-direct {p0}, Ljava/security/SignatureException;-><init>()V

    throw p0
.end method


# virtual methods
.method public K()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->p:I

    return v0
.end method

.method M(Lkg/k;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;
    .locals 8

    new-instance v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;Lkg/k;Ljava/lang/String;IZZ)V

    return-object v7
.end method

.method public abstract P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
.end method

.method public a()Lio/grpc/netty/shaded/io/netty/handler/ssl/b;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->f:Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final refCnt()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->i:Lio/grpc/netty/shaded/io/netty/util/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    return v0
.end method

.method public final release()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->i:Lio/grpc/netty/shaded/io/netty/util/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/b;->release()Z

    move-result v0

    return v0
.end method

.method public final retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->i:Lio/grpc/netty/shaded/io/netty/util/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/b;->retain()Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public final touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->i:Lio/grpc/netty/shaded/io/netty/util/b;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/s;->touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public final v(Lkg/k;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->M(Lkg/k;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic y()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    move-result-object v0

    return-object v0
.end method
