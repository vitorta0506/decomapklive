.class public Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;
.super Ljavax/net/ssl/SSLEngine;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/s;
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;
    }
.end annotation


# static fields
.field private static final G:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final H:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;",
            ">;"
        }
    .end annotation
.end field

.field private static final I:[I

.field static final J:I

.field static final K:I

.field private static final L:Ljavax/net/ssl/SSLEngineResult;

.field private static final M:Ljavax/net/ssl/SSLEngineResult;

.field private static final N:Ljavax/net/ssl/SSLEngineResult;

.field private static final O:Ljavax/net/ssl/SSLEngineResult;

.field private static final P:Ljavax/net/ssl/SSLEngineResult;


# instance fields
.field private final A:[Ljava/nio/ByteBuffer;

.field private final B:[Ljava/nio/ByteBuffer;

.field private final C:Z

.field private D:I

.field private E:I

.field private F:Ljava/lang/Throwable;

.field private a:J

.field private b:J

.field private c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

.field private d:Z

.field private volatile e:Z

.field private volatile f:Ljava/lang/String;

.field private volatile g:Z

.field private h:[Ljava/lang/String;

.field private i:Z

.field private final j:Lio/grpc/netty/shaded/io/netty/util/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lio/grpc/netty/shaded/io/netty/util/b;

.field private volatile l:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

.field private volatile m:J

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/Object;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile q:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Z

.field final t:Z

.field private final u:Z

.field final v:Lkg/k;

.field private final w:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

.field private final x:Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

.field private final y:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

.field private final z:Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    .line 2
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->G:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->b()Lio/grpc/netty/shaded/io/netty/util/t;

    move-result-object v0

    const-class v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/t;->c(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->H:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 4
    sget v1, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->b:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->c:I

    aput v3, v0, v1

    const/4 v1, 0x2

    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->d:I

    aput v3, v0, v1

    const/4 v1, 0x3

    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->e:I

    aput v3, v0, v1

    const/4 v1, 0x4

    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->f:I

    aput v3, v0, v1

    const/4 v1, 0x5

    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->g:I

    aput v3, v0, v1

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->I:[I

    .line 5
    sget v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->u:I

    sput v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J:I

    .line 6
    sget v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->v:I

    sput v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->K:I

    .line 7
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->L:Ljavax/net/ssl/SSLEngineResult;

    .line 8
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->M:Ljavax/net/ssl/SSLEngineResult;

    .line 9
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->N:Ljavax/net/ssl/SSLEngineResult;

    .line 10
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->O:Ljavax/net/ssl/SSLEngineResult;

    .line 11
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v3, v2, v2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->P:Ljavax/net/ssl/SSLEngineResult;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;Lkg/k;Ljava/lang/String;IZZ)V
    .locals 6

    .line 1
    invoke-direct {p0, p3, p4}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    .line 2
    sget-object p4, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    .line 3
    new-instance p4, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$a;

    invoke-direct {p4, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)V

    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->k:Lio/grpc/netty/shaded/io/netty/util/b;

    .line 4
    sget-object p4, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;->NONE:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->m:J

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    .line 6
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->A:[Ljava/nio/ByteBuffer;

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    .line 7
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->B:[Ljava/nio/ByteBuffer;

    .line 8
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->e()V

    const-string v1, "alloc"

    .line 9
    invoke-static {p2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkg/k;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->v:Lkg/k;

    .line 10
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->a()Lio/grpc/netty/shaded/io/netty/handler/ssl/b;

    move-result-object p2

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->x:Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    .line 11
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->q()Z

    move-result p2

    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->u:Z

    .line 12
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 13
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;

    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;)V

    invoke-direct {v1, p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;)V

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z:Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;)V

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z:Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    .line 15
    :goto_0
    iget-object v1, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->w:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    .line 16
    iget-boolean v1, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->m:Z

    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->C:Z

    .line 17
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->h()Z

    move-result v2

    if-nez v2, :cond_1

    .line 18
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z:Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    iget-object v3, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->j:[Ljava/security/cert/Certificate;

    invoke-interface {v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;->e([Ljava/security/cert/Certificate;)V

    .line 19
    :cond_1
    iput-boolean p5, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->t:Z

    .line 20
    iget-object v2, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->o:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 22
    :try_start_0
    iget-wide v3, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->q()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-static {v3, v4, v5}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->newSSL(JZ)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 24
    monitor-enter p0

    .line 25
    :try_start_1
    iput-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->K()I

    move-result v2

    invoke-static {v3, v4, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioNewByteBuffer(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    if-eqz p2, :cond_3

    goto :goto_2

    .line 27
    :cond_3
    iget-object p4, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->k:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    :goto_2
    invoke-direct {p0, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->f0(Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;)V

    .line 28
    iget-object p4, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->l:[Ljava/lang/String;

    if-eqz p4, :cond_4

    .line 29
    invoke-direct {p0, p4, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->g0([Ljava/lang/String;Z)V

    goto :goto_3

    .line 30
    :cond_4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->h:[Ljava/lang/String;

    :goto_3
    if-eqz p2, :cond_6

    .line 31
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->n(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 32
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result p4

    const/16 v0, 0x8

    if-lt p4, v0, :cond_5

    .line 33
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q;->e(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 34
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v2, v3, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->a(JLjava/lang/String;)V

    .line 35
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->p:Ljava/util/List;

    goto :goto_4

    .line 36
    :cond_5
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v2, v3, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->a(JLjava/lang/String;)V

    .line 37
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->p:Ljava/util/List;

    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    .line 38
    iget-wide p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {p3, p4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->enableOcsp(J)V

    :cond_7
    if-nez p5, :cond_8

    .line 39
    iget-wide p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {p3, p4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getMode(J)I

    move-result p5

    sget v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->q:I

    or-int/2addr p5, v0

    invoke-static {p3, p4, p5}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setMode(JI)I

    .line 40
    :cond_8
    iget-wide p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {p3, p4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getOptions(J)I

    move-result p3

    sget p4, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->g:I

    const-string p5, "TLSv1.3"

    invoke-static {p3, p4, p5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->N(IILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    if-eqz p2, :cond_9

    .line 41
    sget-boolean p3, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->x:Z

    goto :goto_5

    :cond_9
    sget-boolean p3, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->z:Z

    :goto_5
    if-eqz p3, :cond_a

    .line 42
    iget-wide p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    sget p5, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->h:I

    invoke-static {p3, p4, p5}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->clearOptions(JI)V

    .line 43
    :cond_a
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->i()Z

    move-result p3

    if-eqz p3, :cond_b

    if-eqz p2, :cond_b

    .line 44
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    sget p4, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->B:I

    invoke-static {p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setRenegotiateMode(JI)V

    .line 45
    :cond_b
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p2

    .line 46
    :try_start_3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i0()V

    .line 47
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    .line 48
    :goto_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->y:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    .line 50
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->retain()Lio/grpc/netty/shaded/io/netty/util/s;

    if-eqz p6, :cond_c

    .line 51
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->H:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-virtual {p1, p0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->l(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/v;

    move-result-object p1

    goto :goto_7

    :cond_c
    const/4 p1, 0x0

    :goto_7
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->j:Lio/grpc/netty/shaded/io/netty/util/v;

    return-void

    :catchall_1
    move-exception p1

    .line 52
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 53
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 54
    throw p1
.end method

.method private A()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "engine closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private B()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->d:Z

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->closeOutbound()V

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->closeInbound()V

    return-void
.end method

.method private C()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->isInInit(J)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->shutdownSSL(J)I

    move-result v0

    if-gez v0, :cond_4

    .line 3
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v0

    .line 4
    sget v2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->M:I

    if-eq v0, v2, :cond_2

    sget v2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->I:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->clearError()V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->G:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v2

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getErrorString(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SSL_shutdown failed: OpenSSL error: {} {}"

    invoke-interface {v0, v4, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i0()V

    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private D(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->g:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->Y(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object p1
.end method

.method private E(IILjavax/net/ssl/SSLException;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget p3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->I:I

    invoke-direct {p0, p3, v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->q0(IIII)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    throw p3
.end method

.method private F()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->g:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 5
    :cond_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->A()V

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 7
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->doHandshake(J)I

    move-result v0

    if-gtz v0, :cond_2

    .line 8
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->clearError()V

    .line 9
    :cond_2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->G()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 10
    :cond_3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->w:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;->b(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)V

    .line 11
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i:Z

    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->y:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v2

    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->f(Ljava/lang/String;IJ)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i:Z

    .line 14
    :cond_4
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->m:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->m:J

    .line 16
    :cond_5
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->doHandshake(J)I

    move-result v0

    if-gtz v0, :cond_c

    .line 17
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v0

    .line 18
    sget v1, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->J:I

    if-eq v0, v1, :cond_b

    sget v1, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->K:I

    if-ne v0, v1, :cond_6

    goto :goto_1

    .line 19
    :cond_6
    sget v1, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->L:I

    if-eq v0, v1, :cond_a

    sget v1, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->R:I

    if-eq v0, v1, :cond_a

    sget v1, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->Q:I

    if-ne v0, v1, :cond_7

    goto :goto_0

    .line 20
    :cond_7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v1

    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->T(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 22
    :cond_8
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    .line 23
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->G()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v1, "SSL_do_handshake"

    .line 24
    invoke-direct {p0, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->j0(Ljava/lang/String;I)Ljavax/net/ssl/SSLException;

    move-result-object v0

    throw v0

    .line 25
    :cond_a
    :goto_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 26
    :cond_b
    :goto_1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->Y(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 27
    :cond_c
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    if-lez v0, :cond_d

    .line 28
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 29
    :cond_d
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z:Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getSessionId(J)[B

    move-result-object v2

    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getCipherForSSL(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v4, v5}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getVersion(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    .line 30
    invoke-static {v5, v6}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getPeerCertificate(J)[B

    move-result-object v5

    iget-wide v6, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v6, v7}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getPeerCertChain(J)[[B

    move-result-object v6

    iget-wide v7, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    .line 31
    invoke-static {v7, v8}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getTime(J)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->y:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->z()J

    move-result-wide v11

    mul-long v9, v9, v11

    .line 32
    invoke-interface/range {v1 .. v10}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;->d([BLjava/lang/String;Ljava/lang/String;[B[[BJJ)V

    .line 33
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->e0()V

    .line 34
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method

.method private G()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i0()V

    .line 6
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    throw v0

    .line 8
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "General OpenSslEngine problem"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw v1
.end method

.method private I(III)Z
    .locals 6

    int-to-long v0, p1

    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->D:I

    int-to-long v2, p1

    int-to-long v4, p3

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    int-to-long p1, p2

    cmp-long p3, v0, p1

    if-ltz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private J()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->e:Z

    return v0
.end method

.method private static K([B)Z
    .locals 0

    if-eqz p0, :cond_1

    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static L([Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_1

    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static M(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static N(IILjava/lang/String;)Z
    .locals 0

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->l:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Q(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :cond_1
    return-object p1
.end method

.method private R(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    sget-object p3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, p3, :cond_2

    if-lez p2, :cond_2

    .line 2
    :cond_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, p2, :cond_3

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p2

    :cond_3
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->Q(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private S()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private T(I)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    if-lez v0, :cond_2

    int-to-long v0, p1

    .line 2
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getErrorString(J)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    if-nez p1, :cond_1

    .line 5
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 7
    :goto_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->clearError()V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private U(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->V(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method private V(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isInboundDone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i0()V

    .line 5
    :cond_0
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p1, v0, p2, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object p1

    .line 6
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->g:Z

    .line 8
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0
.end method

.method private W(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->R(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->U(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method private X(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->R(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->V(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method private static Y(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 0

    if-lez p0, :cond_0

    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    :cond_0
    sget-object p0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_0
    return-object p0
.end method

.method private Z(Ljava/nio/ByteBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->w(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->readFromSSL(JJI)I

    move-result v1

    if-lez v1, :cond_2

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->P()I

    move-result v2

    sub-int v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->v:Lkg/k;

    invoke-interface {v3, v2}, Lkg/k;->h(I)Lkg/j;

    move-result-object v3

    .line 8
    :try_start_0
    iget-wide v4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->n(Lkg/j;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->readFromSSL(JJI)I

    move-result v2

    if-lez v2, :cond_1

    add-int/2addr v0, v2

    .line 9
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    invoke-virtual {v3}, Lkg/j;->Q1()I

    move-result v0

    invoke-virtual {v3, v0, p1}, Lkg/j;->y0(ILjava/nio/ByteBuffer;)Lkg/j;

    .line 11
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    move v1, v2

    :cond_2
    :goto_0
    return v1

    :catchall_0
    move-exception p1

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 13
    throw p1
.end method

.method private a0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->u:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getHandshakeCount(J)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->u:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    .line 2
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getHandshakeCount(J)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z:Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    .line 3
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TLSv1.3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i0()V

    .line 5
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "remote-initiated renegotiation not allowed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Lio/grpc/netty/shaded/io/netty/util/v;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->j:Lio/grpc/netty/shaded/io/netty/util/v;

    return-object p0
.end method

.method private b0()V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->B:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method private c0()V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->A:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method private d0(Ljava/util/List;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ACCEPT:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    if-ne p2, v0, :cond_0

    return-object p3

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p3

    .line 4
    :cond_1
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->CHOOSE_MY_LAST_PROTOCOL:Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    if-ne p2, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 6
    :cond_2
    new-instance p1, Ljavax/net/ssl/SSLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown protocol "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic e(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->y:Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    return-object p0
.end method

.method private e0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->x:Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;->d()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->x:Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b;->b()Ljava/util/List;

    move-result-object v1

    .line 3
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$c;->c:[I

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->x:Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;->protocol()Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 4
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getAlpnSelected(J)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getNextProtoNegotiated(J)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_4

    .line 6
    invoke-direct {p0, v1, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->d0(Ljava/util/List;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->f:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 8
    :cond_2
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getNextProtoNegotiated(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 9
    invoke-direct {p0, v1, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->d0(Ljava/util/List;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->f:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_3
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getAlpnSelected(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 11
    invoke-direct {p0, v1, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->d0(Ljava/util/List;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->f:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method

.method private f0(Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->u:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    if-ne v0, p1, :cond_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$c;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 7
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v3, v4, v1, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setVerify(JII)V

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v0, v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setVerify(JII)V

    goto :goto_0

    .line 10
    :cond_4
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setVerify(JII)V

    .line 11
    :cond_5
    :goto_0
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private g0([Ljava/lang/String;Z)V
    .locals 12

    const-string v0, "protocols"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->I:[I

    array-length v0, v0

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_d

    aget-object v6, p1, v3

    .line 4
    sget-object v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->l:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "SSLv2"

    .line 5
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v7, :cond_1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-gez v4, :cond_b

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const-string v7, "SSLv3"

    .line 6
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-le v0, v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-ge v4, v5, :cond_b

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "TLSv1"

    .line 7
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-le v0, v11, :cond_4

    const/4 v0, 0x2

    :cond_4
    if-ge v4, v11, :cond_b

    const/4 v4, 0x2

    goto :goto_1

    :cond_5
    const-string v5, "TLSv1.1"

    .line 8
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-le v0, v10, :cond_6

    const/4 v0, 0x3

    :cond_6
    if-ge v4, v10, :cond_b

    const/4 v4, 0x3

    goto :goto_1

    :cond_7
    const-string v5, "TLSv1.2"

    .line 9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-le v0, v9, :cond_8

    const/4 v0, 0x4

    :cond_8
    if-ge v4, v9, :cond_b

    const/4 v4, 0x4

    goto :goto_1

    :cond_9
    const-string v5, "TLSv1.3"

    .line 10
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-le v0, v8, :cond_a

    const/4 v0, 0x5

    :cond_a
    if-ge v4, v8, :cond_b

    const/4 v4, 0x5

    :cond_b
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Protocol "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_d
    monitor-enter p0

    if-eqz p2, :cond_e

    .line 13
    :try_start_0
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->h:[Ljava/lang/String;

    .line 14
    :cond_e
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result p2

    if-nez p2, :cond_11

    .line 15
    iget-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    sget v1, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->b:I

    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->c:I

    or-int/2addr v1, v3

    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->d:I

    or-int/2addr v1, v3

    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->e:I

    or-int/2addr v1, v3

    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->f:I

    or-int/2addr v1, v3

    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->g:I

    or-int/2addr v1, v3

    invoke-static {p1, p2, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->clearOptions(JI)V

    const/4 p1, 0x0

    :goto_2
    if-ge v2, v0, :cond_f

    .line 16
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->I:[I

    aget p2, p2, v2

    or-int/2addr p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_f
    add-int/2addr v4, v5

    .line 17
    :goto_3
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->I:[I

    array-length v0, p2

    if-ge v4, v0, :cond_10

    .line 18
    aget p2, p2, v4

    or-int/2addr p1, p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 19
    :cond_10
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setOptions(JI)V

    .line 20
    monitor-exit p0

    return-void

    .line 21
    :cond_11
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to enable protocols: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic h(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->r0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i([Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->L([Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic j([B)Z
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->K([B)Z

    move-result p0

    return p0
.end method

.method private j0(Ljava/lang/String;I)Ljavax/net/ssl/SSLException;
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->k0(Ljava/lang/String;II)Ljavax/net/ssl/SSLException;

    move-result-object p1

    return-object p1
.end method

.method static synthetic k(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z()V

    return-void
.end method

.method private k0(Ljava/lang/String;II)Ljavax/net/ssl/SSLException;
    .locals 4

    int-to-long v0, p3

    .line 1
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getErrorString(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->G:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object v0, v2, p1

    const-string p1, "{} failed with {}: OpenSSL error: {} {}"

    .line 4
    invoke-interface {v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i0()V

    .line 6
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-ne p1, p2, :cond_1

    .line 7
    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    :cond_2
    return-object p1
.end method

.method static synthetic l(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;)Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    return-object p1
.end method

.method private l0(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->B:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method private m0(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->A:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method static synthetic n(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->u:Z

    return p0
.end method

.method static synthetic o(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->p:Ljava/util/List;

    return-object p0
.end method

.method private o0()I
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->sslPending(J)I

    move-result v0

    :goto_0
    return v0
.end method

.method static synthetic p(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Z
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result p0

    return p0
.end method

.method static synthetic q(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    return-wide v0
.end method

.method private q0(IIII)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->T(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p1, p2, v0, p3, p4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object p1

    :cond_0
    const-string p3, "SSL_read"

    .line 3
    invoke-direct {p0, p3, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->k0(Ljava/lang/String;II)Ljavax/net/ssl/SSLException;

    move-result-object p1

    throw p1
.end method

.method static synthetic r(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->g:Z

    return p1
.end method

.method private r0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getVersion(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->s0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic s(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z:Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    return-object p0
.end method

.method private static s0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_1
    :goto_0
    const/16 p0, 0x53

    if-eq v0, p0, :cond_3

    const/16 p0, 0x54

    if-eq v0, p0, :cond_2

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_2
    const-string p0, "TLS"

    return-object p0

    :cond_3
    const-string p0, "SSL"

    return-object p0
.end method

.method static synthetic t(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->m:J

    return-wide v0
.end method

.method private v0(Ljava/nio/ByteBuffer;I)Lkg/j;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->w(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    int-to-long v0, v0

    add-long/2addr v4, v0

    const/4 v7, 0x0

    move v6, p2

    invoke-static/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->v:Lkg/k;

    invoke-interface {v1, p2}, Lkg/k;->h(I)Lkg/j;

    move-result-object v1

    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int v3, v0, p2

    .line 6
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {v1, p1}, Lkg/j;->w2(Ljava/nio/ByteBuffer;)Lkg/j;

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    iget-wide v4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->n(Lkg/j;)J

    move-result-wide v6

    const/4 v9, 0x0

    move v8, p2

    invoke-static/range {v4 .. v9}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 11
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 12
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static w(Ljava/nio/ByteBuffer;)J
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method private w0(Ljava/nio/ByteBuffer;I)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->w(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4, p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->writeToSSL(JJI)I

    move-result p2

    if-lez p2, :cond_2

    add-int/2addr v0, p2

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->v:Lkg/k;

    invoke-interface {v2, p2}, Lkg/k;->h(I)Lkg/j;

    move-result-object v2

    add-int v3, v0, p2

    .line 7
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3, p1}, Lkg/j;->Z1(ILjava/nio/ByteBuffer;)Lkg/j;

    .line 9
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->n(Lkg/j;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->writeToSSL(JJI)I

    move-result p2

    if-lez p2, :cond_1

    add-int/2addr v0, p2

    .line 11
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_0
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_2
    :goto_1
    return p2

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 14
    throw p1
.end method

.method private z()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getMaxWrapOverhead(J)I

    move-result v0

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->D:I

    .line 2
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->P()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->P()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->E:I

    return-void
.end method


# virtual methods
.method final H(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method final declared-synchronized O()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->P()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final P()I
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->D:I

    sget v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J:I

    add-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized beginHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$c;->a:[I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->A()V

    .line 4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    .line 5
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z()V

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "renegotiation unsupported"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    .line 8
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v2, :cond_4

    .line 9
    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->g:Z

    .line 10
    :cond_4
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized closeInbound()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->r:Z

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i0()V

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->d:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Inbound closed before receiving peer\'s close_notify: possible truncation attack?"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized closeOutbound()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->s:Z

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getShutdown(J)I

    move-result v0

    .line 6
    sget v1, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->F:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 7
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->C()Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApplicationProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized getDelegatedTask()Ljava/lang/Runnable;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getTask(J)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 4
    monitor-exit p0

    return-object v1

    .line 5
    :cond_1
    :try_start_2
    instance-of v1, v0, Lrg/a;

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;

    check-cast v0, Lrg/a;

    invoke-direct {v1, p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Lrg/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 7
    :cond_2
    :try_start_3
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g;

    invoke-direct {v1, p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getEnableSessionCreation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getEnabledCipherSuites()[Ljava/lang/String;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getCiphers(J)[Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getOptions(J)I

    move-result v1

    .line 5
    sget v2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->g:I

    const-string v3, "TLSv1.3"

    invoke-static {v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->N(IILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->m:[Ljava/lang/String;

    const/4 v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 9
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    return-object v0

    .line 10
    :cond_1
    new-instance v4, Ljava/util/LinkedHashSet;

    array-length v5, v0

    array-length v6, v1

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 11
    monitor-enter p0

    const/4 v5, 0x0

    .line 12
    :goto_1
    :try_start_1
    array-length v6, v0

    if-ge v5, v6, :cond_5

    .line 13
    aget-object v6, v0, v5

    invoke-direct {p0, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->r0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 14
    aget-object v6, v0, v5

    :cond_2
    if-eqz v3, :cond_3

    .line 15
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->l()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-static {v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 17
    :cond_5
    invoke-static {v4, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 18
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v2, [Ljava/lang/String;

    .line 19
    invoke-interface {v4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    .line 20
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 21
    :cond_6
    :try_start_3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    .line 22
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final getEnabledProtocols()[Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "SSLv2Hello"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 5
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getOptions(J)I

    move-result v1

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->d:I

    const-string v4, "TLSv1"

    invoke-static {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->N(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TLSv1"

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->e:I

    const-string v4, "TLSv1.1"

    invoke-static {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->N(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TLSv1.1"

    .line 10
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->f:I

    const-string v4, "TLSv1.2"

    invoke-static {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->N(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "TLSv1.2"

    .line 12
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->g:I

    const-string v4, "TLSv1.3"

    invoke-static {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->N(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "TLSv1.3"

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->b:I

    const-string v4, "SSLv2"

    invoke-static {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->N(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "SSLv2"

    .line 16
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_4
    sget v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->c:I

    const-string v4, "SSLv3"

    invoke-static {v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->N(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "SSLv3"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-array v1, v2, [Ljava/lang/String;

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_6
    :try_start_1
    new-array v1, v2, [Ljava/lang/String;

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getHandshakeApplicationProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$c;->a:[I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z:Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->g:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->Y(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5
    :cond_1
    :try_start_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getNeedClientAuth()Z
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;->REQUIRE:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final declared-synchronized getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_3

    .line 3
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->o:Ljava/lang/Object;

    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p;->a(Ljavax/net/ssl/SSLParameters;Ljava/lang/Object;)V

    const/16 v2, 0x8

    if-lt v1, v2, :cond_3

    .line 5
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->p:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q;->g(Ljavax/net/ssl/SSLParameters;Ljava/util/List;)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    .line 9
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getOptions(J)I

    move-result v1

    sget v2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->a:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q;->h(Ljavax/net/ssl/SSLParameters;Z)V

    .line 11
    :cond_2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->q:Ljava/util/Collection;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q;->f(Ljavax/net/ssl/SSLParameters;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z:Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 2

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->d:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getSupportedProtocols()[Ljava/lang/String;
    .locals 2

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->l:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final getUseClientMode()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->u:Z

    return v0
.end method

.method public final getWantClientAuth()Z
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->l:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;->OPTIONAL:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final h0(Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return p1

    .line 4
    :cond_0
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;->m()J

    move-result-wide v2

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;->c()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setKeyMaterial(JJJ)V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z:Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;->f()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;->e([Ljava/security/cert/Certificate;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized i0()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->e:Z

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->w:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-interface {v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;->a(J)Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    .line 4
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->freeSSL(J)V

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    iput-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    .line 6
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->s:Z

    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->r:Z

    .line 7
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->clearError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isInboundDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isOutboundDone()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->s:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized n0()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->o0()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p0()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final refCnt()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->k:Lio/grpc/netty/shaded/io/netty/util/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt()I

    move-result v0

    return v0
.end method

.method public final release()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->k:Lio/grpc/netty/shaded/io/netty/util/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/b;->release()Z

    move-result v0

    return v0
.end method

.method public final retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->k:Lio/grpc/netty/shaded/io/netty/util/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/b;->retain()Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public final setEnableSessionCreation(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 6

    const-string v0, "cipherSuites"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->i()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/h;->c(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->l()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TLSv1.3 is not supported by this java version."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :goto_0
    monitor-enter p0

    .line 10
    :try_start_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    .line 11
    :try_start_1
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setCipherSuites(JLjava/lang/String;Z)Z

    .line 12
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->G:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {v4, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->b(Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v4, v5}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setCipherSuites(JLjava/lang/String;Z)Z

    .line 14
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->h:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->h:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "TLSv1"

    .line 17
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v2, "TLSv1.1"

    .line 18
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v2, "TLSv1.2"

    .line 19
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v2, "SSLv3"

    .line 20
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v2, "SSLv2"

    .line 21
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v2, "SSLv2Hello"

    .line 22
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 23
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "TLSv1.3"

    .line 24
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 25
    :cond_4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->g0([Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to enable cipher suites: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 28
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to enable cipher suites: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->g0([Ljava/lang/String;Z)V

    return-void
.end method

.method public final setNeedClientAuth(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;->REQUIRE:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;->NONE:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    :goto_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->f0(Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;)V

    return-void
.end method

.method public final declared-synchronized setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_7

    .line 2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v1

    if-nez v1, :cond_6

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v1

    const/16 v2, 0x8

    if-lt v0, v2, :cond_4

    if-nez v1, :cond_3

    .line 4
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->u:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q;->c(Ljavax/net/ssl/SSLParameters;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    iget-wide v4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v4, v5, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->p:Ljava/util/List;

    .line 9
    :cond_1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q;->d(Ljavax/net/ssl/SSLParameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    sget v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->a:I

    invoke-static {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setOptions(JI)V

    goto :goto_1

    .line 11
    :cond_2
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    sget v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->a:I

    invoke-static {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->clearOptions(JI)V

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getSNIMatchers()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->q:Ljava/util/Collection;

    .line 13
    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_5

    .line 14
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->u:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->M(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->setVerify(JII)V

    .line 16
    :cond_5
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->n:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->o:Ljava/lang/Object;

    goto :goto_2

    .line 18
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AlgorithmConstraints are not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setUseClientMode(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->u:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setWantClientAuth(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;->OPTIONAL:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;->NONE:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    :goto_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->f0(Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;)V

    return-void
.end method

.method public final t0([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    const-string v7, "srcs"

    .line 1
    invoke-static {v0, v7}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v7, v0

    if-ge v2, v7, :cond_32

    add-int v7, v2, v3

    array-length v8, v0

    if-gt v7, v8, :cond_32

    const-string v3, "dsts"

    .line 3
    invoke-static {v4, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    array-length v3, v4

    if-ge v5, v3, :cond_31

    add-int v3, v5, v6

    array-length v8, v4

    if-gt v3, v8, :cond_31

    move v6, v5

    const-wide/16 v10, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    .line 5
    aget-object v12, v4, v6

    const-string v13, "dsts"

    invoke-static {v12, v6, v13}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->i(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v13

    if-nez v13, :cond_0

    .line 7
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    :cond_1
    move v6, v2

    const-wide/16 v12, 0x0

    :goto_1
    if-ge v6, v7, :cond_2

    .line 9
    aget-object v14, v0, v6

    const-string v15, "srcs"

    invoke-static {v14, v6, v15}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->i(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 11
    :cond_2
    monitor-enter p0

    .line 12
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isInboundDone()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 13
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isOutboundDone()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->O:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->P:Ljavax/net/ssl/SSLEngineResult;

    :goto_3
    monitor-exit p0

    return-object v0

    .line 14
    :cond_5
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 15
    iget-object v14, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    sget-object v15, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    const/4 v8, 0x0

    if-eq v14, v15, :cond_9

    .line 16
    sget-object v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-eq v14, v6, :cond_6

    .line 17
    sget-object v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    iput-object v6, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    .line 18
    :cond_6
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    .line 19
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v9, :cond_7

    .line 20
    invoke-direct {v1, v6, v8, v8}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->U(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 21
    :cond_7
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v9, :cond_8

    .line 22
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->N:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit p0

    return-object v0

    .line 23
    :cond_8
    iget-boolean v9, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->r:Z

    if-eqz v9, :cond_9

    .line 24
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->O:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit p0

    return-object v0

    .line 25
    :cond_9
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->o0()I

    move-result v9

    .line 26
    iget-boolean v14, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->t:Z

    if-eqz v14, :cond_f

    const-wide/16 v14, 0x5

    cmp-long v16, v12, v14

    if-gez v16, :cond_a

    .line 27
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {v1, v0, v6, v8, v8}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->X(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 28
    :cond_a
    invoke-static/range {p1 .. p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v1;->e([Ljava/nio/ByteBuffer;I)I

    move-result v14

    const/4 v15, -0x2

    if-eq v14, v15, :cond_e

    add-int/lit8 v15, v14, -0x5

    move/from16 p3, v9

    int-to-long v8, v15

    cmp-long v16, v8, v10

    if-lez v16, :cond_c

    .line 29
    sget v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->K:I

    if-gt v15, v0, :cond_b

    .line 30
    iget-object v0, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z:Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    invoke-interface {v0, v15}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;->a(I)V

    .line 31
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v6, v2, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->X(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 32
    :cond_b
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal packet length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->z:Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    .line 33
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    int-to-long v8, v14

    cmp-long v10, v12, v8

    if-gez v10, :cond_d

    .line 34
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v6, v2, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->X(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_d
    const/4 v8, 0x0

    goto :goto_4

    .line 35
    :cond_e
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/NotSslRecordException;

    const-string v2, "not an SSL/TLS record"

    invoke-direct {v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move/from16 p3, v9

    const-wide/16 v8, 0x0

    cmp-long v14, v12, v8

    if-nez v14, :cond_10

    if-gtz p3, :cond_10

    .line 36
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v6, v2, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->X(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_10
    const-wide/16 v8, 0x0

    cmp-long v14, v10, v8

    if-nez v14, :cond_11

    .line 37
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v8, 0x0

    invoke-direct {v1, v0, v6, v8, v8}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->X(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_11
    const/4 v8, 0x0

    const-wide/32 v9, 0x7fffffff

    .line 38
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    long-to-int v14, v9

    :goto_4
    move/from16 v10, p3

    const/4 v9, 0x0

    .line 39
    :cond_12
    :goto_5
    :try_start_1
    aget-object v11, v0, v2

    .line 40
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    if-nez v12, :cond_14

    if-gtz v10, :cond_13

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v7, :cond_12

    goto/16 :goto_10

    .line 41
    :cond_13
    iget-wide v12, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v12, v13}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v12

    move v13, v12

    const/4 v12, 0x0

    goto :goto_6

    .line 42
    :cond_14
    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :try_start_2
    invoke-direct {v1, v11, v12}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->v0(Ljava/nio/ByteBuffer;I)Lkg/j;

    move-result-object v13
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v18, v13

    move v13, v12

    move-object/from16 v12, v18

    .line 44
    :cond_15
    :goto_6
    :try_start_3
    aget-object v15, v4, v5

    .line 45
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v16, :cond_16

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v3, :cond_15

    if-eqz v12, :cond_2a

    .line 46
    :goto_7
    :try_start_4
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_10

    :cond_16
    move/from16 p2, v10

    .line 47
    :try_start_5
    invoke-direct {v1, v15}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->Z(Ljava/nio/ByteBuffer;)I

    move-result v10
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v17, v6

    move/from16 v16, v7

    .line 48
    :try_start_6
    iget-wide v6, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v6, v7}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v6

    sub-int v6, v13, v6

    add-int/2addr v8, v6

    sub-int/2addr v14, v6

    sub-int/2addr v13, v6

    .line 49
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v11, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-lez v10, :cond_1e

    add-int/2addr v9, v10

    .line 50
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 51
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->o0()I

    move-result v10

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v3, :cond_1a

    if-lez v10, :cond_17

    .line 52
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    move-object/from16 v6, v17

    .line 53
    invoke-direct {v1, v0, v6, v8, v9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->V(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    goto :goto_9

    :cond_17
    move-object/from16 v6, v17

    .line 54
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_8

    :cond_18
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_8
    invoke-direct {v1, v0, v6, v8, v9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->X(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_9
    if-eqz v12, :cond_19

    .line 55
    :try_start_7
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 56
    :cond_19
    :try_start_8
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 57
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a0()V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    return-object v0

    :cond_1a
    move-object/from16 v6, v17

    goto :goto_a

    :cond_1b
    move-object/from16 v6, v17

    if-eqz v14, :cond_1d

    .line 58
    :try_start_9
    iget-boolean v7, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->t:Z

    if-eqz v7, :cond_1c

    goto :goto_b

    :cond_1c
    move/from16 v10, p2

    :goto_a
    move/from16 v7, v16

    goto :goto_6

    :cond_1d
    :goto_b
    if-eqz v12, :cond_2a

    goto :goto_7

    :cond_1e
    move/from16 p3, v14

    move-object/from16 v6, v17

    .line 59
    iget-wide v13, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v13, v14, v10}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getError(JI)I

    move-result v7

    .line 60
    sget v10, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->J:I

    if-eq v7, v10, :cond_29

    sget v10, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->K:I

    if-ne v7, v10, :cond_1f

    goto/16 :goto_f

    .line 61
    :cond_1f
    sget v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->N:I

    if-ne v7, v0, :cond_23

    .line 62
    iget-boolean v0, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->d:Z

    if-nez v0, :cond_20

    .line 63
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->B()V

    .line 64
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_c

    :cond_21
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_c
    invoke-direct {v1, v0, v6, v8, v9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->X(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v12, :cond_22

    .line 65
    :try_start_a
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 66
    :cond_22
    :try_start_b
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 67
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a0()V

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    return-object v0

    .line 68
    :cond_23
    :try_start_c
    sget v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->L:I

    if-eq v7, v0, :cond_26

    sget v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->R:I

    if-eq v7, v0, :cond_26

    sget v0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->Q:I

    if-ne v7, v0, :cond_24

    goto :goto_d

    .line 69
    :cond_24
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getLastErrorNumber()I

    move-result v0

    invoke-direct {v1, v7, v0, v8, v9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->q0(IIII)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v12, :cond_25

    .line 70
    :try_start_d
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 71
    :cond_25
    :try_start_e
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 72
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a0()V

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    return-object v0

    .line 73
    :cond_26
    :goto_d
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_e

    :cond_27
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_e
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v1, v0, v2, v8, v9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->V(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v12, :cond_28

    .line 74
    :try_start_10
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 75
    :cond_28
    :try_start_11
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 76
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a0()V

    monitor-exit p0

    return-object v0

    :cond_29
    :goto_f
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v16

    if-lt v2, v7, :cond_2d

    if-eqz v12, :cond_2a

    goto/16 :goto_7

    .line 77
    :cond_2a
    :goto_10
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 78
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a0()V

    .line 79
    iget-boolean v0, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->d:Z

    if-nez v0, :cond_2b

    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getShutdown(J)I

    move-result v0

    sget v2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->G:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2b

    .line 80
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->B()V

    .line 81
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_11

    :cond_2c
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_11
    invoke-direct {v1, v0, v6, v8, v9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->X(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    return-object v0

    :cond_2d
    if-eqz v12, :cond_2e

    .line 82
    :try_start_12
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_2e
    move/from16 v10, p2

    move/from16 v14, p3

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 83
    :try_start_13
    invoke-direct {v1, v8, v9, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->E(IILjavax/net/ssl/SSLException;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v12, :cond_2f

    .line 84
    :try_start_14
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 85
    :cond_2f
    :try_start_15
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 86
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a0()V

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v12, :cond_30

    .line 87
    :try_start_16
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 88
    :cond_30
    throw v0

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 89
    invoke-direct {v1, v8, v9, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->E(IILjavax/net/ssl/SSLException;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 90
    :try_start_17
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 91
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a0()V

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    .line 92
    iget-wide v2, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    .line 93
    invoke-direct/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a0()V

    .line 94
    throw v0

    :catchall_2
    move-exception v0

    .line 95
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    throw v0

    .line 96
    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (expected: offset <= offset + length <= dsts.length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_32
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: offset <= offset + length <= srcs.length ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "))"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->k:Lio/grpc/netty/shaded/io/netty/util/b;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/s;->touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;

    return-object p0
.end method

.method public final u0([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    array-length v3, p1

    array-length v6, p2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->t0([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->m0(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->l0(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->u0([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c0()V

    .line 8
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c0()V

    .line 11
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b0()V

    .line 12
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 13
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->m0(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->u0([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c0()V

    .line 17
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->m0(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->t0([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c0()V

    .line 5
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized v()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->authenticationMethods(J)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->m0(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 180
    :try_start_2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c0()V

    .line 181
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const-string v0, "srcs"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "dst"

    .line 2
    invoke-static {p4, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    array-length v0, p1

    if-ge p2, v0, :cond_42

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_42

    .line 4
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result p3

    if-nez p3, :cond_41

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isOutboundDone()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isInboundDone()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->M:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->P:Ljavax/net/ssl/SSLEngineResult;

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    return-object p1

    :cond_2
    const/4 p3, 0x0

    const/4 v1, 0x0

    .line 8
    :try_start_1
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->w(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v7, v2

    add-long/2addr v5, v7

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V

    move-object v2, p3

    goto :goto_2

    .line 10
    :cond_3
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->v:Lkg/k;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-interface {v2, v3}, Lkg/k;->h(I)Lkg/j;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 11
    :try_start_2
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->n(Lkg/j;)J

    move-result-wide v5

    invoke-virtual {v2}, Lkg/j;->t2()I

    move-result v7

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioSetByteBuffer(JJIZ)V

    .line 12
    :goto_2
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v3, v4}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v3

    .line 13
    iget-boolean v4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->s:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_b

    .line 14
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->I(III)Z

    move-result p1

    if-nez p1, :cond_5

    .line 15
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p3

    invoke-direct {p1, p2, p3, v1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 16
    :try_start_3
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_4

    .line 17
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v1}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 19
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    return-object p1

    .line 20
    :cond_5
    :try_start_4
    iget-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-gtz p1, :cond_7

    .line 21
    :try_start_5
    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p2, v1, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->W(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 22
    :try_start_6
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_6

    .line 23
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4

    .line 24
    :cond_6
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p3

    invoke-virtual {v2, p3, p1}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 25
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    return-object p2

    .line 26
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->C()Z

    move-result p2

    if-nez p2, :cond_9

    .line 27
    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p2, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->W(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 28
    :try_start_8
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_8

    .line 29
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_5

    .line 30
    :cond_8
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p3

    invoke-virtual {v2, p3, p1}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 31
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_5
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    return-object p2

    .line 32
    :cond_9
    :try_start_9
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    sub-int/2addr v3, p1

    .line 33
    :try_start_a
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p1, v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->W(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 34
    :try_start_b
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_a

    .line 35
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6

    .line 36
    :cond_a
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v3}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 37
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_6
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    return-object p1

    :catchall_0
    move-exception p1

    move-object p3, v2

    move v1, v3

    goto/16 :goto_23

    :catchall_1
    move-exception p2

    move v1, p1

    move-object p1, p2

    goto/16 :goto_22

    .line 38
    :cond_b
    :try_start_c
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 39
    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    sget-object v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-eq v6, v7, :cond_1b

    .line 40
    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    if-eq v6, v4, :cond_c

    .line 41
    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    iput-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$f;

    .line 42
    :cond_c
    iget-wide v6, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v6, v7}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 43
    :try_start_d
    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    if-eqz v6, :cond_10

    if-lez v4, :cond_e

    .line 44
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p1, v1, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->U(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 45
    :try_start_e
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_d

    .line 46
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_7

    .line 47
    :cond_d
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v4}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 48
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_7
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    return-object p1

    .line 49
    :cond_e
    :try_start_f
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->G()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    invoke-direct {p0, p1, v1, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->U(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 50
    :try_start_10
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_f

    .line 51
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    .line 52
    :cond_f
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v4}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 53
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_8
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    return-object p1

    .line 54
    :cond_10
    :try_start_11
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    .line 55
    iget-wide v7, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v7, v8}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v4

    sub-int v4, v3, v4

    .line 56
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_12

    .line 57
    invoke-direct {p0, v6, v1, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->U(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 58
    :try_start_12
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_11

    .line 59
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_9

    .line 60
    :cond_11
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v4}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_9
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    return-object p1

    :cond_12
    if-lez v4, :cond_16

    .line 62
    :try_start_13
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v6, p1, :cond_14

    if-ne v4, v3, :cond_13

    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_a

    :cond_13
    iget-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    .line 63
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->D(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    .line 64
    :cond_14
    :goto_a
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->Q(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    invoke-direct {p0, p1, v1, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->U(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 65
    :try_start_14
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_15

    .line 66
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_b

    .line 67
    :cond_15
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v4}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 68
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_b
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    return-object p1

    .line 69
    :cond_16
    :try_start_15
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_19

    .line 70
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->isOutboundDone()Z

    move-result p1

    if-eqz p1, :cond_17

    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->M:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_c

    :cond_17
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->L:Ljavax/net/ssl/SSLEngineResult;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 71
    :goto_c
    :try_start_16
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_18

    .line 72
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_d

    .line 73
    :cond_18
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v4}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 74
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_d
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    return-object p1

    .line 75
    :cond_19
    :try_start_17
    iget-boolean v7, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->s:Z

    if-eqz v7, :cond_1c

    .line 76
    iget-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result p1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 77
    :try_start_18
    invoke-direct {p0, v6, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->W(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 78
    :try_start_19
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_1a

    .line 79
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_e

    .line 80
    :cond_1a
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p3

    invoke-virtual {v2, p3, p1}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 81
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_e
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    return-object p2

    :cond_1b
    move-object v6, v4

    const/4 v4, 0x0

    .line 82
    :cond_1c
    :try_start_1a
    iget-boolean v7, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->t:Z

    if-eqz v7, :cond_23

    move v7, p2

    const/4 v8, 0x0

    :goto_f
    if-ge v7, v0, :cond_21

    .line 83
    aget-object v9, p1, v7

    if-eqz v9, :cond_20

    .line 84
    sget v10, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J:I

    if-ne v8, v10, :cond_1d

    goto :goto_10

    .line 85
    :cond_1d
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    add-int/2addr v8, v9

    if-gt v8, v10, :cond_1e

    if-gez v8, :cond_1f

    :cond_1e
    move v8, v10

    :cond_1f
    :goto_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 86
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "srcs["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_21
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-direct {p0, v7, v8, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->I(III)Z

    move-result v5

    if-nez v5, :cond_23

    .line 88
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p3

    invoke-direct {p1, p2, p3, v1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 89
    :try_start_1b
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_22

    .line 90
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_11

    .line 91
    :cond_22
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v4}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 92
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_11
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    return-object p1

    .line 93
    :cond_23
    :try_start_1c
    iget-wide v7, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v7, v8}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioFlushByteBuffer(J)I

    move-result v4

    if-lez v4, :cond_25

    .line 94
    invoke-direct {p0, v6, v1, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->W(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 95
    :try_start_1d
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_24

    .line 96
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_12

    .line 97
    :cond_24
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v4}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 98
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_12
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    return-object p1

    .line 99
    :cond_25
    :try_start_1e
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    if-nez v5, :cond_3f

    :goto_13
    if-ge p2, v0, :cond_3d

    .line 100
    aget-object p3, p1, p2

    .line 101
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_26

    goto :goto_16

    .line 102
    :cond_26
    iget-boolean v7, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->t:Z

    if-eqz v7, :cond_27

    .line 103
    sget v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->J:I

    sub-int/2addr v7, v1

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {p0, p3, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->w0(Ljava/nio/ByteBuffer;I)I

    move-result p3

    goto :goto_15

    .line 104
    :cond_27
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    sub-int/2addr v7, v4

    iget v8, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->D:I

    sub-int/2addr v7, v8

    if-gtz v7, :cond_29

    .line 105
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p3

    invoke-direct {p1, p2, p3, v1, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 106
    :try_start_1f
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_28

    .line 107
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_14

    .line 108
    :cond_28
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v4}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 109
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_14
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    return-object p1

    .line 110
    :cond_29
    :try_start_20
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {p0, p3, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->w0(Ljava/nio/ByteBuffer;I)I

    move-result p3

    .line 111
    :goto_15
    iget-wide v7, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v7, v8}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    if-lez p3, :cond_2d

    add-int/2addr v1, p3

    .line 112
    :try_start_21
    iget-boolean p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->t:Z

    if-nez p3, :cond_2b

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    if-ne v3, p3, :cond_2a

    goto :goto_17

    :cond_2a
    move v4, v3

    move v3, v5

    :goto_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    .line 113
    :cond_2b
    :goto_17
    invoke-direct {p0, v6, v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->W(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 114
    :try_start_22
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_2c

    .line 115
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_18

    .line 116
    :cond_2c
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v3}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 117
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_18
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    return-object p1

    .line 118
    :cond_2d
    :try_start_23
    iget-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->a:J

    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->getError(JI)I

    move-result p1

    .line 119
    sget p2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->N:I

    if-ne p1, p2, :cond_33

    .line 120
    iget-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->d:Z

    if-nez p1, :cond_31

    .line 121
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->B()V

    .line 122
    iget-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthByteBuffer(J)I

    move-result p1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    sub-int/2addr v5, p1

    add-int p1, v3, v5

    .line 123
    :try_start_24
    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v6, p2, :cond_2f

    .line 124
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-ne p1, p2, :cond_2e

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_19

    :cond_2e
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    .line 125
    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioLengthNonApplication(J)I

    move-result p2

    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->D(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p2

    .line 126
    :cond_2f
    :goto_19
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->Q(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p2

    .line 127
    invoke-direct {p0, p2, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->U(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 128
    :try_start_25
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_30

    .line 129
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1a

    .line 130
    :cond_30
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p3

    invoke-virtual {v2, p3, p1}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 131
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_1a
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    return-object p2

    .line 132
    :cond_31
    :try_start_26
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p1, v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->U(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 133
    :try_start_27
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_32

    .line 134
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1b

    .line 135
    :cond_32
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v3}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 136
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_1b
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_5

    return-object p1

    .line 137
    :cond_33
    :try_start_28
    sget p2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->J:I

    if-ne p1, p2, :cond_35

    .line 138
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p1, v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->U(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 139
    :try_start_29
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_34

    .line 140
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1c

    .line 141
    :cond_34
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v3}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 142
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_1c
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    return-object p1

    .line 143
    :cond_35
    :try_start_2a
    sget p2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->K:I

    if-ne p1, p2, :cond_39

    if-lez v3, :cond_37

    .line 144
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p1, v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->U(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 145
    :try_start_2b
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_36

    .line 146
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1d

    .line 147
    :cond_36
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v3}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 148
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_1d
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_5

    return-object p1

    .line 149
    :cond_37
    :try_start_2c
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p0, p1, v6, v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->V(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 150
    :try_start_2d
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_38

    .line 151
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1e

    .line 152
    :cond_38
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v3}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 153
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_1e
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_5

    return-object p1

    .line 154
    :cond_39
    :try_start_2e
    sget p2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->L:I

    if-eq p1, p2, :cond_3b

    sget p2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->R:I

    if-eq p1, p2, :cond_3b

    sget p2, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->Q:I

    if-ne p1, p2, :cond_3a

    goto :goto_1f

    :cond_3a
    const-string p2, "SSL_write"

    .line 155
    invoke-direct {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->j0(Ljava/lang/String;I)Ljavax/net/ssl/SSLException;

    move-result-object p1

    throw p1

    .line 156
    :cond_3b
    :goto_1f
    sget-object p1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p0, p1, v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->U(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 157
    :try_start_2f
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_3c

    .line 158
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_20

    .line 159
    :cond_3c
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v3}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 160
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_20
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5

    return-object p1

    .line 161
    :cond_3d
    :try_start_30
    invoke-direct {p0, v6, v1, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->W(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2

    .line 162
    :try_start_31
    iget-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-nez v2, :cond_3e

    .line 163
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_21

    .line 164
    :cond_3e
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {v2, p2, v4}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 165
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :goto_21
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_5

    return-object p1

    .line 166
    :cond_3f
    :try_start_32
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->F:Ljava/lang/Throwable;

    .line 167
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i0()V

    .line 168
    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-direct {p1, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_2

    :catchall_2
    move-exception p1

    move-object p3, v2

    move v1, v4

    goto :goto_23

    :catchall_3
    move-exception p1

    :goto_22
    move-object p3, v2

    goto :goto_23

    :catchall_4
    move-exception p1

    .line 169
    :goto_23
    :try_start_33
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b:J

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->bioClearByteBuffer(J)V

    if-eqz p3, :cond_40

    .line 170
    invoke-virtual {p3}, Lkg/j;->Q1()I

    move-result p2

    invoke-virtual {p3, p2, v1}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 171
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    goto :goto_24

    .line 172
    :cond_40
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 173
    :goto_24
    throw p1

    :catchall_5
    move-exception p1

    .line 174
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_5

    throw p1

    .line 175
    :cond_41
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1

    .line 176
    :cond_42
    new-instance p4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", length: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected: offset <= offset + length <= srcs.length ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "))"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method final y(II)I
    .locals 6

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->E:I

    int-to-long v0, v0

    int-to-long v2, p1

    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->D:I

    int-to-long v4, p1

    int-to-long p1, p2

    mul-long v4, v4, p1

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method
