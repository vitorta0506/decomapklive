.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->onBindWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReCaptChaToken(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->p:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->debugAlert(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;Ljava/lang/String;Z)V

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
