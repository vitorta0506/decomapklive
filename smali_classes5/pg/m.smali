.class public abstract Lpg/m;
.super Lio/grpc/netty/shaded/io/netty/channel/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/channel/u;"
    }
.end annotation


# instance fields
.field private final b:Lio/grpc/netty/shaded/io/netty/util/internal/f0;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/u;-><init>()V

    .line 2
    const-class v0, Lpg/m;

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/f0;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/f0;

    move-result-object v0

    iput-object v0, p0, Lpg/m;->b:Lio/grpc/netty/shaded/io/netty/util/internal/f0;

    return-void
.end method

.method private static v(Lio/grpc/netty/shaded/io/netty/channel/m;Lpg/c;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 3

    .line 1
    new-instance v0, Lug/y;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lug/y;-><init>(Lug/j;)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lpg/c;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lpg/c;->g(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lio/grpc/netty/shaded/io/netty/channel/v;->c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lug/y;->i(Lug/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p2}, Lug/y;->m(Lug/x;)V

    return-void
.end method

.method private static w(Lio/grpc/netty/shaded/io/netty/channel/m;Lpg/c;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/v;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lpg/c;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lpg/c;->g(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public e(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Lpg/m;->s(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-static {}, Lpg/c;->u()Lpg/c;

    move-result-object v1
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-virtual {p0, p1, p2, v1}, Lpg/m;->u(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v1}, Ljava/util/AbstractList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/codec/EncoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must produce at least one message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception v2

    .line 8
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 9
    throw v2

    .line 10
    :cond_1
    invoke-interface {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_2
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/EncoderException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    if-eqz v1, :cond_5

    .line 11
    :try_start_3
    invoke-virtual {v1}, Lpg/c;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_2

    .line 12
    invoke-virtual {v1, v0}, Lpg/c;->g(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_1

    :cond_2
    if-lez p2, :cond_4

    .line 13
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p2

    if-ne p3, p2, :cond_3

    .line 14
    invoke-static {p1, v1}, Lpg/m;->w(Lio/grpc/netty/shaded/io/netty/channel/m;Lpg/c;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {p1, v1, p3}, Lpg/m;->v(Lio/grpc/netty/shaded/io/netty/channel/m;Lpg/c;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 16
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lpg/c;->x()V

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lpg/c;->x()V

    .line 17
    throw p1

    :cond_5
    :goto_2
    return-void

    :catchall_2
    move-exception p2

    .line 18
    :try_start_4
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/codec/EncoderException;

    invoke-direct {v2, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/EncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_0
    move-exception p2

    .line 19
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p2

    if-eqz v1, :cond_9

    .line 20
    :try_start_5
    invoke-virtual {v1}, Lpg/c;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eqz v2, :cond_7

    if-lez v2, :cond_8

    .line 21
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    if-ne p3, v0, :cond_6

    .line 22
    invoke-static {p1, v1}, Lpg/m;->w(Lio/grpc/netty/shaded/io/netty/channel/m;Lpg/c;)V

    goto :goto_3

    .line 23
    :cond_6
    invoke-static {p1, v1, p3}, Lpg/m;->v(Lio/grpc/netty/shaded/io/netty/channel/m;Lpg/c;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_3

    .line 24
    :cond_7
    invoke-virtual {v1, v0}, Lpg/c;->g(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 25
    :cond_8
    :goto_3
    invoke-virtual {v1}, Lpg/c;->x()V

    goto :goto_4

    :catchall_4
    move-exception p1

    invoke-virtual {v1}, Lpg/c;->x()V

    .line 26
    throw p1

    .line 27
    :cond_9
    :goto_4
    throw p2
.end method

.method public s(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lpg/m;->b:Lio/grpc/netty/shaded/io/netty/util/internal/f0;

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
