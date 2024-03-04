.class public abstract Lpg/l;
.super Lio/grpc/netty/shaded/io/netty/channel/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/channel/p;"
    }
.end annotation


# instance fields
.field private final b:Lio/grpc/netty/shaded/io/netty/util/internal/f0;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/p;-><init>()V

    .line 2
    const-class v0, Lpg/l;

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/f0;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/f0;

    move-result-object v0

    iput-object v0, p0, Lpg/l;->b:Lio/grpc/netty/shaded/io/netty/util/internal/f0;

    return-void
.end method


# virtual methods
.method public h(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lpg/c;->u()Lpg/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p2}, Lpg/l;->s(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lpg/l;->u(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 5
    throw v2

    .line 6
    :cond_0
    invoke-virtual {v0, p2}, Lpg/c;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lpg/c;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Lpg/c;->g(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/grpc/netty/shaded/io/netty/channel/m;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Lpg/c;->x()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lpg/c;->x()V

    .line 10
    throw p1

    :catchall_2
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 11
    :try_start_4
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;

    invoke-direct {v2, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p2

    .line 12
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 13
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Lpg/c;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_2

    .line 14
    invoke-virtual {v0, v1}, Lpg/c;->g(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/grpc/netty/shaded/io/netty/channel/m;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 15
    :cond_2
    invoke-virtual {v0}, Lpg/c;->x()V

    .line 16
    throw p2

    :catchall_3
    move-exception p1

    .line 17
    invoke-virtual {v0}, Lpg/c;->x()V

    .line 18
    throw p1
.end method

.method public s(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lpg/l;->b:Lio/grpc/netty/shaded/io/netty/util/internal/f0;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/f0;->e(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract u(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "TI;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
