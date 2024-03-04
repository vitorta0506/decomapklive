.class final Lcom/tencent/ugc/UGCVideoProcessor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/videoprocessor/VideoProcessManager$IVideoProcessorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ugc/UGCVideoProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/ugc/UGCVideoProcessor;


# direct methods
.method constructor <init>(Lcom/tencent/ugc/UGCVideoProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/UGCVideoProcessor$4;->a:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/ugc/UGCVideoProcessor$4;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/ugc/UGCVideoProcessor$4;->a:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-static {p0, p1}, Lcom/tencent/ugc/UGCVideoProcessor;->access$800(Lcom/tencent/ugc/UGCVideoProcessor;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method


# virtual methods
.method public final customProcessFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCVideoProcessor$4;->a:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-static {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->access$700(Lcom/tencent/ugc/UGCVideoProcessor;)Lcom/tencent/ugc/TXVideoEditer$TXVideoCustomProcessListener;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v0, v1, :cond_2

    .line 4
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/UGCVideoProcessor$4;->a:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-static {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->access$700(Lcom/tencent/ugc/UGCVideoProcessor;)Lcom/tencent/ugc/TXVideoEditer$TXVideoCustomProcessListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v2

    .line 6
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v5

    .line 7
    invoke-interface/range {v1 .. v6}, Lcom/tencent/ugc/TXVideoEditer$TXVideoCustomProcessListener;->onTextureCustomProcess(IIIJ)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public final didProcessFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCVideoProcessor$4;->a:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/ugc/UGCVideoProcessor;->access$200(Lcom/tencent/ugc/UGCVideoProcessor;J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v0, v1, :cond_2

    .line 5
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/UGCVideoProcessor$4;->a:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-static {p0, p1}, Lcom/tencent/ugc/gm;->a(Lcom/tencent/ugc/UGCVideoProcessor$4;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/ugc/UGCVideoProcessor;->access$000(Lcom/tencent/ugc/UGCVideoProcessor;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_3
    return-void
.end method
