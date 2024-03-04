.class public Lcom/tencent/ugc/UGCThumbnailGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;
    }
.end annotation


# instance fields
.field private mEGLCore:Lcom/tencent/liteav/videobase/b/e;

.field private final mGLFrameBuffer:Lcom/tencent/liteav/videobase/frame/c;

.field private mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

.field private mGenerateIndex:I

.field private mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

.field private mIsInitialized:Z

.field private final mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

.field private mPixelFrameRender:Lcom/tencent/liteav/videobase/frame/j;

.field private mSharedContext:Ljava/lang/Object;

.field private mTag:Ljava/lang/String;

.field private final mThrottlers:Lcom/tencent/liteav/base/b/b;

.field private mThumbnailGenerateInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

.field private mThumbnailListener:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v0, "ThumbnailGenerator_"

    .line 3
    iput-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGenerateIndex:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    .line 6
    new-instance v1, Lcom/tencent/liteav/videobase/frame/c;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/frame/c;-><init>()V

    iput-object v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGLFrameBuffer:Lcom/tencent/liteav/videobase/frame/c;

    .line 7
    iput-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mSharedContext:Ljava/lang/Object;

    .line 8
    new-instance v0, Lcom/tencent/ugc/UGCMediaListSource;

    invoke-direct {v0}, Lcom/tencent/ugc/UGCMediaListSource;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/tencent/ugc/UGCThumbnailGenerator;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCThumbnailGenerator;->getNextThumbnail()V

    return-void
.end method

