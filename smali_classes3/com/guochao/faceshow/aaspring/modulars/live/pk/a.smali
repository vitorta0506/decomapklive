.class public Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/app/Dialog;

.field public d:Landroid/app/Dialog;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p3

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createPkReplyMessageModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->buildMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p3

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getPriority()I

    move-result p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;)V

    const-string v1, ""

    .line 5
    invoke-static {p2, v1, p3, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendOnlineMessage(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->u(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->m()V

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->n(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    return-void
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->S1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getDialog_type()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->c:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->c:Landroid/app/Dialog;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->d:Landroid/app/Dialog;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    :cond_4
    return-void
.end method

.method private n(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static o()Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->e:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->e:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->e:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

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
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->e:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    return-object v0
.end method

.method private p(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getDialog_type()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p1, :cond_5

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->r(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->q(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->t(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private q(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->d:Landroid/app/Dialog;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->s()V

    :goto_0
    return-void
.end method

.method private r(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->S1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashActivity;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/welcome/RealSplashActivity;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->setOnResultListener(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private t(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->c:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->c:Landroid/app/Dialog;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->s()V

    :goto_0
    return-void
.end method

.method private u(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const-string v2, "IDENTITY_TYPE_KEY"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "withPkUserId"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "withPkLiveId"

    .line 4
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "withPkUserName"

    .line 5
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public g(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->checkLivePkState()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getUser_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getUser_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->p(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public h(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/live/invite/check/arena"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getUser_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkUserId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getUser_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->s()V

    .line 8
    :cond_2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/CancelPkData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/CancelPkData;-><init>()V

    .line 9
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/CancelPkData;->setToUserId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/CancelPkData;->setUserId(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->p(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    :cond_0
    return-void
.end method
