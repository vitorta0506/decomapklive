.class final synthetic Lcom/tencent/ugc/gk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/ugc/UGCVideoProcessor$2;

.field private final b:Lcom/tencent/liteav/videobase/frame/PixelFrame;


# direct methods
.method private constructor <init>(Lcom/tencent/ugc/UGCVideoProcessor$2;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/gk;->a:Lcom/tencent/ugc/UGCVideoProcessor$2;

    iput-object p2, p0, Lcom/tencent/ugc/gk;->b:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    return-void
.end method

.method public static a(Lcom/tencent/ugc/UGCVideoProcessor$2;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/ugc/gk;

    invoke-direct {v0, p0, p1}, Lcom/tencent/ugc/gk;-><init>(Lcom/tencent/ugc/UGCVideoProcessor$2;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/ugc/gk;->a:Lcom/tencent/ugc/UGCVideoProcessor$2;

    iget-object v1, p0, Lcom/tencent/ugc/gk;->b:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 1
    iget-object v2, v0, Lcom/tencent/ugc/UGCVideoProcessor$2;->a:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-static {v2}, Lcom/tencent/ugc/UGCVideoProcessor;->access$100(Lcom/tencent/ugc/UGCVideoProcessor;)Lcom/tencent/ugc/videoprocessor/VideoProcessManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/tencent/ugc/UGCVideoProcessor$2;->a:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-static {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->access$100(Lcom/tencent/ugc/UGCVideoProcessor;)Lcom/tencent/ugc/videoprocessor/VideoProcessManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/videoprocessor/VideoProcessManager;->processByVideoEffect(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method
