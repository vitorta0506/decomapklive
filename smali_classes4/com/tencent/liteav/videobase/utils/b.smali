.class public final Lcom/tencent/liteav/videobase/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/utils/h;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/b;->a:Ljava/util/concurrent/BlockingDeque;

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/b;->a:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    return-object v0
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/b;->a:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "BlockingFrameQueue"

    const-string v1, "push frame failed with exception"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/b;->a:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingDeque;->drainTo(Ljava/util/Collection;)I

    .line 3
    invoke-static {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    return-void
.end method
