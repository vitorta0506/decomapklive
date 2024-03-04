.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;->showInputPwdDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1",
        "Lcom/guochao/faceshow/views/n$b;",
        "Landroid/app/Dialog;",
        "dialog",
        "",
        "confirm",
        "",
        "onClose",
        "",
        "password",
        "onConfirm",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Landroid/app/Dialog;Z)V
    .locals 0
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onConfirm(Landroid/app/Dialog;ZLjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "password"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    const-string v0, "tokens/user/info/showOldPassword"

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "userId"

    invoke-virtual {p2, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "pasword"

    .line 4
    invoke-virtual {p2, v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    invoke-direct {p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;)V

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
