.class Lio/grpc/internal/z1$s;
.super Lio/grpc/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "s"
.end annotation


# instance fields
.field private final a:Lio/grpc/internal/z1$b0;

.field b:J

.field final synthetic c:Lio/grpc/internal/z1;


# direct methods
.method constructor <init>(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/z1$s;->c:Lio/grpc/internal/z1;

    invoke-direct {p0}, Lio/grpc/k;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/internal/z1$s;->a:Lio/grpc/internal/z1$b0;

    return-void
.end method


# virtual methods
.method public h(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/internal/z1$s;->c:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lio/grpc/internal/z1$s;->c:Lio/grpc/internal/z1;

    invoke-static {v1}, Lio/grpc/internal/z1;->T(Lio/grpc/internal/z1;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/z1$s;->c:Lio/grpc/internal/z1;

    invoke-static {v2}, Lio/grpc/internal/z1;->P(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$z;

    move-result-object v2

    iget-object v2, v2, Lio/grpc/internal/z1$z;->f:Lio/grpc/internal/z1$b0;

    if-nez v2, :cond_7

    iget-object v2, p0, Lio/grpc/internal/z1$s;->a:Lio/grpc/internal/z1$b0;

    iget-boolean v2, v2, Lio/grpc/internal/z1$b0;->b:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-wide v2, p0, Lio/grpc/internal/z1$s;->b:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lio/grpc/internal/z1$s;->b:J

    .line 5
    iget-object p1, p0, Lio/grpc/internal/z1$s;->c:Lio/grpc/internal/z1;

    invoke-static {p1}, Lio/grpc/internal/z1;->K(Lio/grpc/internal/z1;)J

    move-result-wide p1

    cmp-long v4, v2, p1

    if-gtz v4, :cond_2

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_2
    iget-wide p1, p0, Lio/grpc/internal/z1$s;->b:J

    iget-object v2, p0, Lio/grpc/internal/z1$s;->c:Lio/grpc/internal/z1;

    invoke-static {v2}, Lio/grpc/internal/z1;->M(Lio/grpc/internal/z1;)J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, p1, v2

    if-lez v5, :cond_3

    .line 8
    iget-object p1, p0, Lio/grpc/internal/z1$s;->a:Lio/grpc/internal/z1$b0;

    iput-boolean v4, p1, Lio/grpc/internal/z1$b0;->c:Z

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lio/grpc/internal/z1$s;->c:Lio/grpc/internal/z1;

    .line 10
    invoke-static {p1}, Lio/grpc/internal/z1;->N(Lio/grpc/internal/z1;)Lio/grpc/internal/z1$t;

    move-result-object p1

    iget-wide v2, p0, Lio/grpc/internal/z1$s;->b:J

    iget-object p2, p0, Lio/grpc/internal/z1$s;->c:Lio/grpc/internal/z1;

    invoke-static {p2}, Lio/grpc/internal/z1;->K(Lio/grpc/internal/z1;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {p1, v2, v3}, Lio/grpc/internal/z1$t;->a(J)J

    move-result-wide p1

    .line 11
    iget-object v2, p0, Lio/grpc/internal/z1$s;->c:Lio/grpc/internal/z1;

    iget-wide v5, p0, Lio/grpc/internal/z1$s;->b:J

    invoke-static {v2, v5, v6}, Lio/grpc/internal/z1;->L(Lio/grpc/internal/z1;J)J

    .line 12
    iget-object v2, p0, Lio/grpc/internal/z1$s;->c:Lio/grpc/internal/z1;

    invoke-static {v2}, Lio/grpc/internal/z1;->O(Lio/grpc/internal/z1;)J

    move-result-wide v2

    cmp-long v5, p1, v2

    if-lez v5, :cond_4

    .line 13
    iget-object p1, p0, Lio/grpc/internal/z1$s;->a:Lio/grpc/internal/z1$b0;

    iput-boolean v4, p1, Lio/grpc/internal/z1$b0;->c:Z

    .line 14
    :cond_4
    :goto_0
    iget-object p1, p0, Lio/grpc/internal/z1$s;->a:Lio/grpc/internal/z1$b0;

    iget-boolean p2, p1, Lio/grpc/internal/z1$b0;->c:Z

    if-eqz p2, :cond_5

    .line 15
    iget-object p2, p0, Lio/grpc/internal/z1$s;->c:Lio/grpc/internal/z1;

    invoke-static {p2, p1}, Lio/grpc/internal/z1;->Q(Lio/grpc/internal/z1;Lio/grpc/internal/z1$b0;)Ljava/lang/Runnable;

    move-result-object v0

    .line 16
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_6
    return-void

    .line 18
    :cond_7
    :goto_1
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
