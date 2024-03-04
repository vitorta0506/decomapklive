.class final Lio/grpc/netty/shaded/io/netty/util/internal/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/d0;->b(Ljava/lang/Runnable;Lug/j;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lug/j;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lug/j;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/d0$b;->a:Lug/j;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/d0$b;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/d0$b;->a:Lug/j;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/d0;->a(Lug/j;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/d0$b;->b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/d0;->a(Lug/j;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/d0;->a(Lug/j;)V

    .line 4
    throw v1
.end method
