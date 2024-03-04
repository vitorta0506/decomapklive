.class Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d$a;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->r(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Z)Z

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$d$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
