.class Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$a;
.super Lio/grpc/netty/shaded/io/netty/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected deallocate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->i0()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Lio/grpc/netty/shaded/io/netty/util/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Lio/grpc/netty/shaded/io/netty/util/v;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/v;->b(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->e(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->release()Z

    return-void
.end method

.method public touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Lio/grpc/netty/shaded/io/netty/util/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->b(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Lio/grpc/netty/shaded/io/netty/util/v;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/v;->a(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$a;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    return-object p1
.end method
