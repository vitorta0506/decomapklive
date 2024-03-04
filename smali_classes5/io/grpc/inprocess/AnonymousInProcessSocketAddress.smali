.class public final Lio/grpc/inprocess/AnonymousInProcessSocketAddress;
.super Ljava/net/SocketAddress;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x76e6340abe25d3a7L


# instance fields
.field private server:Lio/grpc/inprocess/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized clearServer(Lio/grpc/inprocess/a;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/o;->z(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getServer()Lio/grpc/inprocess/a;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized setServer(Lio/grpc/inprocess/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
