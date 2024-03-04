.class public Lcom/guochao/faceshow/activity/VideoPlayActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field e:Lcom/guochao/faceshow/aaspring/beans/Comment;

.field f:Z

.field mTitleLy:Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->c:I

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/VideoPlayActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->c:I

    return p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/VideoPlayActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/VideoPlayActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method private g0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/social/video/checkVideoIsExist"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->b:Ljava/lang/String;

    const-string v2, "videoId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/VideoPlayActivity$b;-><init>(Lcom/guochao/faceshow/activity/VideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/VideoPlayActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/VideoPlayActivity$a;-><init>(Lcom/guochao/faceshow/activity/VideoPlayActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "video_id"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "check_video"

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->checkIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00c9

    return v0
.end method

.method public initView()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->mTitleLy:Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06038c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->mTitleLy:Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->setBottomEnable(Z)V

    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->a:I

    const-string v2, "video_id"

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->b:Ljava/lang/String;

    .line 7
    iget v2, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->c:I

    const-string v3, "private"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->c:I

    const-string v2, "commentId"

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->d:Ljava/lang/String;

    const-string v2, "with_comment"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->f:Z

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->clear(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/Comment;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->e:Lcom/guochao/faceshow/aaspring/beans/Comment;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x500

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "check_video"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/VideoPlayActivity;->g0()V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a073b

    iget v2, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->c:I

    iget-object v3, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->e:Lcom/guochao/faceshow/aaspring/beans/Comment;

    iget-boolean v6, p0, Lcom/guochao/faceshow/activity/VideoPlayActivity;->f:Z

    invoke-static {v2, v3, v4, v5, v6}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->U2(IILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/Comment;Z)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public shouldShowLiveFloatWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
