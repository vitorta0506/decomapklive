.class public final Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static setNavigationIcon(Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;I)V
    .locals 2
    .param p0    # Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-interface {p0, v0}, Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/GCTitleBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
