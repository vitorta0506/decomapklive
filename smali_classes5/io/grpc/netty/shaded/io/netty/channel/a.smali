.class public abstract Lio/grpc/netty/shaded/io/netty/channel/a;
.super Lio/grpc/netty/shaded/io/netty/util/k;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/a$d;,
        Lio/grpc/netty/shaded/io/netty/channel/a$c;,
        Lio/grpc/netty/shaded/io/netty/channel/a$b;,
        Lio/grpc/netty/shaded/io/netty/channel/a$e;,
        Lio/grpc/netty/shaded/io/netty/channel/a$a;
    }
.end annotation


# static fields
.field private static final r:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final d:Lio/grpc/netty/shaded/io/netty/channel/e;

.field private final e:Lio/grpc/netty/shaded/io/netty/channel/ChannelId;

.field private final f:Lio/grpc/netty/shaded/io/netty/channel/e$a;

.field private final g:Lio/grpc/netty/shaded/io/netty/channel/e0;

.field private final h:Lio/grpc/netty/shaded/io/netty/channel/e1;

.field private final i:Lio/grpc/netty/shaded/io/netty/channel/a$e;

.field private volatile j:Ljava/net/SocketAddress;

.field private volatile k:Ljava/net/SocketAddress;

.field private volatile l:Lio/grpc/netty/shaded/io/netty/channel/l0;

.field private volatile m:Z

.field private n:Z

.field private o:Ljava/lang/Throwable;

.field private p:Z

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/a;->r:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/k;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/e1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/e1;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Z)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->h:Lio/grpc/netty/shaded/io/netty/channel/e1;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/a$e;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/a$e;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->i:Lio/grpc/netty/shaded/io/netty/channel/a$e;

    .line 4
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->d:Lio/grpc/netty/shaded/io/netty/channel/e;

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->z0()Lio/grpc/netty/shaded/io/netty/channel/ChannelId;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->e:Lio/grpc/netty/shaded/io/netty/channel/ChannelId;

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->A0()Lio/grpc/netty/shaded/io/netty/channel/a$a;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->f:Lio/grpc/netty/shaded/io/netty/channel/e$a;

    .line 7
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->y0()Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    return-void
.end method

