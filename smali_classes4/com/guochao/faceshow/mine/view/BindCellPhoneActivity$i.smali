.class Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->onBindWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$i;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReCaptChaToken(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$i;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->k:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$i;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->debugAlert(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$i;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->k0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->l0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onInviteClick()V
    .locals 0

    return-void
.end method

.method public synthetic onInviteClick(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/web/jsinterface/a;->b(Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic playWinAnimation()V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/web/jsinterface/a;->c(Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;)V

    return-void
.end method
