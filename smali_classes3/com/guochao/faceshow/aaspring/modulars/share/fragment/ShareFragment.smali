.class public Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$m;,
        Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

.field private b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

.field private c:Z

.field close:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field copyLink:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Lu9/a;

.field private e:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

.field private f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field private g:Z

.field private h:Lcom/guochao/faceshow/views/m;

.field private i:I

.field private j:Lcom/guochao/faceshow/utils/TailWaterMark;

.field private k:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;

.field private l:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$m;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;",
            ">;"
        }
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field saveBtn:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->d:Lu9/a;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->g:Z

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->i:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->m:Ljava/util/List;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->l2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/aaspring/beans/VideoItem;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    return-object p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lu9/a;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->d:Lu9/a;

    return-object p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->h:Lcom/guochao/faceshow/views/m;

    return-object p0
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;Lcom/guochao/faceshow/views/m;)Lcom/guochao/faceshow/views/m;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->h:Lcom/guochao/faceshow/views/m;

    return-object p1
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->i:I

    return p0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->i:I

    return p1
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/utils/TailWaterMark;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->j:Lcom/guochao/faceshow/utils/TailWaterMark;

    return-object p0
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->m:Ljava/util/List;

    return-object p0
.end method

.method private a2(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/VideoItem;ZLjava/lang/String;Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/PermissionTools;->checkStoragePer()Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p4, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getWidth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getHeight()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v8, p4

    move v7, v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v7, v0

    const/4 v8, 0x0

    .line 5
    :goto_1
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->j:Lcom/guochao/faceshow/utils/TailWaterMark;

    if-nez p4, :cond_2

    .line 6
    new-instance p4, Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/guochao/faceshow/utils/TailWaterMark;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->j:Lcom/guochao/faceshow/utils/TailWaterMark;

    .line 7
    :cond_2
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->j:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-virtual {p4, p5}, Lcom/guochao/faceshow/utils/TailWaterMark;->setWaterMarkProcessListener(Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;)V

    if-eqz p3, :cond_3

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->j:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    .line 10
    invoke-virtual/range {v2 .. v8}, Lcom/guochao/faceshow/utils/TailWaterMark;->makeWaterMarkVideoToDCMI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    .line 11
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->j:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    .line 13
    invoke-virtual/range {v2 .. v8}, Lcom/guochao/faceshow/utils/TailWaterMark;->makeWaterMarkVideoToFaceShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_2
    return-void
.end method

.method private c2()V
    .locals 3

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/social/video/deleteVideo"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->c(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$i;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public static d2(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->e2(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;Z)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    move-result-object p0

    return-object p0
.end method

.method public static e2(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;Z)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "topic"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "showDownload"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static f2(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "video"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static g2(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "live"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "showDownload"

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "showShareToFriend"

    .line 6
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private j2(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setImgUrl(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getShortUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setShortUrl(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoDesc()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v4, 0x7f120827

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setTitle(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :cond_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "%s | BuzzCast"

    const-string v5, "%s | BuzzCast | %s"

    const/4 v6, 0x2

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setShareType(I)V

    goto/16 :goto_1

    .line 12
    :cond_2
    const-class v1, Lcom/twitter/sdk/android/core/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getShortUrl()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "%s|BuzzCast|%s\n%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getShortUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%s|BuzzCast\n%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :cond_4
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$FaceBook;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setTitle(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setTitle(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 22
    :cond_6
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SinaWeibo;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuzzCast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getShortUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getShortUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    goto :goto_1

    .line 26
    :cond_8
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WhatsApp;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f120822

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getShortUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setTitle(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getShortUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    const-string v0, "BuzzCast"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setTitle(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setTitle(Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private k2(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v1, Lcom/twitter/sdk/android/core/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "1"

    const-string v3, "0"

    const-string v4, "sharePlatForm"

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4
    :cond_1
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$FaceBook;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_2
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "2"

    .line 7
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_3
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "3"

    .line 9
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_4
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Instagram;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "4"

    .line 11
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_5
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Youtube;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "6"

    .line 13
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_6
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SinaWeibo;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "7"

    .line 15
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_7
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WhatsApp;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p1, "9"

    .line 17
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_8
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SnapChat;->NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "5"

    .line 19
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_9
    const-string p1, "-1"

    .line 20
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    const-string v1, "shareSource"

    if-eqz p1, :cond_a

    .line 22
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "videoId"

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz p1, :cond_b

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "liveId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->e:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    if-eqz p1, :cond_c

    return-void

    :cond_c
    const-string p1, "tokens/user/share/log"

    .line 28
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$k;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private l2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;

    invoke-direct {v5, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a2(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/VideoItem;ZLjava/lang/String;Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;)V

    return-void
.end method

.method private notifyDataLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private shareLiveToFriend()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;IILcom/guochao/faceshow/aaspring/beans/LiveGameBean;)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$g;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V
    .locals 4

    const p2, 0x7f0a04ef

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 2
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0a0bf8

    .line 4
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getDiplayNameId()I

    move-result p3

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01d4

    return v0
.end method

.method public h2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public i2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V
    .locals 9

    .line 1
    const-class p1, Lcom/twitter/sdk/android/core/l;

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$m;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-interface {v0, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$m;->a(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-nez v0, :cond_3

    .line 6
    sget-object p1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Friend;->NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->shareLiveToFriend()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getContent()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getShortUrl()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getShareType()I

    move-result v6

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->d:Lu9/a;

    .line 10
    invoke-static/range {v0 .. v7}, Lv9/c;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V

    .line 11
    :goto_0
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->k2(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_3
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v1, "video_share_3000"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    if-eqz p2, :cond_8

    .line 13
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Youtube;->NAME:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Instagram;->NAME:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WhatsApp;->NAME:Ljava/lang/String;

    .line 14
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SnapChat;->NAME:Ljava/lang/String;

    .line 15
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->j2(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    .line 19
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getContent()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getShortUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getShareType()I

    move-result v7

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->d:Lu9/a;

    .line 20
    invoke-static/range {v1 .. v8}, Lv9/c;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    .line 24
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getContent()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getShortUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->d:Lu9/a;

    .line 25
    invoke-static/range {v0 .. v7}, Lv9/c;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V

    goto :goto_2

    .line 26
    :cond_6
    :goto_1
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$f;

    invoke-direct {v0, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V

    .line 27
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    .line 28
    :cond_7
    :goto_2
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->k2(Ljava/lang/String;)V

    goto :goto_3

    .line 29
    :cond_8
    sget-object p1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$FaceBook;->NAME:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-static {p1, p2}, Lv9/a;->b(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    goto :goto_3

    .line 31
    :cond_9
    sget-object p1, Lcom/guochao/faceshow/aaspring/beans/More;->NAME:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 32
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.SEND"

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x3

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "text/plain"

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f120822

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getShortUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.intent.extra.TEXT"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->h2()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    const v1, 0x7f0a0818

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    const v3, 0x7f0a02ab

    const v4, 0x7f0a0971

    const/16 v5, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->c:Z

    if-nez v0, :cond_4

    const v0, 0x7f0a071d

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->copyLink:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/utils/DensityUtil;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->saveBtn:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->copyLink:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public loadData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getDefault()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->addDatas(Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->saveBtn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->g:Z

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getTopicDefault(Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->addDatas(Ljava/util/List;)V

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->notifyDataLoaded()V

    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto/16 :goto_0

    .line 3
    :sswitch_0
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    goto/16 :goto_0

    .line 5
    :sswitch_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;->Z()V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->e:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->e:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->e:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "12"

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz p1, :cond_5

    .line 13
    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/player/GCLivePlayer;->isCompatMode()Z

    move-result p1

    xor-int/lit8 v4, p1, 0x1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getScreenShotSwitch()I

    move-result v5

    const-string v3, "2"

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/player/GCLivePlayer;->isCompatMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "2"

    invoke-static {p1, v0, v1, v3, v2}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 16
    :sswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-eqz p1, :cond_4

    const p1, 0x7f12076f

    .line 17
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 18
    sget-object p1, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AppContentFilter;->doNotWantToSee(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz p1, :cond_5

    const p1, 0x7f12076e

    .line 21
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 22
    sget-object p1, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AppContentFilter;->doNotWantToSee(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 24
    :sswitch_3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->c2()V

    goto :goto_0

    .line 25
    :sswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_5

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getShortUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Label"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 28
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v0, 0x7f1201e6

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    .line 29
    :sswitch_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_0

    .line 30
    :sswitch_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;

    if-eqz p1, :cond_5

    .line 32
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;->onCancel()V

    :cond_5
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a01af -> :sswitch_6
        0x7f0a020d -> :sswitch_5
        0x7f0a0267 -> :sswitch_4
        0x7f0a02ab -> :sswitch_3
        0x7f0a0818 -> :sswitch_2
        0x7f0a0971 -> :sswitch_1
        0x7f0a09f5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;->onCancel()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "video"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "topic"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->e:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "live"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "showDownload"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->c:Z

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "showShareToFriend"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->g:Z

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p1, 0x7f13012a

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :goto_0
    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0395

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    invoke-static {}, Lv9/c;->c()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;Landroid/view/Window;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_0
    return-void
.end method

.method public setOnListener(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;

    return-void
.end method

.method public setOnSharePlatformClickListener(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$m;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$m;

    return-void
.end method
