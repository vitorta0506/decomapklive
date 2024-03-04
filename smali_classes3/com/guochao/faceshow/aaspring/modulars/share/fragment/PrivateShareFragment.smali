.class public Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

.field private b:Lcom/guochao/faceshow/views/m;

.field private c:I

.field private d:Lcom/guochao/faceshow/utils/TailWaterMark;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->c:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->Y1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)Lcom/guochao/faceshow/views/m;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->b:Lcom/guochao/faceshow/views/m;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;Lcom/guochao/faceshow/views/m;)Lcom/guochao/faceshow/views/m;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->b:Lcom/guochao/faceshow/views/m;

    return-object p1
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->c:I

    return p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->c:I

    return p1
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)Lcom/guochao/faceshow/utils/TailWaterMark;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->d:Lcom/guochao/faceshow/utils/TailWaterMark;

    return-object p0
.end method

.method private V1(Lcom/guochao/faceshow/aaspring/beans/VideoItem;ZLjava/lang/String;Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/PermissionTools;->checkStoragePer()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getWidth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getHeight()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v8, p3

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
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->d:Lcom/guochao/faceshow/utils/TailWaterMark;

    if-nez p3, :cond_2

    .line 6
    new-instance p3, Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/guochao/faceshow/utils/TailWaterMark;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->d:Lcom/guochao/faceshow/utils/TailWaterMark;

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->d:Lcom/guochao/faceshow/utils/TailWaterMark;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual/range {v2 .. v8}, Lcom/guochao/faceshow/utils/TailWaterMark;->makeWaterMarkVideoToDCMI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->d:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-virtual {p1, p4}, Lcom/guochao/faceshow/utils/TailWaterMark;->setWaterMarkProcessListener(Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;)V

    return-void
.end method

.method private W1()V
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

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method public static X1(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private Y1(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->V1(Lcom/guochao/faceshow/aaspring/beans/VideoItem;ZLjava/lang/String;Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;)V

    return-void
.end method

.method private Z1()V
    .locals 3

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/social/video/updateState"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01a2

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02ab

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a09f5

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0d6d

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->Z1()V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)V

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->W1()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    :cond_0
    return-void
.end method