.method public static calculateThumbnailList(IJJJ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJ)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "calculateThumbnailList"

    const-wide/16 v1, 0x0

    cmp-long v3, p5, v1

    if-ltz v3, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "calculateThumbnailList startTimeMs : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", endTimeMs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sub-long v3, p3, p1

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    move-wide p5, v3

    :cond_1
    int-to-long v3, p0

    .line 4
    div-long/2addr p5, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_3

    int-to-long v4, v3

    mul-long v4, v4, p5

    add-long/2addr v4, p1

    cmp-long v6, p3, v1

    if-lez v6, :cond_2

    .line 5
    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 6
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 7
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "param error: duration= "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",count= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getBitmapFromTexture(Lcom/tencent/liteav/videobase/frame/d;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGLFrameBuffer:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/c;->a(I)V

    .line 2
    iget-object p1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGLFrameBuffer:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/c;->b()V

    .line 3
    iget-object p1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailGenerateInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    iget v0, p1, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->width:I

    iget p1, p1, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->height:I

    mul-int v0, v0, p1

    mul-int/lit8 v0, v0, 0x4

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget-object v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailGenerateInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    iget v2, v1, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->width:I

    iget v1, v1, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->height:I

    invoke-static {v0, v0, v2, v1, p1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->readPixels(IIIILjava/lang/Object;)V

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget-object v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailGenerateInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    iget v2, v1, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->width:I

    iget v1, v1, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const p1, 0x8d40

    .line 11
    invoke-static {p1, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->bindFramebuffer(II)V

    .line 12
    iget-object p1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGLFrameBuffer:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/c;->c()V

    return-object v1
.end method

.method private getNextThumbnail()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailGenerateInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->thumbnailPtsList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGenerateIndex:I

    if-gt v0, v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailGenerateInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    iget-object v0, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->thumbnailPtsList:Ljava/util/List;

    add-int/lit8 v2, v1, 0x1

    .line 4
    iput v2, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGenerateIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 5
    iget-object v3, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailGenerateInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    iget-boolean v3, v3, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->fast:Z

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v3, v1, v2}, Lcom/tencent/ugc/UGCMediaListSource;->impreciseSeekTo(J)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v3, v1, v2}, Lcom/tencent/ugc/UGCMediaListSource;->seekTo(J)V

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v3}, Lcom/tencent/ugc/UGCMediaListSource;->readNextVideoFrame()Ljava/util/List;

    move-result-object v3

    .line 9
    invoke-static {v3}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 10
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 11
    iget-object v5, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mSharedContext:Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/tencent/ugc/UGCThumbnailGenerator;->uninitOpenGLComponents()V

    .line 13
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailGenerateInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    iget v7, v6, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->width:I

    iget v6, v6, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->height:I

    invoke-direct {p0, v5, v7, v6}, Lcom/tencent/ugc/UGCThumbnailGenerator;->initOpenGLComponents(Ljava/lang/Object;II)V

    .line 14
    :cond_4
    iget-object v5, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    if-nez v5, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    iget-object v4, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailGenerateInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    iget v6, v4, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->width:I

    iget v4, v4, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->height:I

    .line 16
    invoke-virtual {v5, v6, v4}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v4

    .line 17
    iget-object v5, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mPixelFrameRender:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v5, v3, v6, v4}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 18
    invoke-direct {p0, v4}, Lcom/tencent/ugc/UGCThumbnailGenerator;->getBitmapFromTexture(Lcom/tencent/liteav/videobase/frame/d;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 19
    iget-object v6, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailListener:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

    if-eqz v6, :cond_6

    .line 20
    iget v7, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGenerateIndex:I

    invoke-interface {v6, v7, v1, v2, v5}, Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;->onThumbnail(IJLandroid/graphics/Bitmap;)V

    .line 21
    :cond_6
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 22
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGenerateIndex:I

    if-le v0, v1, :cond_7

    .line 24
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/fp;->a(Lcom/tencent/ugc/UGCThumbnailGenerator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void

    .line 25
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v1, "NoEGLCore"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "EGLCore or GLTexturePool is null"

    invoke-static {v0, v1, v4, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    .line 27
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    const-string v1, "readNextVideoFrame return null."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "generate runnable: mThumbnailGenerateInfo= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailGenerateInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mGenerateIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGenerateIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initOpenGLComponents(Ljava/lang/Object;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "initOpenGLComponents "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0, p1, v2, v1, v1}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance v0, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    .line 6
    new-instance v0, Lcom/tencent/liteav/videobase/frame/j;

    invoke-direct {v0, p2, p3}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mPixelFrameRender:Lcom/tencent/liteav/videobase/frame/j;

    .line 7
    iget-object p2, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGLFrameBuffer:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/c;->a()V

    .line 8
    iput-object p1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mSharedContext:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    .line 9
    iput-object v2, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    .line 10
    iget-object p2, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string p3, "initGLError"

    invoke-virtual {p2, p3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p2

    iget-object p3, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "EGLCore create failed."

    invoke-static {p2, p3, p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setVideoSourceList$1(Lcom/tencent/ugc/UGCThumbnailGenerator;Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "setVideoSourceList "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->setVideoSources(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setVideoSourceRange$2(Lcom/tencent/ugc/UGCThumbnailGenerator;JJ)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/ugc/UGCMediaListSource;->setVideoSourceRange(JJ)V

    return-void
.end method

.method static synthetic lambda$start$3(Lcom/tencent/ugc/UGCThumbnailGenerator;Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->thumbnailPtsList:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start width = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGenerateIndex:I

    .line 4
    iput-object p1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailGenerateInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    .line 5
    iput-object p2, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailListener:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

    .line 6
    invoke-direct {p0}, Lcom/tencent/ugc/UGCThumbnailGenerator;->getNextThumbnail()V

    return-void

    .line 7
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    const-string/jumbo p1, "start param error!"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$stop$4(Lcom/tencent/ugc/UGCThumbnailGenerator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailGenerateInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    .line 3
    iput-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThumbnailListener:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

    return-void
.end method

.method static synthetic lambda$uninitialize$0(Lcom/tencent/ugc/UGCThumbnailGenerator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "unInitialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/UGCThumbnailGenerator;->uninitOpenGLComponents()V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    const-string v1, "already uninitialize."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mIsInitialized:Z

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object p0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCMediaListSource;->uninitialize()V

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private runOnThumbnailThread(Ljava/lang/Runnable;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 2
    iget-boolean v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mIsInitialized:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v2
.end method

.method private uninitOpenGLComponents()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v1, "uninitGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "uninitOpenGLComponents"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->b()V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 6
    iput-object v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mPixelFrameRender:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 9
    iput-object v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mPixelFrameRender:Lcom/tencent/liteav/videobase/frame/j;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mGLFrameBuffer:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/c;->d()V

    .line 11
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 12
    iput-object v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mTag:Ljava/lang/String;

    const-string v1, "already initialized."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "thumbnailG_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mIsInitialized:Z

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcom/tencent/ugc/UGCThumbnailGenerator;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/tencent/ugc/fk;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCThumbnailGenerator;->runOnThumbnailThread(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVideoSourceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/tencent/ugc/fm;->a(Lcom/tencent/ugc/UGCThumbnailGenerator;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCThumbnailGenerator;->runOnThumbnailThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVideoSourceRange(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/ugc/fn;->a(Lcom/tencent/ugc/UGCThumbnailGenerator;JJ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCThumbnailGenerator;->runOnThumbnailThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start(Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/ugc/fo;->a(Lcom/tencent/ugc/UGCThumbnailGenerator;Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCThumbnailGenerator;->runOnThumbnailThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/ugc/fq;->a(Lcom/tencent/ugc/UGCThumbnailGenerator;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCThumbnailGenerator;->runOnThumbnailThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public uninitialize()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/ugc/fl;->a(Lcom/tencent/ugc/UGCThumbnailGenerator;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCThumbnailGenerator;->runOnThumbnailThread(Ljava/lang/Runnable;)Z

    return-void
.end method
