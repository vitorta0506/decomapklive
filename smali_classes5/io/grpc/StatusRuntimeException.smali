.class public Lio/grpc/StatusRuntimeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1b131cbf794914f0L


# instance fields
.field private final fillInStackTrace:Z

.field private final status:Lio/grpc/Status;

.field private final trailers:Lio/grpc/s0;


# direct methods
.method public constructor <init>(Lio/grpc/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/Status;Lio/grpc/s0;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/Status;Lio/grpc/s0;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/Status;Lio/grpc/s0;Z)V

    return-void
.end method

.method constructor <init>(Lio/grpc/Status;Lio/grpc/s0;Z)V
    .locals 2

    .line 3
    invoke-static {p1}, Lio/grpc/Status;->h(Lio/grpc/Status;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/Status;->m()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object p1, p0, Lio/grpc/StatusRuntimeException;->status:Lio/grpc/Status;

    .line 5
    iput-object p2, p0, Lio/grpc/StatusRuntimeException;->trailers:Lio/grpc/s0;

    .line 6
    iput-boolean p3, p0, Lio/grpc/StatusRuntimeException;->fillInStackTrace:Z

    .line 7
    invoke-virtual {p0}, Lio/grpc/StatusRuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/grpc/StatusRuntimeException;->fillInStackTrace:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getStatus()Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lio/grpc/StatusRuntimeException;->status:Lio/grpc/Status;

    return-object v0
.end method

.method public final getTrailers()Lio/grpc/s0;
    .locals 1

    iget-object v0, p0, Lio/grpc/StatusRuntimeException;->trailers:Lio/grpc/s0;

    return-object v0
.end method
