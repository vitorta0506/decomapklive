.class abstract Lio/grpc/netty/shaded/io/netty/channel/b0;
.super Lug/e;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lug/e<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/grpc/netty/shaded/io/netty/channel/i;"
    }
.end annotation


# instance fields
.field private final b:Lio/grpc/netty/shaded/io/netty/channel/e;


# direct methods
.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lug/e;-><init>(Lug/j;)V

    const-string p2, "channel"

    .line 2
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/e;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b0;->b:Lio/grpc/netty/shaded/io/netty/channel/e;

    return-void
.end method


# virtual methods
.method public N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic Q()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b0;->k()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/grpc/netty/shaded/io/netty/channel/i;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lug/e;->c(Lug/r;)Lug/q;

    return-object p0
.end method

.method public bridge synthetic c(Lug/r;)Lug/q;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b0;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c0()Lug/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b0;->j()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method public d()Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b0;->b:Lio/grpc/netty/shaded/io/netty/channel/e;

    return-object v0
.end method

.method public bridge synthetic f(Lug/r;)Lug/q;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b0;->l(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method protected i()Lug/j;
    .locals 1

    .line 1
    invoke-super {p0}, Lug/e;->i()Lug/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b0;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public j()Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    return-object p0
.end method

.method public k()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/r<",
            "+",
            "Lug/q<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/grpc/netty/shaded/io/netty/channel/i;"
        }
    .end annotation

    invoke-super {p0, p1}, Lug/e;->f(Lug/r;)Lug/q;

    return-object p0
.end method
