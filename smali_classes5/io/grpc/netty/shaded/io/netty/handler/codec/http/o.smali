.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;
.super Lio/grpc/netty/shaded/io/netty/channel/a0;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/netty/shaded/io/netty/channel/a0<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/g0;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/e0;",
        ">;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$a;"
    }
.end annotation


# instance fields
.field private final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Z

.field private j:Z

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;

.field private final l:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x1000

    const/16 v1, 0x2000

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;-><init>(IIIZZ)V

    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;-><init>(IIIZZZ)V

    return-void
.end method

.method public constructor <init>(IIIZZZ)V
    .locals 7

    .line 4
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/a0;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->h:Ljava/util/Queue;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;IIIZ)V

    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$a;)V

    invoke-virtual {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a0;->x(Lio/grpc/netty/shaded/io/netty/channel/o;Lio/grpc/netty/shaded/io/netty/channel/t;)V

    .line 8
    iput-boolean p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->l:Z

    .line 9
    iput-boolean p6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->i:Z

    return-void
.end method

.method static synthetic G(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->h:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic H(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->l:Z

    return p0
.end method

.method static synthetic I(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->j:Z

    return p0
.end method

.method static synthetic J(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->j:Z

    return p1
.end method

.method static synthetic K(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->k:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic L(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->i:Z

    return p0
.end method


# virtual methods
.method public f(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p1

    .line 2
    invoke-interface {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/w;->O0(Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    return-void
.end method

.method public i(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a0;->y()Lio/grpc/netty/shaded/io/netty/channel/t;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;->i:Z

    return-void
.end method
