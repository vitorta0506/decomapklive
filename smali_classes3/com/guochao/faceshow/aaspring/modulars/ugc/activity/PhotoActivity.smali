.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    name = "\u76f8\u518c"
    path = "/app/photoActivity"
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:Z

.field rcvPhoto:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/16 v0, 0x67

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->f:I

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/PhotoSelectAdapter;

    return-object p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->g:Z

    return p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->g:Z

    return p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->e:I

    return p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->c:Z

    return p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->o0(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Z)V

    return-void
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->b:I

    return p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->d:Z

    return p0
.end method

.method private o0(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Z)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent_extra_key_qr_scan"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    .line 4
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object p1

    const-string v2, "uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "gif"

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    const v0, 0x7f01000c

    const v1, 0x7f01004d

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0091

    return v0
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f12006d

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->f:I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->b:I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->e:I

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getVipInfo()Lb8/g;

    move-result-object v0

    invoke-interface {v0}, Lb8/g;->isVip()Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->c:Z

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nogif"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->d:Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->rcvPhoto:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)V

    .line 9
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public p0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)V

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;->f:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$c;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeAllMedia(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x66

    if-ne v1, v2, :cond_1

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeVideos(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$e;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeImages(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V

    :goto_0
    return-void
.end method
