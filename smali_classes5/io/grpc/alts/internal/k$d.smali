.class final Lio/grpc/alts/internal/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Lio/grpc/alts/internal/i0;

.field private final b:Lio/grpc/alts/internal/k$f;

.field private final c:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

.field private final d:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lio/grpc/internal/p1;Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Lio/grpc/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Lio/grpc/internal/p1<",
            "Lio/grpc/d;",
            ">;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;",
            "Lio/grpc/a$c<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/alts/internal/k$f;

    invoke-direct {v0, p2}, Lio/grpc/alts/internal/k$f;-><init>(Lio/grpc/internal/p1;)V

    iput-object v0, p0, Lio/grpc/alts/internal/k$d;->b:Lio/grpc/alts/internal/k$f;

    .line 3
    new-instance p2, Lio/grpc/alts/internal/k$c;

    invoke-direct {p2, p1, v0}, Lio/grpc/alts/internal/k$c;-><init>(Lcom/google/common/collect/ImmutableList;Lio/grpc/alts/internal/k$f;)V

    iput-object p2, p0, Lio/grpc/alts/internal/k$d;->a:Lio/grpc/alts/internal/i0;

    const-string p1, "checkNotNull"

    .line 4
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    iput-object p1, p0, Lio/grpc/alts/internal/k$d;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    .line 5
    iput-object p4, p0, Lio/grpc/alts/internal/k$d;->d:Lio/grpc/a$c;

    return-void
.end method


# virtual methods
.method public a(Lig/j;)Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 7

    .line 1
    invoke-static {p1}, Lig/t;->b(Lig/j;)Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lig/j;->z0()Lio/grpc/ChannelLogger;

    move-result-object v6

    .line 3
    iget-object v0, p0, Lio/grpc/alts/internal/k$d;->d:Lio/grpc/a$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lig/j;->y0()Lio/grpc/a;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/alts/internal/k$d;->d:Lio/grpc/a$c;

    invoke-virtual {v0, v2}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "google_cfe_"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lig/j;->y0()Lio/grpc/a;

    move-result-object v2

    sget-object v3, Lhg/e;->d:Lio/grpc/a$c;

    invoke-virtual {v2, v3}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {p1}, Lig/j;->y0()Lio/grpc/a;

    move-result-object v2

    sget-object v3, Lhg/e;->e:Lio/grpc/a$c;

    invoke-virtual {v2, v3}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lio/grpc/alts/internal/k$d;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    .line 9
    invoke-virtual {p1}, Lig/j;->x0()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {v1, v0, p1, v6}, Lig/t;->a(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Ljava/lang/String;Lio/grpc/ChannelLogger;)Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/grpc/alts/internal/k$d;->a:Lio/grpc/alts/internal/i0;

    .line 12
    invoke-virtual {p1}, Lig/j;->x0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v6}, Lio/grpc/alts/internal/i0;->a(Ljava/lang/String;Lio/grpc/ChannelLogger;)Lio/grpc/alts/internal/h0;

    move-result-object p1

    .line 13
    new-instance v2, Lio/grpc/alts/internal/w;

    invoke-direct {v2, p1}, Lio/grpc/alts/internal/w;-><init>(Lio/grpc/alts/internal/h0;)V

    .line 14
    new-instance p1, Lio/grpc/alts/internal/g0;

    new-instance v3, Lio/grpc/alts/internal/k$b;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lio/grpc/alts/internal/k$b;-><init>(Lio/grpc/alts/internal/k$a;)V

    .line 15
    invoke-static {}, Lio/grpc/alts/internal/k;->b()Lio/grpc/alts/internal/n;

    move-result-object v4

    move-object v0, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lio/grpc/alts/internal/g0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/alts/internal/w;Lio/grpc/alts/internal/g0$b;Lio/grpc/alts/internal/n;Lio/grpc/ChannelLogger;)V

    .line 16
    :goto_2
    invoke-static {p1, v6}, Lig/t;->c(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/ChannelLogger;)Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p1

    return-object p1
.end method

.method public b()Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 1

    invoke-static {}, Lio/grpc/alts/internal/k;->a()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/alts/internal/k;->c()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "ALTS Server ProtocolNegotiator Closed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/k$d;->b:Lio/grpc/alts/internal/k$f;

    invoke-virtual {v0}, Lio/grpc/alts/internal/k$f;->a()V

    return-void
.end method
