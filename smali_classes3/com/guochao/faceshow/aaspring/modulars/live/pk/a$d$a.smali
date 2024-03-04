.class Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;
.super Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->c(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Lte/a;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onDenied(Lte/a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->a:Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->Q1(Landroid/content/Context;ILjava/util/List;Z)V

    return-void
.end method

.method public onGranted(Lte/a;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->release()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->R1()Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getUser_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->R1()Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getNick_name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->R1()Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;->getLive_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->b(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Ly7/s;

    invoke-direct {v0}, Ly7/s;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->c(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->s()V

    return-void
.end method

.method public onShouldShowRequestPermissionRationale(Lte/a;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onShouldShowRequestPermissionRationale(Lte/a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$d;->a:Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MainMenuDialogFragment;->Q1(Landroid/content/Context;ILjava/util/List;Z)V

    return-void
.end method
