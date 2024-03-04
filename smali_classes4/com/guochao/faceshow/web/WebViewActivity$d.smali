.class Lcom/guochao/faceshow/web/WebViewActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/web/WebViewActivity;->showOpenMoreMenu()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$d;->a:Lcom/guochao/faceshow/web/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/web/WebViewActivity$d;->a:Lcom/guochao/faceshow/web/WebViewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/web/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->getItemId()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    :try_start_0
    iget-object p3, p0, Lcom/guochao/faceshow/web/WebViewActivity$d;->a:Lcom/guochao/faceshow/web/WebViewActivity;

    invoke-virtual {p3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "open Activity to open the url ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] failed"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WebViewActivity"

    invoke-static {p3, p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string p1, "FaceCast"

    .line 7
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/web/WebViewActivity$d;->a:Lcom/guochao/faceshow/web/WebViewActivity;

    const-string p3, "clipboard"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$d;->a:Lcom/guochao/faceshow/web/WebViewActivity;

    const p2, 0x7f1201e6

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    :goto_0
    return-void
.end method

.method public onCancel(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    return-void
.end method
