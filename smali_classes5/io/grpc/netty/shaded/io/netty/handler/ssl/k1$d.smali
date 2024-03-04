.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g<",
        "Lrg/a;",
        ">;",
        "Lio/grpc/netty/shaded/io/netty/handler/ssl/d;"
    }
.end annotation


# instance fields
.field final synthetic c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Lrg/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->p(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g;->a:Ljava/lang/Runnable;

    check-cast v0, Lrg/a;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d$a;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lrg/a;->e(Ljava/lang/Runnable;)V

    return-void
.end method