.method static synthetic A(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/a$e;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->i:Lio/grpc/netty/shaded/io/netty/channel/a$e;

    return-object p0
.end method

.method static synthetic C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    return-object p0
.end method

.method static synthetic V(Lio/grpc/netty/shaded/io/netty/channel/a;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->k:Ljava/net/SocketAddress;

    return-object p1
.end method

.method static synthetic X(Lio/grpc/netty/shaded/io/netty/channel/a;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->j:Ljava/net/SocketAddress;

    return-object p1
.end method

.method static synthetic Y(Lio/grpc/netty/shaded/io/netty/channel/a;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->n:Z

    return p0
.end method

.method static synthetic Z(Lio/grpc/netty/shaded/io/netty/channel/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->n:Z

    return p1
.end method

.method static synthetic e(Lio/grpc/netty/shaded/io/netty/channel/a;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->m:Z

    return p0
.end method

.method static synthetic h(Lio/grpc/netty/shaded/io/netty/channel/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->m:Z

    return p1
.end method

.method static synthetic j(Lio/grpc/netty/shaded/io/netty/channel/a;Lio/grpc/netty/shaded/io/netty/channel/l0;)Lio/grpc/netty/shaded/io/netty/channel/l0;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->l:Lio/grpc/netty/shaded/io/netty/channel/l0;

    return-object p1
.end method

.method static synthetic l(Lio/grpc/netty/shaded/io/netty/channel/a;)Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->o:Ljava/lang/Throwable;

    return-object p0
.end method

.method static synthetic o(Lio/grpc/netty/shaded/io/netty/channel/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->o:Ljava/lang/Throwable;

    return-object p1
.end method

.method static synthetic r(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e1;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->h:Lio/grpc/netty/shaded/io/netty/channel/e1;

    return-object p0
.end method

.method static synthetic t()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/a;->r:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-object v0
.end method


# virtual methods
.method protected abstract A0()Lio/grpc/netty/shaded/io/netty/channel/a$a;
.end method

.method public B(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->B(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method protected abstract B0()Ljava/net/SocketAddress;
.end method

.method protected C0(Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->k(Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;J)V

    return-void
.end method

.method public F()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0
.end method

.method public final G()Lio/grpc/netty/shaded/io/netty/channel/ChannelId;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->e:Lio/grpc/netty/shaded/io/netty/channel/ChannelId;

    return-object v0
.end method

.method public H()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->k:Ljava/net/SocketAddress;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->H()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->k:Ljava/net/SocketAddress;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public I(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->I(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public J()Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    return-object v0
.end method

.method public K()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->j:Ljava/net/SocketAddress;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->K()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->j:Ljava/net/SocketAddress;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final N()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->m:Z

    return v0
.end method

.method public P()Lkg/k;
    .locals 1

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->a()Lkg/k;

    move-result-object v0

    return-object v0
.end method

.method public S()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->f:Lio/grpc/netty/shaded/io/netty/channel/e$a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->S()Lio/grpc/netty/shaded/io/netty/channel/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->c()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public a0()Lio/grpc/netty/shaded/io/netty/channel/l0;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->l:Lio/grpc/netty/shaded/io/netty/channel/l0;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel not registered to an event loop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public close()Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a;->d0(Lio/grpc/netty/shaded/io/netty/channel/e;)I

    move-result p1

    return p1
.end method

.method public final d0(Lio/grpc/netty/shaded/io/netty/channel/e;)I
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->G()Lio/grpc/netty/shaded/io/netty/channel/ChannelId;

    move-result-object v0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e;->G()Lio/grpc/netty/shaded/io/netty/channel/ChannelId;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Ljava/net/SocketAddress;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->f(Ljava/net/SocketAddress;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public flush()Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->p1()Lio/grpc/netty/shaded/io/netty/channel/w;

    return-object p0
.end method

.method public g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method protected abstract g0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract h0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->e:Lio/grpc/netty/shaded/io/netty/channel/ChannelId;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected i0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected abstract j0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->f:Lio/grpc/netty/shaded/io/netty/channel/e$a;

    return-object v0
.end method

.method protected l0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected o0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->h0()V

    return-void
.end method

.method protected abstract p0(Lio/grpc/netty/shaded/io/netty/channel/s;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public q0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->f:Lio/grpc/netty/shaded/io/netty/channel/e$a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->S()Lio/grpc/netty/shaded/io/netty/channel/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected r0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p1
.end method

.method public read()Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->g:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->F1()Lio/grpc/netty/shaded/io/netty/channel/w;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->p:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->q:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->H()Ljava/net/SocketAddress;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->K()Ljava/net/SocketAddress;

    move-result-object v2

    const-string v3, ", L:"

    const/16 v4, 0x5d

    const-string v5, "[id: 0x"

    if-eqz v1, :cond_2

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x60

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->e:Lio/grpc/netty/shaded/io/netty/channel/ChannelId;

    .line 7
    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/channel/ChannelId;->asShortText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v2, " - "

    goto :goto_0

    :cond_1
    const-string v2, " ! "

    .line 10
    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "R:"

    .line 11
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->q:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->e:Lio/grpc/netty/shaded/io/netty/channel/ChannelId;

    .line 17
    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/channel/ChannelId;->asShortText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->q:Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->e:Lio/grpc/netty/shaded/io/netty/channel/ChannelId;

    .line 24
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/ChannelId;->asShortText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->q:Ljava/lang/String;

    .line 27
    :goto_1
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->p:Z

    .line 28
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract u0(Lio/grpc/netty/shaded/io/netty/channel/l0;)Z
.end method

.method protected abstract v0()Ljava/net/SocketAddress;
.end method

.method protected final w0()I
    .locals 2

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lio/grpc/netty/shaded/io/netty/channel/c0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/c0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->p()I

    move-result v0

    return v0

    .line 4
    :cond_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/r;->k:Lio/grpc/netty/shaded/io/netty/channel/r;

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/f;->b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const v0, 0x7fffffff

    return v0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected y0()Lio/grpc/netty/shaded/io/netty/channel/e0;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/e0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    return-object v0
.end method

.method protected z0()Lio/grpc/netty/shaded/io/netty/channel/ChannelId;
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;->newInstance()Lio/grpc/netty/shaded/io/netty/channel/DefaultChannelId;

    move-result-object v0

    return-object v0
.end method
