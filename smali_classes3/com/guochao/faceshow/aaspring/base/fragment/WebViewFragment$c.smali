.class Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->initWebView(Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$c;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$c;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$c;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
