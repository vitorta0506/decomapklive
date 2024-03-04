.class final Lio/grpc/netty/shaded/io/netty/util/internal/d0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/d0;->d(Ljava/util/concurrent/ThreadFactory;Lug/j;)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ThreadFactory;

.field final synthetic b:Lug/j;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;Lug/j;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/d0$c;->a:Ljava/util/concurrent/ThreadFactory;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/d0$c;->b:Lug/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/d0$c;->a:Ljava/util/concurrent/ThreadFactory;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/d0$c;->b:Lug/j;

    invoke-static {p1, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/d0;->b(Ljava/lang/Runnable;Lug/j;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
