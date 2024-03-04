.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1;->onConfirm(Landroid/app/Dialog;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;->access$showErrorToast(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;Lg7/a;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class p1, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v0, "api/token/promotion/invite-earn-money/applyWithdraw"

    invoke-direct {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentUser.getUserId()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userId"

    invoke-virtual {p2, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;->getWithdrawSpecificationItem()Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;->getRuleId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    const-string v1, "ruleId"

    invoke-virtual {p2, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1$onResponse$$inlined$success$1;

    invoke-direct {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1$onResponse$$inlined$success$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 10
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1$onResponse$$inlined$fail$1;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity$showInputPwdDialog$1$onConfirm$1$onResponse$$inlined$fail$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendWithdrawalMoneyActivity;)V

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 11
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method
