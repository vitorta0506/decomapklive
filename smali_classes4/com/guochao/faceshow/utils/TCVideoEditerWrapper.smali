.class public Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;,
        Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper; = null

.field private static final TAG:Ljava/lang/String; = "TCVideoEditerWrapper"

.field public static final mThumbnailCount:I = 0xa


# instance fields
.field private mCutterDuration:J

.field private mCutterEndTime:J

.field private mCutterStartTime:J

.field private mIsReverse:Z

.field private mPreviewListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;

.field private mPreviewWrapperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

.field private mTXVideoInfo:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

.field private mThumbnailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$1;-><init>(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mPreviewListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mThumbnailList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mPreviewWrapperList:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mIsReverse:Z

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mPreviewWrapperList:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance()Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->INSTANCE:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->INSTANCE:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    invoke-direct {v1}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->INSTANCE:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->INSTANCE:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    return-object v0
.end method


# virtual methods
.method public addTXVideoPreviewListenerWrapper(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mPreviewWrapperList:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mPreviewWrapperList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mPreviewWrapperList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addThumbnailBitmap(JLandroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mThumbnailList:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;-><init>(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;JLandroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleaThumbnails()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mThumbnailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v1, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, v1, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mThumbnailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setTXVideoPreviewListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;)V

    .line 3
    iput-object v1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    :cond_0
    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mCutterDuration:J

    .line 5
    iput-wide v2, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mCutterStartTime:J

    .line 6
    iput-wide v2, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mCutterEndTime:J

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mThumbnailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mPreviewWrapperList:Ljava/util/List;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mPreviewWrapperList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mIsReverse:Z

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mTXVideoInfo:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->coverImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mTXVideoInfo:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    iget-object v0, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->coverImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mTXVideoInfo:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    iput-object v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->coverImage:Landroid/graphics/Bitmap;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public geCutterDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mCutterDuration:J

    return-wide v0
.end method

.method public getAllThumbnails()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mTXVideoInfo:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getThumbnailList(JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCutterEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mCutterEndTime:J

    return-wide v0
.end method

.method public getCutterStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mCutterStartTime:J

    return-wide v0
.end method

.method public getEditer()Lcom/tencent/ugc/TXVideoEditer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    return-object v0
.end method

.method public getTXVideoInfo()Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mTXVideoInfo:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    return-object v0
.end method

.method public getThumbnailList(JJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mThumbnailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;

    .line 3
    iget-wide v3, v2, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;->ptsMs:J

    cmp-long v5, v3, p1

    if-ltz v5, :cond_0

    cmp-long v5, v3, p3

    if-gtz v5, :cond_0

    .line 4
    iget-object v2, v2, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isReverse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mIsReverse:Z

    return v0
.end method

.method public removeTXVideoPreviewListenerWrapper(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mPreviewWrapperList:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mPreviewWrapperList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCutterDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mCutterDuration:J

    return-void
.end method

.method public setCutterStartTime(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mCutterStartTime:J

    .line 2
    iput-wide p3, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mCutterEndTime:J

    sub-long/2addr p3, p1

    .line 3
    iput-wide p3, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mCutterDuration:J

    return-void
.end method

.method public setEditer(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mPreviewListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/TXVideoEditer;->setTXVideoPreviewListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;)V

    :cond_0
    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mIsReverse:Z

    return-void
.end method

.method public setTXVideoInfo(Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->mTXVideoInfo:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    return-void
.end method
