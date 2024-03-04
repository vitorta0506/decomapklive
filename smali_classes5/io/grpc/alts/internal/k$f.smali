.class final Lio/grpc/alts/internal/k$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field private final a:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "Lio/grpc/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lio/grpc/d;


# direct methods
.method constructor <init>(Lio/grpc/internal/p1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/p1<",
            "Lio/grpc/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channelPool"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/p1;

    iput-object p1, p0, Lio/grpc/alts/internal/k$f;->a:Lio/grpc/internal/p1;

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/alts/internal/k$f;->b:Lio/grpc/d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/grpc/alts/internal/k$f;->a:Lio/grpc/internal/p1;

    invoke-interface {v1, v0}, Lio/grpc/internal/p1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/d;

    iput-object v0, p0, Lio/grpc/alts/internal/k$f;->b:Lio/grpc/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()Lio/grpc/d;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/alts/internal/k$f;->b:Lio/grpc/d;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/k$f;->a:Lio/grpc/internal/p1;

    invoke-interface {v0}, Lio/grpc/internal/p1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/d;

    iput-object v0, p0, Lio/grpc/alts/internal/k$f;->b:Lio/grpc/d;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/alts/internal/k$f;->b:Lio/grpc/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
