.class public abstract Ljg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljg/a<",
        "TB;TC;>;C::",
        "Lio/grpc/netty/shaded/io/netty/channel/e;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Ljg/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljg/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bootstrap"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljg/a;

    iput-object p1, p0, Ljg/b;->a:Ljg/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljg/b;->a:Ljg/a;

    invoke-virtual {v0}, Ljg/a;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljg/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljg/e<",
            "+TC;>;"
        }
    .end annotation

    iget-object v0, p0, Ljg/b;->a:Ljg/a;

    invoke-virtual {v0}, Ljg/a;->f()Ljg/e;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lio/grpc/netty/shaded/io/netty/channel/m0;
    .locals 1

    iget-object v0, p0, Ljg/b;->a:Ljg/a;

    invoke-virtual {v0}, Ljg/a;->j()Lio/grpc/netty/shaded/io/netty/channel/m0;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 1

    iget-object v0, p0, Ljg/b;->a:Ljg/a;

    invoke-virtual {v0}, Ljg/a;->l()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Ljg/b;->a:Ljg/a;

    invoke-virtual {v0}, Ljg/a;->p()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljg/b;->a:Ljg/a;

    invoke-virtual {v0}, Ljg/a;->v()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Ljg/b;->c()Lio/grpc/netty/shaded/io/netty/channel/m0;

    move-result-object v2

    const-string v3, ", "

    if-eqz v2, :cond_0

    const-string v4, "group: "

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljg/b;->b()Ljg/e;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "channelFactory: "

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljg/b;->e()Ljava/net/SocketAddress;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "localAddress: "

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_2
    invoke-virtual {p0}, Ljg/b;->f()Ljava/util/Map;

    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "options: "

    .line 18
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_3
    invoke-virtual {p0}, Ljg/b;->a()Ljava/util/Map;

    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "attrs: "

    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_4
    invoke-virtual {p0}, Ljg/b;->d()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v4, "handler: "

    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v1, :cond_6

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 32
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 34
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
