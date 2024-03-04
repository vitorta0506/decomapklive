.class Lwendu/dsbridge/DWebView$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwendu/dsbridge/DWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwendu/dsbridge/DWebView;


# direct methods
.method constructor <init>(Lwendu/dsbridge/DWebView;)V
    .locals 0

    iput-object p1, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    :goto_0
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v2, v1, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    .line 2
    invoke-virtual/range {v2 .. v11}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    :goto_0
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    :goto_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :goto_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :goto_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    invoke-static {v0}, Lwendu/dsbridge/DWebView;->i(Lwendu/dsbridge/DWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 3
    :cond_0
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 5
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance p3, Lwendu/dsbridge/DWebView$a$a;

    invoke-direct {p3, p0, p4}, Lwendu/dsbridge/DWebView$a$a;-><init>(Lwendu/dsbridge/DWebView$a;Landroid/webkit/JsResult;)V

    .line 8
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    invoke-static {v0}, Lwendu/dsbridge/DWebView;->i(Lwendu/dsbridge/DWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 3
    :cond_0
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 4
    :cond_1
    new-instance p1, Lwendu/dsbridge/DWebView$a$b;

    invoke-direct {p1, p0, p4}, Lwendu/dsbridge/DWebView$a$b;-><init>(Lwendu/dsbridge/DWebView$a;Landroid/webkit/JsResult;)V

    .line 5
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    invoke-virtual {p4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 7
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x104000a

    .line 8
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/high16 p3, 0x1040000

    .line 9
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    invoke-static {v0}, Lwendu/dsbridge/DWebView;->i(Lwendu/dsbridge/DWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 3
    :cond_0
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v1, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 4
    :cond_1
    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_2

    .line 6
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 7
    :cond_2
    iget-object p2, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 8
    new-instance p4, Lwendu/dsbridge/DWebView$a$c;

    invoke-direct {p4, p0, p5, p1}, Lwendu/dsbridge/DWebView$a$c;-><init>(Lwendu/dsbridge/DWebView$a;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    .line 9
    new-instance p5, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p5, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p5, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    .line 11
    invoke-virtual {p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const/4 p5, 0x0

    .line 12
    invoke-virtual {p3, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const v1, 0x104000a

    .line 13
    invoke-virtual {p3, v1, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const/high16 v1, 0x1040000

    .line 14
    invoke-virtual {p3, v1, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    .line 15
    invoke-virtual {p3}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 16
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, p4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 p4, 0x41800000    # 16.0f

    mul-float p4, p4, p2

    float-to-int p4, p4

    .line 17
    invoke-virtual {p3, p4, p5, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 18
    iput v0, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 19
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p3, 0x41700000    # 15.0f

    mul-float p3, p3, p2

    float-to-int p3, p3

    const/high16 p4, 0x40a00000    # 5.0f

    mul-float p2, p2, p4

    float-to-int p2, p2

    sub-int p2, p3, p2

    .line 20
    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/widget/EditText;->setPadding(IIII)V

    return v0
.end method

.method public onJsTimeout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    :goto_0
    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :goto_0
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v1, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 2
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 3
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    :goto_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    :goto_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :goto_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    iget-object v0, v0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method
