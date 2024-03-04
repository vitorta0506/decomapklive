.class Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Ljava/lang/Runnable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->p(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;->r(Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;Z)Z

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1$g;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
