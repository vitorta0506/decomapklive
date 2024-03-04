.class final Lio/grpc/r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field final b:Lio/grpc/r$b;

.field private final c:Lio/grpc/r;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lio/grpc/r$b;Lio/grpc/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/r$d;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lio/grpc/r$d;->b:Lio/grpc/r$b;

    .line 4
    iput-object p3, p0, Lio/grpc/r$d;->c:Lio/grpc/r;

    return-void
.end method

.method static synthetic b(Lio/grpc/r$d;)Lio/grpc/r;
    .locals 0

    iget-object p0, p0, Lio/grpc/r$d;->c:Lio/grpc/r;

    return-object p0
.end method


# virtual methods
.method c()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/r$d;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Lio/grpc/r;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Exception notifying context listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/r$d;->b:Lio/grpc/r$b;

    iget-object v1, p0, Lio/grpc/r$d;->c:Lio/grpc/r;

    invoke-interface {v0, v1}, Lio/grpc/r$b;->a(Lio/grpc/r;)V

    return-void
.end method
