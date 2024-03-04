.class Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->r(Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->R1()Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getUser_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->R1()Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getUser_id()Ljava/lang/String;

    move-result-object p1

    const v2, 0x9942

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->P1()Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->R1()Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getUser_id()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->R1()Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getNick_name()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    const-string v4, "tokens/live/invite/close/arena"

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "notReceive"

    invoke-virtual {v3, v5, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v4, "denyUserId"

    invoke-virtual {v3, v4, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$b;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->e(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->e(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->f(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->s()V

    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V
    .locals 2

    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
