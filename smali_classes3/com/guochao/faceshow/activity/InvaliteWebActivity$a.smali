.class Lcom/guochao/faceshow/activity/InvaliteWebActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/InvaliteWebActivity;->onBindWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$a;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getReCaptChaToken(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/web/jsinterface/a;->a(Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;Ljava/lang/Object;)V

    return-void
.end method

.method public onInviteClick()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$a;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->i0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Leb/b;

    move-result-object v1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$a;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$a;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->b0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$a;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->d0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$a;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->e0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$a;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->d0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$a;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->g0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$a;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->e0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual/range {v1 .. v7}, Leb/b;->F(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
