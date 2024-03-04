.class public final Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;
.super Lcom/guochao/faceshow/guild/view/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;",
        "Lcom/guochao/faceshow/guild/view/BaseDialogFragment;",
        "()V",
        "close",
        "Landroid/widget/ImageView;",
        "getClose",
        "()Landroid/widget/ImageView;",
        "setClose",
        "(Landroid/widget/ImageView;)V",
        "flContent",
        "Landroid/widget/FrameLayout;",
        "getFlContent",
        "()Landroid/widget/FrameLayout;",
        "setFlContent",
        "(Landroid/widget/FrameLayout;)V",
        "webView",
        "Landroid/webkit/WebView;",
        "getWebView",
        "()Landroid/webkit/WebView;",
        "setWebView",
        "(Landroid/webkit/WebView;)V",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "",
        "component_guild_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public close:Landroid/widget/ImageView;

.field public flContent:Landroid/widget/FrameLayout;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/guild/view/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->onCreateView$lambda-0(Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreateView$lambda-0(Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public final getClose()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->close:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "close"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFlContent()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->flContent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "flContent"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lcom/guochao/faceshow/guild/R$layout;->dialog_agreement:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_1
    sget p2, Lcom/guochao/faceshow/guild/R$id;->fl_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.fl_content)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->setFlContent(Landroid/widget/FrameLayout;)V

    .line 5
    sget p2, Lcom/guochao/faceshow/guild/R$id;->webView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.webView)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->setWebView(Landroid/webkit/WebView;)V

    .line 6
    sget p2, Lcom/guochao/faceshow/guild/R$id;->close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.close)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->setClose(Landroid/widget/ImageView;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->getFlContent()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result p3

    int-to-double v0, p3

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    mul-double v0, v0, v2

    double-to-int p3, v0

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    sget-object p3, Lf7/a;->f0:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->getClose()Landroid/widget/ImageView;

    move-result-object p2

    new-instance p3, Lua/a;

    invoke-direct {p3, p0}, Lua/a;-><init>(Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method

.method public final setClose(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->close:Landroid/widget/ImageView;

    return-void
.end method

.method public final setFlContent(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->flContent:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;->webView:Landroid/webkit/WebView;

    return-void
.end method
