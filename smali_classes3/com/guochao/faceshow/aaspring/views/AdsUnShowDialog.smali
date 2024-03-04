.class public final Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001fB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0012\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u00172\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u000e\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u001a\u0010\u0011\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;",
        "Landroid/app/Dialog;",
        "Landroid/view/View$OnClickListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "adsClickListener",
        "Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;",
        "adsGoneDay",
        "Landroid/widget/TextView;",
        "getAdsGoneDay",
        "()Landroid/widget/TextView;",
        "setAdsGoneDay",
        "(Landroid/widget/TextView;)V",
        "close",
        "getClose",
        "setClose",
        "hidePermanently",
        "getHidePermanently",
        "setHidePermanently",
        "windowParams",
        "Landroid/view/WindowManager$LayoutParams;",
        "initView",
        "",
        "onClick",
        "v",
        "Landroid/view/View;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setOnAdsClickListener",
        "OnAdsClickListener",
        "app_GooglePlayRelease"
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
.field private adsClickListener:Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public adsGoneDay:Landroid/widget/TextView;

.field public close:Landroid/widget/TextView;

.field public hidePermanently:Landroid/widget/TextView;

.field private windowParams:Landroid/view/WindowManager$LayoutParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1304b9

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private final initView()V
    .locals 2

    const v0, 0x7f0a020d

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.close)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->setClose(Landroid/widget/TextView;)V

    const v0, 0x7f0a0094

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.ads_gone_day)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->setAdsGoneDay(Landroid/widget/TextView;)V

    const v0, 0x7f0a04d2

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.hide_permanently)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->setHidePermanently(Landroid/widget/TextView;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->getClose()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->getAdsGoneDay()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->getHidePermanently()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final getAdsGoneDay()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->adsGoneDay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adsGoneDay"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getClose()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->close:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "close"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHidePermanently()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->hidePermanently:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "hidePermanently"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f0a020d

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3

    :cond_2
    :goto_1
    const v0, 0x7f0a0094

    if-nez p1, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->adsClickListener:Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;

    if-eqz p1, :cond_6

    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;->adsGoneDayClick(Landroid/app/Dialog;)V

    goto :goto_3

    :cond_4
    :goto_2
    const v0, 0x7f0a04d2

    if-nez p1, :cond_5

    goto :goto_3

    .line 6
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->adsClickListener:Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;

    if-eqz p1, :cond_6

    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;->adsHidePermanentlyClick(Landroid/app/Dialog;)V

    :cond_6
    :goto_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0112

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->windowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x2

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->initView()V

    return-void
.end method

.method public final setAdsGoneDay(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->adsGoneDay:Landroid/widget/TextView;

    return-void
.end method

.method public final setClose(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->close:Landroid/widget/TextView;

    return-void
.end method

.method public final setHidePermanently(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->hidePermanently:Landroid/widget/TextView;

    return-void
.end method

.method public final setOnAdsClickListener(Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "adsClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->adsClickListener:Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;

    return-void
.end method
