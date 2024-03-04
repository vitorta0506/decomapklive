.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/LoginCancelAccountDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->e0(Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$b;->b:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$b;->b:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissLoading()V

    return-void
.end method
