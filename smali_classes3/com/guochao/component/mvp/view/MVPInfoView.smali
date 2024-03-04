.class public final Lcom/guochao/component/mvp/view/MVPInfoView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0013\u001a\u00020\u0014H\u0003J\u0008\u0010\u0015\u001a\u00020\u0008H\u0002J\u0008\u0010\u0016\u001a\u00020\nH\u0002J0\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\nH\u0014J\u0018\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\nH\u0014J\u0012\u0010\"\u001a\u00020\u00182\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006#"
    }
    d2 = {
        "Lcom/guochao/component/mvp/view/MVPInfoView;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "leftMargin",
        "",
        "mWidth",
        "",
        "model",
        "Lcom/guochao/component/mvp/model/MVPInfoModel;",
        "viewBinding",
        "Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;",
        "getViewBinding",
        "()Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;)V",
        "getNextMonthTips",
        "",
        "getNextProgress",
        "getThisMonthLevel",
        "onLayout",
        "",
        "changed",
        "",
        "l",
        "t",
        "r",
        "b",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "setData",
        "component_mvp_release"
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
.field private final leftMargin:F

.field private mWidth:I

.field private model:Lcom/guochao/component/mvp/model/MVPInfoModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private viewBinding:Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/guochao/component/mvp/view/MVPInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/view/MVPInfoView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;

    const/high16 p1, 0x41600000    # 14.0f

    .line 4
    iput p1, p0, Lcom/guochao/component/mvp/view/MVPInfoView;->leftMargin:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/component/mvp/view/MVPInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getNextMonthTips()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/mvp/view/MVPInfoView;->getThisMonthLevel()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/guochao/component/mvp/R$string;->mvp_next_month:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MVP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026onth, \"MVP${level ?: 0}\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/guochao/component/mvp/R$string;->mvp_next_month_no_get:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.mvp_next_month_no_get)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getNextProgress()F
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/guochao/component/mvp/view/MVPInfoView;->model:Lcom/guochao/component/mvp/model/MVPInfoModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_1
    iget-object v3, p0, Lcom/guochao/component/mvp/view/MVPInfoView;->model:Lcom/guochao/component/mvp/model/MVPInfoModel;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getRechargeMoney()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v4

    .line 4
    :goto_2
    invoke-direct {p0}, Lcom/guochao/component/mvp/view/MVPInfoView;->getThisMonthLevel()I

    move-result v3

    const/4 v8, 0x0

    if-ge v3, v2, :cond_7

    if-lez v2, :cond_7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v9

    :cond_3
    :goto_3
    div-double/2addr v6, v9

    double-to-float v0, v6

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    add-int/lit8 v1, v3, -0x1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v4

    :cond_5
    if-eqz v0, :cond_6

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v9

    :cond_6
    sub-double/2addr v6, v4

    sub-double/2addr v9, v4

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_8

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    cmpg-float v1, v0, v8

    if-gez v1, :cond_9

    goto :goto_5

    :cond_9
    move v8, v0

    :goto_5
    return v8
.end method

.method private final getThisMonthLevel()I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/component/mvp/view/MVPInfoView;->model:Lcom/guochao/component/mvp/model/MVPInfoModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    .line 3
    iget-object v2, p0, Lcom/guochao/component/mvp/view/MVPInfoView;->model:Lcom/guochao/component/mvp/model/MVPInfoModel;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getRechargeMoney()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_1

    :cond_1
    move-wide v7, v5

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v5

    :cond_2
    cmpl-double v2, v7, v5

    if-ltz v2, :cond_3

    move v1, v4

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    return v1
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/view/MVPInfoView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setData(Lcom/guochao/component/mvp/model/MVPInfoModel;)V
    .locals 8
    .param p1    # Lcom/guochao/component/mvp/model/MVPInfoModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/component/mvp/view/MVPInfoView;->model:Lcom/guochao/component/mvp/model/MVPInfoModel;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    new-instance v1, Lcom/guochao/component/mvp/view/MvpProgressHolder;

    iget-object v2, p0, Lcom/guochao/component/mvp/view/MVPInfoView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;

    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;->mvpProgressLay:Landroid/widget/FrameLayout;

    const-string v3, "viewBinding.mvpProgressLay"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/guochao/component/mvp/view/MvpProgressHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/component/mvp/view/MVPInfoView;->getThisMonthLevel()I

    move-result v2

    invoke-direct {p0}, Lcom/guochao/component/mvp/view/MVPInfoView;->getNextProgress()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/guochao/component/mvp/view/MvpProgressHolder;->setSize(IIFLcom/guochao/component/mvp/model/MVPInfoModel;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/component/mvp/view/MVPInfoView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;

    .line 6
    iget-object v1, v0, Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;->rechargeMoneyTV:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/guochao/component/mvp/R$string;->mvp_this_month_monty:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getRechargeMoney()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, v0, Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;->nextMVPTV:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/guochao/component/mvp/view/MVPInfoView;->getNextMonthTips()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/view/MVPInfoView;->viewBinding:Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;

    return-void
.end method
