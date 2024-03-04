.class Lcom/guochao/faceshow/web/WebViewActivity$a;
.super Lcom/guochao/faceshow/aaspring/views/v$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/web/WebViewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/web/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/web/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$a;->a:Lcom/guochao/faceshow/web/WebViewActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstIconClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$a;->a:Lcom/guochao/faceshow/web/WebViewActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/web/WebViewActivity;->access$000(Lcom/guochao/faceshow/web/WebViewActivity;)V

    return-void
.end method
