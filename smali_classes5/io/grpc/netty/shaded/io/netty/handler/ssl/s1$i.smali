.class Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->S0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/i;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/m;

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/channel/y;

.field final synthetic d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$i;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$i;->a:Lio/grpc/netty/shaded/io/netty/channel/i;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$i;->b:Lio/grpc/netty/shaded/io/netty/channel/m;

    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$i;->c:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$i;->a:Lio/grpc/netty/shaded/io/netty/channel/i;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->d0()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$i;->b:Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 3
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    const-string v2, "{} Last write attempt timed out; force-closing the connection."

    .line 4
    invoke-interface {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$i;->b:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/v;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$i;->c:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->e0(Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :cond_0
    return-void
.end method
