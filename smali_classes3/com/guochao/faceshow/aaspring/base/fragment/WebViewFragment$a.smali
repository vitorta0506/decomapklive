.class Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    new-instance p2, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a$a;

    invoke-direct {p2, p0, p4}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a$a;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;Landroid/webkit/JsResult;)V

    const/4 p4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p4, p3, p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    new-instance p2, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a$b;

    invoke-direct {p2, p0, p4}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a$b;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;Landroid/webkit/JsResult;)V

    const/4 p4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p4, p3, p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    new-instance p2, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a$c;

    invoke-direct {p2, p0, p5}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a$c;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;Landroid/webkit/JsPromptResult;)V

    const/4 p4, 0x0

    const/4 p5, 0x1

    invoke-virtual {p1, p4, p3, p2, p5}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    return p5
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->access$000(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
