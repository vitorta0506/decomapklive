.class Lig/y$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/y;->t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Lig/y;


# direct methods
.method constructor <init>(Lig/y;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lig/y$c;->b:Lig/y;

    iput-object p2, p0, Lig/y$c;->a:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lig/y$c;->b:Lig/y;

    invoke-static {v0, p1}, Lig/y;->Q0(Lig/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lig/z$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lig/y$c;->a:Lio/grpc/Status;

    const/4 v1, 0x0

    new-instance v2, Lio/grpc/s0;

    invoke-direct {v2}, Lio/grpc/s0;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lio/grpc/internal/a$c;->P(Lio/grpc/Status;ZLio/grpc/s0;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
