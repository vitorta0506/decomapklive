.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;


# static fields
.field private static d:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public static g()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

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
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->d:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    return-object v0
.end method

.method private h(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->e()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->e()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->e()V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 9
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private showInviteCallDialog(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;)V
    .locals 7

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v2

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v3

    const-class v4, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->containActivity(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->j(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    return-void

    .line 8
    :cond_2
    iget-wide v2, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->startCallTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->startCallTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->isFromLiveRoom()Z

    move-result v2

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->containActivity(Ljava/lang/Class;)Z

    move-result v3

    const v4, 0x7f12090a

    if-eqz v3, :cond_4

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    .line 12
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->y0()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(I)Landroid/widget/Toast;

    return-void

    :cond_4
    if-eqz v2, :cond_5

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->containActivity(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 15
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(I)Landroid/widget/Toast;

    return-void

    .line 16
    :cond_5
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->T1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;

    move-result-object p1

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->b:Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->setOnResultListener(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;)V

    .line 20
    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/utils/Foreground;->isForeground()Z

    move-result p1

    if-nez p1, :cond_6

    .line 21
    const-class p1, Lcom/guochao/faceshow/service/CallForegroundService;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/ServiceUtils;->safeStartForegroundService(Ljava/lang/Class;)Z

    :cond_6
    return-void
.end method


# virtual methods
.method public A1(I)V
    .locals 0

    return-void
.end method

.method public E1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public K0(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public synthetic L0(Ljava/lang/String;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lx9/a;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;Ljava/lang/String;III)V

    return-void
.end method

.method public O0(Ljava/lang/String;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->h(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const p2, 0x7f12090a

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void
.end method

.method public R(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public R0(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->showInviteCallDialog(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->showInviteCallDialog(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;)V

    :cond_1
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->U1()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public f1(J)V
    .locals 0

    return-void
.end method

.method public j1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public n1(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public o(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public s1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->h(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const p2, 0x7f12090a

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void
.end method

.method public v1(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public w1(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
