.class public final Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/utils/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "Lcom/guochao/faceshow/aaspring/base/utils/a;",
        "",
        "cancel",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "show",
        "Lcom/opensource/svgaplayer/SVGAImageView;",
        "svgaImageView",
        "Lcom/opensource/svgaplayer/SVGAImageView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "lib_base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;->svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-void
.end method

.method public static final synthetic access$getSvgaImageView$p(Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;->svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;->svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;->svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public show()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/guochao/lib_base/R$raw;->loading_global:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "context.resources.openRa\u2026rce(R.raw.loading_global)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog$show$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog$show$1;-><init>(Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;)V

    const-string v3, "global_loading"

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 5
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    sget v1, Lcom/guochao/lib_base/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
