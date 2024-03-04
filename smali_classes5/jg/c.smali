.class public Ljg/c;
.super Ljg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljg/a<",
        "Ljg/c;",
        "Lio/grpc/netty/shaded/io/netty/channel/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final l:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final m:Lsg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsg/b<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final i:Ljg/d;

.field private volatile j:Lsg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsg/b<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljg/c;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Ljg/c;->l:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    sget-object v0, Lsg/c;->d:Lsg/c;

    sput-object v0, Ljg/c;->m:Lsg/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljg/a;-><init>()V

    .line 2
    new-instance v0, Ljg/d;

    invoke-direct {v0, p0}, Ljg/d;-><init>(Ljg/c;)V

    iput-object v0, p0, Ljg/c;->i:Ljg/d;

    .line 3
    sget-object v0, Ljg/c;->m:Lsg/b;

    iput-object v0, p0, Ljg/c;->j:Lsg/b;

    return-void
.end method

.method private constructor <init>(Ljg/c;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Ljg/a;-><init>(Ljg/a;)V

    .line 5
    new-instance v0, Ljg/d;

    invoke-direct {v0, p0}, Ljg/d;-><init>(Ljg/c;)V

    iput-object v0, p0, Ljg/c;->i:Ljg/d;

    .line 6
    sget-object v0, Ljg/c;->m:Lsg/b;

    iput-object v0, p0, Ljg/c;->j:Lsg/b;

    .line 7
    iget-object v0, p1, Ljg/c;->j:Lsg/b;

    iput-object v0, p0, Ljg/c;->j:Lsg/b;

    .line 8
    iget-object p1, p1, Ljg/c;->k:Ljava/net/SocketAddress;

    iput-object p1, p0, Ljg/c;->k:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public bridge synthetic B()Ljg/a;
    .locals 1

    invoke-virtual {p0}, Ljg/c;->H()Ljg/c;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljg/c;
    .locals 1

    new-instance v0, Ljg/c;

    invoke-direct {v0, p0}, Ljg/c;-><init>(Ljg/c;)V

    return-object v0
.end method

.method public final D()Ljg/d;
    .locals 1

    iget-object v0, p0, Ljg/c;->i:Ljg/d;

    return-object v0
.end method

.method final E()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Ljg/c;->k:Ljava/net/SocketAddress;

    return-object v0
.end method

.method final G()Lsg/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsg/b<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ljg/c;->j:Lsg/b;

    return-object v0
.end method

.method public H()Ljg/c;
    .locals 2

    .line 1
    invoke-super {p0}, Ljg/a;->B()Ljg/a;

    .line 2
    iget-object v0, p0, Ljg/c;->i:Ljg/d;

    invoke-virtual {v0}, Ljg/b;->d()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "handler not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljg/c;->C()Ljg/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljg/a;
    .locals 1

    invoke-virtual {p0}, Ljg/c;->C()Ljg/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljg/b;
    .locals 1

    invoke-virtual {p0}, Ljg/c;->D()Ljg/d;

    move-result-object v0

    return-object v0
.end method

.method n(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/grpc/netty/shaded/io/netty/channel/k;

    .line 2
    iget-object v2, p0, Ljg/c;->i:Ljg/d;

    invoke-virtual {v2}, Ljg/b;->d()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/w;->U([Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 3
    invoke-virtual {p0}, Ljg/a;->s()[Ljava/util/Map$Entry;

    move-result-object v0

    sget-object v1, Ljg/c;->l:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-static {p1, v0, v1}, Ljg/a;->A(Lio/grpc/netty/shaded/io/netty/channel/e;[Ljava/util/Map$Entry;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V

    .line 4
    invoke-virtual {p0}, Ljg/a;->q()[Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {p1, v0}, Ljg/a;->y(Lio/grpc/netty/shaded/io/netty/channel/e;[Ljava/util/Map$Entry;)V

    return-void
.end method
