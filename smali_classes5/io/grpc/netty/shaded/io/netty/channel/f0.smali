.class public Lio/grpc/netty/shaded/io/netty/channel/f0;
.super Lug/h;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lug/h<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/grpc/netty/shaded/io/netty/channel/y;"
    }
.end annotation


# instance fields
.field private final n:Lio/grpc/netty/shaded/io/netty/channel/e;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lug/h;-><init>()V

    const-string v0, "channel"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/e;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/f0;->n:Lio/grpc/netty/shaded/io/netty/channel/e;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lug/h;-><init>(Lug/j;)V

    const-string p2, "channel"

    .line 4
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/e;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/f0;->n:Lio/grpc/netty/shaded/io/netty/channel/e;

    return-void
.end method


# virtual methods
.method public I()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lug/h;->B(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic X(Lug/r;)Lug/x;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/f0;->f(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/f0;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;
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
            "Lio/grpc/netty/shaded/io/netty/channel/y;"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lug/h;->c(Lug/r;)Lug/x;

    return-object p0
.end method

.method public bridge synthetic c(Lug/r;)Lug/q;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/f0;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lug/r;)Lug/x;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/f0;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

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

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/f0;->l0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0
.end method

.method public d()Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/f0;->n:Lio/grpc/netty/shaded/io/netty/channel/e;

    return-object v0
.end method

.method public f(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;
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
            "Lio/grpc/netty/shaded/io/netty/channel/y;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lug/h;->X(Lug/r;)Lug/x;

    return-object p0
.end method

.method public bridge synthetic f(Lug/r;)Lug/q;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/f0;->f(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public f0()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    return-object p0
.end method

.method public l0()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-super {p0}, Lug/h;->o()Lug/x;

    return-object p0
.end method

.method public m()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/f0;->x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0(Ljava/lang/Object;)Lug/x;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/f0;->x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o()Lug/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/f0;->l0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0
.end method

.method protected r()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/f0;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Lug/h;->r()V

    :cond_0
    return-void
.end method

.method public u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    invoke-super {p0, p1}, Lug/h;->d0(Ljava/lang/Throwable;)Lug/x;

    return-object p0
.end method

.method protected v()Lug/j;
    .locals 1

    .line 1
    invoke-super {p0}, Lug/h;->v()Lug/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/f0;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public x(Ljava/lang/Void;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    invoke-super {p0, p1}, Lug/h;->m0(Ljava/lang/Object;)Lug/x;

    return-object p0
.end method
