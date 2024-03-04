.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$i;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "i"
.end annotation


# instance fields
.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$i;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$i;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)V

    return-void
.end method


# virtual methods
.method public c(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lkg/j;",
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

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$i;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->U(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;->n0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 2
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$i;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    :goto_0
    return-void
.end method
