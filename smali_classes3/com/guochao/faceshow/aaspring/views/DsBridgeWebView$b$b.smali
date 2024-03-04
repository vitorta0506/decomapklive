.class Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b$b;->b:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b$b;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b$b;->b:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->i(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b$b;->a:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b$b;->a:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method
