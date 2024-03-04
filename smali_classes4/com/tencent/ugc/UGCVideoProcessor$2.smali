.class final Lcom/tencent/ugc/UGCVideoProcessor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/preprocessor/ah;


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

    iput-object p1, p0, Lcom/tencent/ugc/UGCVideoProcessor$2;->a:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final didProcessFrame(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tencent/ugc/UGCVideoProcessor$2;->a:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/tencent/ugc/UGCVideoProcessor;->access$200(Lcom/tencent/ugc/UGCVideoProcessor;J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    .line 3
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object p1

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-eq p1, v0, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object p1

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne p1, v0, :cond_2

    .line 5
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/tencent/ugc/UGCVideoProcessor$2;->a:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-static {p0, p2}, Lcom/tencent/ugc/gk;->a(Lcom/tencent/ugc/UGCVideoProcessor$2;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/ugc/UGCVideoProcessor;->access$000(Lcom/tencent/ugc/UGCVideoProcessor;Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_3
    return-void
.end method
