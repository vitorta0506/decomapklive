.class public Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;
    }
.end annotation


# instance fields
.field private a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Leb/b;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->r0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->p0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->q0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->s0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->u0()V

    return-void
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method private o0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getRegType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object v0

    invoke-virtual {v0}, Lc8/a;->q()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getRiskLevel()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)V

    invoke-virtual {v0, p0, v1}, Lc8/a;->w(Landroid/app/Activity;Lc8/a$h;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x7f0a077d

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->u0()V

    return-void
.end method

.method private synthetic p0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/a;->y(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic q0(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->e:Leb/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->g:Ljava/lang/String;

    :goto_0
    move-object v3, p1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->h:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Leb/b;->F(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic r0(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/activity/InvalitedActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic s0(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->e(I)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private t0(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    const-string v2, "scaleY"

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    .line 4
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x7d0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private u0()V
    .locals 10

    const v0, 0x7f0a055e

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const v1, 0x7f0a0777

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%s: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    if-nez v0, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const v7, 0x7f120456

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a077b

    .line 3
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const v1, 0x7f0a0779

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    move-object v6, v4

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const v1, 0x7f0a077d

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0069

    return v0
.end method

.method public initView()V
    .locals 6

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f080319

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0098

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a009c

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0ca6

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0a0ca8

    .line 8
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->d:Landroid/widget/TextView;

    const v2, 0x7f0a055f

    .line 9
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 10
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->t0(Landroid/view/View;)V

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->b:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->t0(Landroid/view/View;)V

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Lha/b;

    invoke-direct {v3, p0}, Lha/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->d:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->c:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    const v2, 0x7f0a08bb

    .line 15
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    const v4, 0x7f070314

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v5, 0x0

    .line 16
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v5

    const/4 v1, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v0

    invoke-static {v4, v3}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold(I[Landroid/widget/TextView;)V

    .line 17
    new-instance v0, Leb/b;

    invoke-direct {v0, p0}, Leb/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->e:Leb/b;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nickname"

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120448

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->f:Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120447

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->g:Ljava/lang/String;

    const-string v0, "userId"

    .line 20
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lqa/a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.buzzcast.info/index.html?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->h:Ljava/lang/String;

    const v0, 0x7f0a018c

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lha/c;

    invoke-direct {v2, p0}, Lha/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->t0(Landroid/view/View;)V

    const v0, 0x7f0a0562

    .line 24
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lha/a;

    invoke-direct {v1, p0}, Lha/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120452

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12045a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12045b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12045c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12045d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a09e4

    .line 26
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public loadData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)V

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;->checkInviteMoneyEnable(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)V

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;->checkInviteDiamondEnable(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$h;)V

    const v0, 0x7f0a055e

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lha/d;->a:Lha/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->o0()V

    const-string v0, "api/page/getInvitation"

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object v0

    invoke-virtual {v0}, Lc8/a;->z()V

    .line 3
    invoke-static {}, Lv9/c;->c()V

    return-void
.end method
