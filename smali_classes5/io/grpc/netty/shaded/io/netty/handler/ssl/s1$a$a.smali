.class Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;J)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;

    iput-wide p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->g0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    move-result-object v0

    invoke-virtual {v0}, Lug/h;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->d0()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->b:Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 3
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "{} did not receive close_notify in {}ms; force-closing the connection."

    .line 4
    invoke-interface {v0, v3, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->b:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/v;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->c:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->e0(Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :cond_0
    return-void
.end method
