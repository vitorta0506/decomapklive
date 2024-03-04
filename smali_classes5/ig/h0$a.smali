.class Lig/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/h0;->c(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lig/g0;)Lig/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lig/g0;

.field final synthetic b:Ljava/net/SocketAddress;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/grpc/netty/shaded/io/netty/util/c;


# direct methods
.method constructor <init>(Lig/g0;Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/util/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lig/h0$a;->a:Lig/g0;

    iput-object p2, p0, Lig/h0$a;->b:Ljava/net/SocketAddress;

    iput-object p3, p0, Lig/h0$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lig/h0$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lig/h0$a;->e:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lig/j;)Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 7

    .line 1
    iget-object v0, p0, Lig/h0$a;->a:Lig/g0;

    invoke-interface {v0, p1}, Lig/g0;->a(Lig/j;)Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v5

    .line 2
    invoke-virtual {p1}, Lig/j;->z0()Lio/grpc/ChannelLogger;

    move-result-object v6

    .line 3
    new-instance p1, Lig/h0$l;

    iget-object v2, p0, Lig/h0$a;->b:Ljava/net/SocketAddress;

    iget-object v3, p0, Lig/h0$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lig/h0$a;->d:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lig/h0$l;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/ChannelLogger;)V

    return-object p1
.end method

.method public b()Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 1

    iget-object v0, p0, Lig/h0$a;->e:Lio/grpc/netty/shaded/io/netty/util/c;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lig/h0$a;->a:Lig/g0;

    invoke-interface {v0}, Lig/g0;->close()V

    return-void
.end method
