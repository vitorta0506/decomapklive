.class public Lcom/tencent/ugc/TXVideoJoiner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/TXVideoJoiner$TXVideoPreviewListener;,
        Lcom/tencent/ugc/TXVideoJoiner$TXVideoJoinerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TXVideoJoiner"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsNeedEdit:Z

.field private mProfile:I

.field private mRemuxJoiner:Lcom/tencent/ugc/RemuxJoiner;

.field private final mRemuxJoinerListener:Lcom/tencent/ugc/RemuxJoiner$RemuxJoinerListener;

.field private final mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

.field private mSplitScreenCanvasHeight:I

.field private mSplitScreenCanvasWidth:I

.field private mSplitScreenRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTXEditerVideoJoinerListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;

.field private final mTXEditerVideoPreviewListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;

.field private mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

.field private mTXVideoJoinerListener:Lcom/tencent/ugc/TXVideoJoiner$TXVideoJoinerListener;

.field private mTXVideoPreviewListener:Lcom/tencent/ugc/TXVideoJoiner$TXVideoPreviewListener;

.field private mTxPreviewParam:Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;

.field private mVideoOutputPath:Ljava/lang/String;

.field private mVideoSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoVolumes:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mIsNeedEdit:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mProfile:I

    .line 4
    iput v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenCanvasWidth:I

    .line 5
    iput v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenCanvasHeight:I

    .line 6
    new-instance v0, Lcom/tencent/ugc/TXVideoJoiner$1;

    invoke-direct {v0, p0}, Lcom/tencent/ugc/TXVideoJoiner$1;-><init>(Lcom/tencent/ugc/TXVideoJoiner;)V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXEditerVideoPreviewListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;

    .line 7
    new-instance v0, Lcom/tencent/ugc/TXVideoJoiner$2;

    invoke-direct {v0, p0}, Lcom/tencent/ugc/TXVideoJoiner$2;-><init>(Lcom/tencent/ugc/TXVideoJoiner;)V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXEditerVideoJoinerListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;

    .line 8
    new-instance v0, Lcom/tencent/ugc/TXVideoJoiner$3;

    invoke-direct {v0, p0}, Lcom/tencent/ugc/TXVideoJoiner$3;-><init>(Lcom/tencent/ugc/TXVideoJoiner;)V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mRemuxJoinerListener:Lcom/tencent/ugc/RemuxJoiner$RemuxJoinerListener;

    .line 9
    new-instance v0, Lcom/tencent/liteav/base/util/j;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/j;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mContext:Landroid/content/Context;

    const/16 p1, 0x3ed

    .line 11
    invoke-static {p1}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/ugc/TXVideoJoiner;)Lcom/tencent/ugc/TXVideoJoiner$TXVideoPreviewListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoPreviewListener:Lcom/tencent/ugc/TXVideoJoiner$TXVideoPreviewListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/ugc/TXVideoJoiner;)Lcom/tencent/liteav/base/util/j;
    .locals 0

    iget-object p0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/ugc/TXVideoJoiner;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoJoiner;->stopPlayInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/ugc/TXVideoJoiner;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/ugc/TXVideoJoiner;->notifyJoinProgress(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/ugc/TXVideoJoiner;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/TXVideoJoiner;->notifyJoinComplete(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/ugc/TXVideoJoiner;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoJoiner;->destroyRemuxJoiner()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/tencent/ugc/TXVideoJoiner;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoJoiner;->stopPlayInternal()V

    return-void
.end method

.method private destroyRemuxJoiner()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mRemuxJoiner:Lcom/tencent/ugc/RemuxJoiner;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/ugc/RemuxJoiner;->stop()V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mRemuxJoiner:Lcom/tencent/ugc/RemuxJoiner;

    invoke-virtual {v0}, Lcom/tencent/ugc/RemuxJoiner;->uninitialize()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mRemuxJoiner:Lcom/tencent/ugc/RemuxJoiner;

    :cond_0
    return-void
.end method

.method private destroyVideoEditer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    :cond_0
    return-void
.end method

.method private joinVideoInternal(ILjava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoJoiner;->destroyVideoEditer()V

    .line 2
    new-instance v0, Lcom/tencent/ugc/TXVideoEditer;

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-direct {v0, v1, v2}, Lcom/tencent/ugc/TXVideoEditer;-><init>(Landroid/content/Context;Lcom/tencent/liteav/base/util/j;)V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    .line 3
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoSourceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setMediaSourcePaths(Ljava/util/List;)I

    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p3}, Lcom/tencent/ugc/TXVideoEditer;->isHasAudio()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenRects:Ljava/util/List;

    .line 5
    invoke-static {p3}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 6
    iget-object p3, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/tencent/ugc/TXVideoEditer;->setIsSplitScreen(Z)V

    .line 7
    iget-object p3, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenRects:Ljava/util/List;

    iget v1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenCanvasWidth:I

    iget v2, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenCanvasHeight:I

    invoke-virtual {p3, v0, v1, v2}, Lcom/tencent/ugc/TXVideoEditer;->setSplitScreenList(Ljava/util/List;II)V

    .line 8
    iget-object p3, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoVolumes:[F

    if-eqz p3, :cond_0

    .line 9
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, p3}, Lcom/tencent/ugc/TXVideoEditer;->setVideoVolumes([F)V

    .line 10
    :cond_0
    iget-object p3, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXEditerVideoJoinerListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;

    invoke-virtual {p3, v0}, Lcom/tencent/ugc/TXVideoEditer;->setVideoGenerateListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;)V

    .line 11
    iget-object p3, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mIsNeedEdit:Z

    invoke-virtual {p3, v0}, Lcom/tencent/ugc/TXVideoEditer;->setIsFullIFrame(Z)V

    .line 12
    iget-object p3, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    iget v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mProfile:I

    invoke-virtual {p3, v0}, Lcom/tencent/ugc/TXVideoEditer;->setProfile(I)V

    .line 13
    iget-object p3, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p3, p1, p2}, Lcom/tencent/ugc/TXVideoEditer;->generateVideo(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$cancel$9(Lcom/tencent/ugc/TXVideoJoiner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoJoiner;->destroyRemuxJoiner()V

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoJoiner;->destroyVideoEditer()V

    return-void
.end method

.method static synthetic lambda$initWithPreview$1(Lcom/tencent/ugc/TXVideoJoiner;Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTxPreviewParam:Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->initWithPreview(Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$joinVideo$8(Lcom/tencent/ugc/TXVideoJoiner;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/ugc/TXVideoJoiner;->startQuickJoinVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TXVideoJoiner"

    const-string p1, "quickJoinVideo success"

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p2, p1, v0}, Lcom/tencent/ugc/TXVideoJoiner;->joinVideoInternal(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$notifyJoinComplete$14(Lcom/tencent/ugc/TXVideoJoiner;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    :cond_0
    return-void
.end method

.method static synthetic lambda$pausePlay$4(Lcom/tencent/ugc/TXVideoJoiner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/ugc/TXVideoEditer;->pausePlay()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$resumePlay$5(Lcom/tencent/ugc/TXVideoJoiner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/ugc/TXVideoEditer;->resumePlay()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setNeedEdit$13(Lcom/tencent/ugc/TXVideoJoiner;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mIsNeedEdit:Z

    return-void
.end method

.method static synthetic lambda$setProfile$7(Lcom/tencent/ugc/TXVideoJoiner;I)V
    .locals 0

    iput p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mProfile:I

    return-void
.end method

.method static synthetic lambda$setSplitScreenList$10(Lcom/tencent/ugc/TXVideoJoiner;Ljava/util/List;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenRects:Ljava/util/List;

    .line 2
    iput p2, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenCanvasWidth:I

    .line 3
    iput p3, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenCanvasHeight:I

    .line 4
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/ugc/TXVideoEditer;->setSplitScreenList(Ljava/util/List;II)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setTXVideoPreviewListener$2(Lcom/tencent/ugc/TXVideoJoiner;Lcom/tencent/ugc/TXVideoJoiner$TXVideoPreviewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoPreviewListener:Lcom/tencent/ugc/TXVideoJoiner$TXVideoPreviewListener;

    return-void
.end method

.method static synthetic lambda$setVideoJoinerListener$6(Lcom/tencent/ugc/TXVideoJoiner;Lcom/tencent/ugc/TXVideoJoiner$TXVideoJoinerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoJoinerListener:Lcom/tencent/ugc/TXVideoJoiner$TXVideoJoinerListener;

    return-void
.end method

.method static synthetic lambda$setVideoPathList$0(Lcom/tencent/ugc/TXVideoJoiner;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoSourceList:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$setVideoVolumes$11(Lcom/tencent/ugc/TXVideoJoiner;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoVolumes:[F

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoVolumes:[F

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz p1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoVolumes:[F

    invoke-virtual {p1, p0}, Lcom/tencent/ugc/TXVideoEditer;->setVideoVolumes([F)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$splitJoinVideo$12(Lcom/tencent/ugc/TXVideoJoiner;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/ugc/TXVideoJoiner;->joinVideoInternal(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$startPlay$3(Lcom/tencent/ugc/TXVideoJoiner;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoJoiner;->stopPlayInternal()V

    .line 2
    new-instance v0, Lcom/tencent/ugc/TXVideoEditer;

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-direct {v0, v1, v2}, Lcom/tencent/ugc/TXVideoEditer;-><init>(Landroid/content/Context;Lcom/tencent/liteav/base/util/j;)V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    .line 3
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoSourceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setMediaSourcePaths(Ljava/util/List;)I

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTxPreviewParam:Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->initWithPreview(Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->isHasAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenRects:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setIsSplitScreen(Z)V

    .line 7
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenRects:Ljava/util/List;

    iget v2, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenCanvasWidth:I

    iget v3, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSplitScreenCanvasHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/ugc/TXVideoEditer;->setSplitScreenList(Ljava/util/List;II)V

    .line 8
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoVolumes:[F

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/TXVideoEditer;->setVideoVolumes([F)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXEditerVideoPreviewListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setTXVideoPreviewListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;)V

    .line 11
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/ugc/TXVideoEditer;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/ugc/TXVideoEditer;->startPlayFromTime(JJ)V

    return-void
.end method

.method private notifyJoinComplete(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/bz;->a(Lcom/tencent/ugc/TXVideoJoiner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    .line 2
    new-instance v0, Lcom/tencent/ugc/TXVideoEditConstants$TXJoinerResult;

    invoke-direct {v0}, Lcom/tencent/ugc/TXVideoEditConstants$TXJoinerResult;-><init>()V

    .line 3
    iput-object p2, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXJoinerResult;->descMsg:Ljava/lang/String;

    .line 4
    iput p1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXJoinerResult;->retCode:I

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TXGenerateResult descMsg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " retCode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TXVideoJoiner"

    invoke-static {v1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoJoinerListener:Lcom/tencent/ugc/TXVideoJoiner$TXVideoJoinerListener;

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2, v0}, Lcom/tencent/ugc/TXVideoJoiner$TXVideoJoinerListener;->onJoinComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXJoinerResult;)V

    :cond_0
    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoOutputPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoOutputPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoOutputPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    long-to-int p2, p1

    const/16 p1, 0x408

    const-string v0, ""

    .line 10
    invoke-static {p1, p2, v0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private notifyJoinProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoJoinerListener:Lcom/tencent/ugc/TXVideoJoiner$TXVideoJoinerListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/ugc/TXVideoJoiner$TXVideoJoinerListener;->onJoinProgress(F)V

    :cond_0
    return-void
.end method

.method private startQuickJoinVideo(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoJoiner;->destroyRemuxJoiner()V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoSourceList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-static {v0}, Lcom/tencent/ugc/RemuxJoiner;->isConcatableWithoutReencode(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TXVideoJoiner"

    const-string v2, "RemuxerJoinerChecker check is ok"

    .line 4
    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mRemuxJoiner:Lcom/tencent/ugc/RemuxJoiner;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/tencent/ugc/RemuxJoiner;

    invoke-direct {v0}, Lcom/tencent/ugc/RemuxJoiner;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mRemuxJoiner:Lcom/tencent/ugc/RemuxJoiner;

    .line 7
    invoke-virtual {v0}, Lcom/tencent/ugc/RemuxJoiner;->initialize()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mRemuxJoiner:Lcom/tencent/ugc/RemuxJoiner;

    invoke-virtual {v0}, Lcom/tencent/ugc/RemuxJoiner;->stop()V

    .line 9
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mRemuxJoiner:Lcom/tencent/ugc/RemuxJoiner;

    iget-object v2, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoSourceList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/tencent/ugc/RemuxJoiner;->setSourcePaths(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mRemuxJoiner:Lcom/tencent/ugc/RemuxJoiner;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/RemuxJoiner;->setTargetPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 11
    :cond_3
    iput-object p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoOutputPath:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mRemuxJoiner:Lcom/tencent/ugc/RemuxJoiner;

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mRemuxJoinerListener:Lcom/tencent/ugc/RemuxJoiner$RemuxJoinerListener;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/RemuxJoiner;->setVideoJoinerListener(Lcom/tencent/ugc/RemuxJoiner$RemuxJoinerListener;)V

    .line 13
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoJoiner;->mRemuxJoiner:Lcom/tencent/ugc/RemuxJoiner;

    invoke-virtual {p1}, Lcom/tencent/ugc/RemuxJoiner;->start()Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method private stopPlayInternal()V
    .locals 2

    const-string v0, "TXVideoJoiner"

    const-string/jumbo v1, "stopPlayInternal"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->stopPlay()V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mTXVideoEditer:Lcom/tencent/ugc/TXVideoEditer;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "TXVideoJoiner"

    const-string v1, "cancel"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/bu;->a(Lcom/tencent/ugc/TXVideoJoiner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initWithPreview(Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initWithPreview videoView = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;->videoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoJoiner"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/ca;->a(Lcom/tencent/ugc/TXVideoJoiner;Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public joinVideo(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "joinVideo videoCompressed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoOutputPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoJoiner"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "joinVideo is not support on smart version"

    .line 3
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x5

    const-string p2, "licence verify failed"

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/TXVideoJoiner;->notifyJoinComplete(ILjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iput-object p2, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoOutputPath:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p2, p1}, Lcom/tencent/ugc/bt;->a(Lcom/tencent/ugc/TXVideoJoiner;Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pausePlay()V
    .locals 2

    const-string v0, "TXVideoJoiner"

    const-string v1, "pausePlay"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/cd;->a(Lcom/tencent/ugc/TXVideoJoiner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumePlay()V
    .locals 2

    const-string v0, "TXVideoJoiner"

    const-string v1, "resumePlay"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/ce;->a(Lcom/tencent/ugc/TXVideoJoiner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNeedEdit(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setNeedEdit = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoJoiner"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/by;->a(Lcom/tencent/ugc/TXVideoJoiner;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setProfile(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setProfile profile "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoJoiner"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/ch;->a(Lcom/tencent/ugc/TXVideoJoiner;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRecordPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setRecordPath recordPath = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXVideoJoiner"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSplitScreenList(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;",
            ">;II)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSplitScreenList canvasWidth = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " canvasHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoJoiner"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/ugc/bv;->a(Lcom/tencent/ugc/TXVideoJoiner;Ljava/util/List;II)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTXVideoPreviewListener(Lcom/tencent/ugc/TXVideoJoiner$TXVideoPreviewListener;)V
    .locals 2

    const-string v0, "TXVideoJoiner"

    const-string v1, "setTXVideoPreviewListener"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/cb;->a(Lcom/tencent/ugc/TXVideoJoiner;Lcom/tencent/ugc/TXVideoJoiner$TXVideoPreviewListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVideoJoinerListener(Lcom/tencent/ugc/TXVideoJoiner$TXVideoJoinerListener;)V
    .locals 2

    const-string v0, "TXVideoJoiner"

    const-string v1, "setVideoJoinerListener"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/cg;->a(Lcom/tencent/ugc/TXVideoJoiner;Lcom/tencent/ugc/TXVideoJoiner$TXVideoJoinerListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVideoPathList(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    invoke-static {v1}, Lcom/tencent/ugc/TXVideoEditer;->isMediaSourceValid(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setVideoPathList "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is illegal."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXVideoJoiner"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/bs;->a(Lcom/tencent/ugc/TXVideoJoiner;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setVideoVolumes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TXVideoJoiner"

    const-string v1, "setVideoVolumes"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/bw;->a(Lcom/tencent/ugc/TXVideoJoiner;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public splitJoinVideo(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "splitJoinVideo video Compressed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoOutputPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoJoiner"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p1, "splitJoinVideo is not support on smart version"

    .line 3
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x5

    const-string p2, "licence verify failed"

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/TXVideoJoiner;->notifyJoinComplete(ILjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iput-object p2, p0, Lcom/tencent/ugc/TXVideoJoiner;->mVideoOutputPath:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2}, Lcom/tencent/ugc/bx;->a(Lcom/tencent/ugc/TXVideoJoiner;ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    const/16 p1, 0x407

    .line 7
    invoke-static {p1}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    return-void
.end method

.method public startPlay()V
    .locals 2

    const-string v0, "TXVideoJoiner"

    const-string/jumbo v1, "startPlay"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/cc;->a(Lcom/tencent/ugc/TXVideoJoiner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopPlay()V
    .locals 2

    const-string v0, "TXVideoJoiner"

    const-string/jumbo v1, "stopPlay"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoJoiner;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/cf;->a(Lcom/tencent/ugc/TXVideoJoiner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method
