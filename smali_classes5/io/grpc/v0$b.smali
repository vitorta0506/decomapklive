.class final Lio/grpc/v0$b;
.super Lio/grpc/t0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/v0;


# direct methods
.method private constructor <init>(Lio/grpc/v0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/v0$b;->a:Lio/grpc/v0;

    invoke-direct {p0}, Lio/grpc/t0$d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/v0;Lio/grpc/v0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/v0$b;-><init>(Lio/grpc/v0;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/v0$b;->a:Lio/grpc/v0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/v0$b;->a:Lio/grpc/v0;

    invoke-static {v1}, Lio/grpc/v0;->a(Lio/grpc/v0;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Ljava/net/URI;Lio/grpc/t0$b;)Lio/grpc/t0;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/v0$b;->a:Lio/grpc/v0;

    invoke-virtual {v0}, Lio/grpc/v0;->f()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/u0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Lio/grpc/t0$d;->b(Ljava/net/URI;Lio/grpc/t0$b;)Lio/grpc/t0;

    move-result-object p1

    :goto_0
    return-object p1
.end method
