.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->b(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/m;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lkg/j;

.field final synthetic e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    iput p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;->b:I

    iput-wide p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;->c:J

    iput-object p6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;->d:Lkg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;->b:I

    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;->c:J

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;->d:Lkg/j;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->O(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method

.method public bridge synthetic e(Lug/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/i;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$e;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
