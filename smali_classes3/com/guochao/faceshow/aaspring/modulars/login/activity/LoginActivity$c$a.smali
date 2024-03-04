.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/LoginCancelAccountDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c$a;->a:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c$a;->a:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->e(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissLoading()V

    return-void
.end method
