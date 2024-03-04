.class public final Lcom/tencent/liteav/base/util/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/base/util/p$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field final c:Lcom/tencent/liteav/base/util/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Lcom/tencent/liteav/base/util/p$a;

.field e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/base/util/j;Lcom/tencent/liteav/base/util/p$a;)V
    .locals 1
    .param p1    # Lcom/tencent/liteav/base/util/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/base/util/p;->b:Z

    .line 3
    new-instance v0, Lcom/tencent/liteav/base/util/p$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/base/util/p$1;-><init>(Lcom/tencent/liteav/base/util/p;)V

    iput-object v0, p0, Lcom/tencent/liteav/base/util/p;->e:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/base/util/p;->c:Lcom/tencent/liteav/base/util/j;

    .line 5
    iput-object p2, p0, Lcom/tencent/liteav/base/util/p;->d:Lcom/tencent/liteav/base/util/p$a;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/liteav/base/util/p;->b()V

    const/16 v0, 0xf

    .line 2
    iput v0, p0, Lcom/tencent/liteav/base/util/p;->a:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/base/util/p;->b:Z

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/base/util/p;->c:Lcom/tencent/liteav/base/util/j;

    iget-object v1, p0, Lcom/tencent/liteav/base/util/p;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/base/util/p;->c:Lcom/tencent/liteav/base/util/j;

    iget-object v1, p0, Lcom/tencent/liteav/base/util/p;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/base/util/p;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
