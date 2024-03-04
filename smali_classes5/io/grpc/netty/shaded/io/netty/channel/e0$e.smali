.class Lio/grpc/netty/shaded/io/netty/channel/e0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/e0;->i1(Ljava/lang/Thread;Lio/grpc/netty/shaded/io/netty/channel/b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/b;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/e0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$e;->b:Lio/grpc/netty/shaded/io/netty/channel/e0;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$e;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$e;->b:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$e;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->p0(Lio/grpc/netty/shaded/io/netty/channel/e0;Ljava/lang/Thread;Lio/grpc/netty/shaded/io/netty/channel/b;Z)V

    return-void
.end method
