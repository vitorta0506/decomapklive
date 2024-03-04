.class public Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;
.source "SourceFile"


# instance fields
.field private mAvatars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mMvpUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/danmu/DanmuView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/danmu/DanmuView;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->mComments:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->mAvatars:Ljava/util/HashMap;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->mMvpUrls:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$300(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->mAvatars:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->mMvpUrls:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public addDamus(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/Comment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mDanmuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->e()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/Comment;

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->addDanmu(Lcom/guochao/faceshow/aaspring/beans/Comment;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addDanmu(Lcom/guochao/faceshow/aaspring/beans/Comment;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/danmu/b;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/danmu/b;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mDanmuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->d(Lcom/guochao/faceshow/aaspring/danmu/b;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->mComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->init()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mDanmuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->setMaxLine(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mDanmuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->setOnDanmuStateListener(Lcom/guochao/faceshow/aaspring/danmu/c$b;)V

    return-void
.end method

.method public onCreateDanmuProvider()Lv7/b;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)V

    return-object v0
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->stop()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->mAvatars:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
