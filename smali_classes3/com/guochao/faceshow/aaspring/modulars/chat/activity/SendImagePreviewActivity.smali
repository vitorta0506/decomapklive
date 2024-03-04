.class public Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/utils/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field bottomNavigation:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Landroid/view/animation/AlphaAnimation;

.field private d:Landroid/view/animation/AlphaAnimation;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field flContent:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field mTextViewCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTitleBackground:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private n:I

.field titleBackgroundView:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCompile:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->b:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1207d4

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->h:I

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->l:I

    return-void
.end method

.method private B0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->c:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->h:I

    return p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->h:I

    return p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->y0(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->l:I

    return p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic o0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->i:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;

    return-object p0
.end method

.method static synthetic p0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;)Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->i:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;

    return-object p1
.end method

.method static synthetic q0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->c:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic r0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->c:Landroid/view/animation/AlphaAnimation;

    return-object p1
.end method

.method static synthetic s0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->d:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic t0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->d:Landroid/view/animation/AlphaAnimation;

    return-object p1
.end method

.method private u0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->d:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private y0(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0f0231

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0239

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->mTextViewCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->mTextViewCount:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%s(%d)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public V()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->titleBackgroundView:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->u0(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->bottomNavigation:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->u0(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->b:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->titleBackgroundView:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->B0(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->bottomNavigation:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->B0(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->b:Z

    :goto_0
    return-void
.end method

.method public compile(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mIsFullScreen:Z

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->h:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mImagePath:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->h:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mUri:Landroid/net/Uri;

    const/high16 v1, 0x40c00000    # 6.0f

    .line 5
    iput v1, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintUnitSize:F

    const/high16 v1, -0x10000

    .line 6
    iput v1, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintColor:I

    .line 7
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mSupportScaleItem:Z

    const/16 v0, 0x65

    .line 8
    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d1(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;I)V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    const-string v1, "#66000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->f(I)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00ad

    return v0
.end method

.method public initView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "key1"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x9

    const-string v4, "key2"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->g:I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key3"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->k:Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "params_key3_position"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->l:I

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "doodle_list"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->m:Ljava/util/List;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->f:Ljava/lang/String;

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "mediaType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->n:I

    :cond_1
    const-string v0, ""

    .line 10
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a042c

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    const-string v2, "#66000000"

    .line 12
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->setBottomEnable(Z)V

    const v0, 0x7f0801a7

    .line 14
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLeftBackIcon(I)V

    const v0, 0x7f0f0231

    .line 15
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_2

    .line 17
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightIconClickListener(Lcom/guochao/faceshow/aaspring/views/v$d;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public loadData()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->n:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeImages(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$e;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->observeAllMedia(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;Laa/b;)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x65

    if-ne p1, v0, :cond_6

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    const-string p1, "key_image_path"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_image_selectable"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-wide/16 v1, 0x0

    const-string v3, "key_image_duration"

    .line 4
    invoke-virtual {p3, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance p3, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    const/4 v3, 0x1

    invoke-direct {p3, v3}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    .line 7
    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setPath(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3, v3}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelected(Z)V

    .line 9
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setUri(Landroid/net/Uri;)V

    .line 10
    invoke-virtual {p3, v1, v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setDuration(J)V

    .line 11
    invoke-virtual {p3, p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelectable(Z)V

    if-eqz p2, :cond_4

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelected(Z)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->h:I

    add-int/2addr p1, v3

    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelectPosition(I)V

    .line 18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->h:I

    add-int/2addr p2, v3

    invoke-interface {p1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->i:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity$f;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->h:I

    add-int/2addr p2, v3

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->P1(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseFragmentPagerAdapter;->a(ILcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->h:I

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->A0()V

    goto :goto_1

    :cond_5
    const/16 p1, -0x6f

    if-ne p2, p1, :cond_6

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const p2, 0x7f1207b8

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_6
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    return-void
.end method

.method public send(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->a:Ljava/util/List;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v0, 0x7f1207d4

    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    const-string v1, "media"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "FINISH_IMAGE_EVENT"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    :cond_1
    const/4 p1, -0x1

    .line 7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "send"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    return-void
.end method

.method public v0(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->isSelectable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const p1, 0x7f12002f

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->isSelected()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->g:I

    if-lt v0, v3, :cond_1

    const p1, 0x7f12007d

    new-array v0, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return v1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setSelected(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->isSelected()Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f0f0231

    .line 11
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    goto :goto_1

    :cond_3
    const p1, 0x7f0f0239

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 13
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->A0()V

    return v2
.end method
