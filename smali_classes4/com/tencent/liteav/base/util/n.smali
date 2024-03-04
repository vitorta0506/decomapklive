.class final synthetic Lcom/tencent/liteav/base/util/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/base/util/j$a;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/base/util/j$a;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/base/util/n;->a:Lcom/tencent/liteav/base/util/j$a;

    iput-object p2, p0, Lcom/tencent/liteav/base/util/n;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/base/util/j$a;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/base/util/n;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/base/util/n;-><init>(Lcom/tencent/liteav/base/util/j$a;Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/base/util/n;->a:Lcom/tencent/liteav/base/util/j$a;

    iget-object v1, p0, Lcom/tencent/liteav/base/util/n;->b:Ljava/lang/Runnable;

    .line 1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2
    iget-object v2, v0, Lcom/tencent/liteav/base/util/j$a;->d:Lcom/tencent/liteav/base/util/j;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/tencent/liteav/base/util/j$a;->d:Lcom/tencent/liteav/base/util/j;

    .line 4
    iget-object v0, v0, Lcom/tencent/liteav/base/util/j;->c:Ljava/util/Map;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
