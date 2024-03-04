.class public final Lcom/guochao/component/mvp/view/MvpProgressHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ(\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J \u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/guochao/component/mvp/view/MvpProgressHolder;",
        "",
        "itemView",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "getItemView",
        "()Landroid/view/ViewGroup;",
        "getFirstCharIndex",
        "",
        "content",
        "",
        "keyWords",
        "setSize",
        "",
        "size",
        "currentSize",
        "progress",
        "",
        "model",
        "Lcom/guochao/component/mvp/model/MVPInfoModel;",
        "setSpannerString",
        "textView",
        "Landroid/widget/TextView;",
        "color",
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
.field private final itemView:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final getFirstCharIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyWords"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getItemView()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final setSize(IIFLcom/guochao/component/mvp/model/MVPInfoModel;)V
    .locals 27
    .param p4    # Lcom/guochao/component/mvp/model/MVPInfoModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    iget-object v3, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getRechargeMoney()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-ne v3, v1, :cond_2

    if-eqz p4, :cond_3

    .line 5
    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    add-int/lit8 v7, v1, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v7

    goto :goto_1

    :cond_2
    if-le v3, v1, :cond_4

    :cond_3
    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_3

    .line 6
    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v7

    :goto_1
    new-instance v3, Ljava/math/BigDecimal;

    .line 7
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/math/BigDecimal;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v3, v5, v7

    if-gez v3, :cond_5

    const-wide/16 v5, 0x0

    :cond_5
    const-string v3, "#FF80F2"

    const-string v14, "MVP"

    const-string v15, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    const/16 v16, 0x0

    const/high16 v17, 0x40200000    # 2.5f

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v1, v11, :cond_46

    const-string v12, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    const/high16 v18, 0x40000000    # 2.0f

    if-eq v1, v10, :cond_3c

    const/4 v13, 0x3

    if-eq v1, v13, :cond_2c

    .line 8
    iget-object v13, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v13

    .line 9
    iget-object v7, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 10
    sget v8, Lcom/guochao/component/mvp/R$layout;->layout_mvpn_progress:I

    iget-object v4, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const-string v7, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 11
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup;

    int-to-float v7, v13

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v8, v8, v7

    .line 12
    sget v10, Lcom/guochao/component/mvp/R$id;->content_layout:I

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const-string v11, "mvpn.findViewById<ViewGroup>(R.id.content_layout)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    add-int/lit8 v9, v1, -0x3

    float-to-int v1, v8

    mul-int v1, v1, v9

    add-int/2addr v1, v13

    iput v1, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v2

    add-float v1, v1, p3

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v1, v11

    if-gez v11, :cond_6

    mul-float v20, v1, v8

    const/high16 v19, 0x40a00000    # 5.0f

    div-float v20, v20, v19

    move/from16 v21, v7

    mul-float v7, v20, v18

    float-to-int v7, v7

    move-object/from16 v20, v3

    move/from16 v22, v13

    goto :goto_2

    :cond_6
    move/from16 v21, v7

    const/high16 v19, 0x40a00000    # 5.0f

    cmpg-float v7, v1, v18

    if-gez v7, :cond_7

    div-float v7, v8, v19

    mul-float v7, v7, v18

    move-object/from16 v20, v3

    move/from16 v22, v13

    const/4 v3, 0x1

    int-to-float v13, v3

    sub-float v3, v1, v13

    mul-float v3, v3, v8

    div-float v3, v3, v19

    const/high16 v13, 0x40400000    # 3.0f

    mul-float v3, v3, v13

    add-float/2addr v7, v3

    float-to-int v7, v7

    goto :goto_2

    :cond_7
    move-object/from16 v20, v3

    move/from16 v22, v13

    const/4 v3, 0x2

    int-to-float v7, v3

    sub-float v3, v1, v7

    mul-float v3, v3, v8

    add-float/2addr v3, v8

    float-to-int v7, v3

    .line 14
    :goto_2
    sget v3, Lcom/guochao/component/mvp/R$id;->select_progress:I

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v9, :cond_9

    .line 15
    new-instance v7, Landroid/view/View;

    iget-object v13, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v7, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    sget v13, Lcom/guochao/component/mvp/R$id;->mvp_text_lay:I

    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move/from16 v24, v9

    move-object/from16 v9, v23

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object/from16 v23, v14

    const/4 v14, 0x0

    iput v14, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iput v14, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const-string v9, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x40a00000    # 5.0f

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 20
    new-instance v7, Landroid/view/View;

    iget-object v9, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    sget v9, Lcom/guochao/component/mvp/R$id;->big_white_point_lay:I

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    invoke-virtual {v14, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    move-wide/from16 v25, v5

    const/4 v5, 0x0

    iput v5, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x40a00000    # 5.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 25
    new-instance v5, Landroid/view/View;

    iget-object v6, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    sget v6, Lcom/guochao/component/mvp/R$drawable;->bg_oval_white:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    new-instance v5, Landroid/view/View;

    iget-object v6, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 32
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    sget v6, Lcom/guochao/component/mvp/R$drawable;->bg_mvp_level_selected:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v6, 0x4

    .line 35
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 36
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v7, -0x2

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 39
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v7, 0x41e00000    # 28.0f

    .line 41
    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    .line 42
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "($"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_8

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v13

    double-to-int v7, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_4

    :cond_8
    move-object/from16 v7, v16

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x1

    .line 44
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, v23

    move/from16 v9, v24

    move-wide/from16 v5, v25

    goto/16 :goto_3

    :cond_9
    move-wide/from16 v25, v5

    move-object/from16 v23, v14

    .line 45
    sget v3, Lcom/guochao/component/mvp/R$id;->big_white_point_lay:I

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "mvpn.findViewById<ViewGr\u2026R.id.big_white_point_lay)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    .line 46
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_c

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    add-int/lit8 v7, v5, 0x1

    .line 47
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v9, "getChildAt(index)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v9, :cond_a

    add-int/lit8 v6, v6, 0x1

    int-to-float v9, v6

    cmpl-float v9, v1, v9

    if-lez v9, :cond_a

    const/4 v9, 0x0

    .line 49
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-lt v7, v4, :cond_b

    goto :goto_6

    :cond_b
    move v5, v7

    goto :goto_5

    .line 50
    :cond_c
    :goto_6
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    if-ge v4, v3, :cond_1b

    .line 51
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 52
    instance-of v7, v6, Landroid/widget/TextView;

    if-eqz v7, :cond_1a

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    if-eq v5, v7, :cond_18

    const/4 v9, 0x2

    if-eq v5, v9, :cond_16

    const/4 v9, 0x3

    if-eq v5, v9, :cond_14

    .line 53
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v7

    if-ne v4, v9, :cond_10

    const/4 v7, 0x5

    if-lt v5, v7, :cond_e

    .line 54
    move-object v7, v6

    check-cast v7, Landroid/widget/TextView;

    const/4 v9, 0x5

    if-lt v2, v9, :cond_d

    .line 55
    sget v9, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp5_select:I

    goto :goto_8

    :cond_d
    sget v9, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp5:I

    .line 56
    :goto_8
    invoke-static {v7, v9}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableEnd(Landroid/widget/TextView;I)V

    goto :goto_a

    .line 57
    :cond_e
    move-object v7, v6

    check-cast v7, Landroid/widget/TextView;

    const/4 v9, 0x4

    if-lt v2, v9, :cond_f

    .line 58
    sget v9, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp4_select:I

    goto :goto_9

    :cond_f
    sget v9, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp4:I

    .line 59
    :goto_9
    invoke-static {v7, v9}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableEnd(Landroid/widget/TextView;I)V

    .line 60
    :goto_a
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const v7, 0x800005

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_e

    :cond_10
    const/4 v7, 0x5

    if-lt v5, v7, :cond_12

    .line 61
    move-object v7, v6

    check-cast v7, Landroid/widget/TextView;

    const/4 v9, 0x5

    if-lt v2, v9, :cond_11

    .line 62
    sget v9, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp5_select:I

    goto :goto_b

    :cond_11
    sget v9, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp5:I

    .line 63
    :goto_b
    invoke-static {v7, v9}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableStart(Landroid/widget/TextView;I)V

    goto :goto_d

    .line 64
    :cond_12
    move-object v7, v6

    check-cast v7, Landroid/widget/TextView;

    const/4 v9, 0x4

    if-lt v2, v9, :cond_13

    .line 65
    sget v9, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp4_select:I

    goto :goto_c

    :cond_13
    sget v9, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp4:I

    .line 66
    :goto_c
    invoke-static {v7, v9}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableStart(Landroid/widget/TextView;I)V

    .line 67
    :goto_d
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int/lit8 v7, v5, -0x3

    int-to-float v7, v7

    add-float v7, v7, v18

    mul-float v7, v7, v8

    const/high16 v9, 0x41a00000    # 20.0f

    .line 68
    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    float-to-int v7, v7

    .line 69
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_e
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_12

    .line 70
    :cond_14
    check-cast v6, Landroid/widget/TextView;

    const/4 v7, 0x3

    if-lt v2, v7, :cond_15

    .line 71
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp3_select:I

    goto :goto_f

    :cond_15
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp3:I

    .line 72
    :goto_f
    invoke-static {v6, v7}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableStart(Landroid/widget/TextView;I)V

    .line 73
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-float v7, v8, v18

    const/high16 v9, 0x41a00000    # 20.0f

    .line 74
    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    float-to-int v7, v7

    .line 75
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_12

    .line 76
    :cond_16
    check-cast v6, Landroid/widget/TextView;

    const/4 v7, 0x2

    if-lt v2, v7, :cond_17

    .line 77
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp2_select:I

    goto :goto_10

    :cond_17
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp2:I

    .line 78
    :goto_10
    invoke-static {v6, v7}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableStart(Landroid/widget/TextView;I)V

    .line 79
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v7, 0x41a00000    # 20.0f

    .line 80
    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v8, v7

    float-to-int v7, v7

    .line 81
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_12

    .line 82
    :cond_18
    check-cast v6, Landroid/widget/TextView;

    const/4 v7, 0x1

    if-lt v2, v7, :cond_19

    .line 83
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp1_select:I

    goto :goto_11

    :cond_19
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp1:I

    .line 84
    :goto_11
    invoke-static {v6, v7}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableStart(Landroid/widget/TextView;I)V

    .line 85
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v7, 0x40a00000    # 5.0f

    div-float v9, v8, v7

    mul-float v9, v9, v18

    const/high16 v7, 0x41a00000    # 20.0f

    .line 86
    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v9, v7

    float-to-int v7, v9

    .line 87
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1a
    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_1b
    if-gez v11, :cond_1e

    .line 88
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    iget-object v2, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 90
    sget v3, Lcom/guochao/component/mvp/R$string;->mvp_diff_tips:I

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x24

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v25

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v5, v9

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v23

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1c

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_1c

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v11, :cond_1c

    invoke-virtual {v11}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getMvpLevel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_1c
    move-object/from16 v9, v16

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v5, v9

    .line 93
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x2

    .line 94
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    sget v2, Lcom/guochao/component/mvp/R$drawable;->icon_bottom_mvp:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v2, -0x1

    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 99
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 100
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 101
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 102
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    sget v3, Lcom/guochao/component/mvp/R$mipmap;->icon_grow_mvp:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v8, v3

    mul-float v8, v8, v18

    float-to-int v3, v8

    const/high16 v4, 0x40e00000    # 7.0f

    .line 108
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/high16 v3, 0x42300000    # 44.0f

    .line 109
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 110
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 111
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v4, v22

    if-le v3, v4, :cond_1d

    move v13, v4

    goto :goto_13

    :cond_1d
    move v13, v3

    .line 114
    :goto_13
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 116
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x2

    .line 117
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 v3, 0x42480000    # 50.0f

    .line 118
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v2, 0x11

    .line 119
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 122
    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/component/mvp/view/MvpProgressHolder;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_1a

    :cond_1e
    move/from16 v4, v22

    move-object/from16 v11, v23

    move-wide/from16 v6, v25

    cmpg-float v3, v1, v18

    if-gez v3, :cond_21

    .line 123
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 124
    iget-object v2, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 125
    sget v3, Lcom/guochao/component/mvp/R$string;->mvp_diff_tips:I

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x24

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v8, v9

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1f

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1f

    const/4 v11, 0x1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getMvpLevel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_1f
    move-object/from16 v9, v16

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v8, v9

    .line 128
    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x2

    .line 129
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 130
    sget v2, Lcom/guochao/component/mvp/R$drawable;->icon_bottom_mvp:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v2, -0x1

    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 133
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 134
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 135
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 136
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 137
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    invoke-direct {v3, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 139
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    sget v3, Lcom/guochao/component/mvp/R$mipmap;->icon_grow_mvp:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    div-float v3, v21, v18

    float-to-int v3, v3

    const/high16 v5, 0x40e00000    # 7.0f

    .line 143
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/high16 v3, 0x42300000    # 44.0f

    .line 144
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 145
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 146
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 148
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    if-le v3, v4, :cond_20

    move v13, v4

    goto :goto_14

    :cond_20
    move v13, v3

    .line 149
    :goto_14
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 151
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x2

    .line 152
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 v3, 0x42480000    # 50.0f

    .line 153
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v2, 0x11

    .line 154
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 157
    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/component/mvp/view/MvpProgressHolder;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_1a

    :cond_21
    move/from16 v3, p1

    add-int/lit8 v5, v3, -0x1

    int-to-float v9, v5

    cmpg-float v9, v1, v9

    if-gez v9, :cond_28

    .line 158
    new-instance v9, Landroid/widget/TextView;

    iget-object v13, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v9, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 159
    iget-object v13, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 160
    sget v14, Lcom/guochao/component/mvp/R$string;->mvp_diff_tips:I

    move/from16 p3, v5

    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/Object;

    .line 161
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v8

    const/16 v8, 0x24

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x0

    aput-object v8, v5, v15

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_22

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_22

    move-wide/from16 v25, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    move/from16 v22, v1

    const/4 v15, 0x1

    int-to-double v1, v15

    sub-double/2addr v6, v1

    double-to-int v1, v6

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getMvpLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto :goto_15

    :cond_22
    move/from16 v22, v1

    move-wide/from16 v25, v6

    :cond_23
    :goto_15
    move-object/from16 v1, v16

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 163
    invoke-virtual {v13, v14, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41700000    # 15.0f

    const/4 v5, 0x2

    .line 164
    invoke-virtual {v9, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    sget v1, Lcom/guochao/component/mvp/R$drawable;->icon_bottom_mvp:I

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v1, -0x1

    .line 166
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v9, v6, v1, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 168
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 169
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 170
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 171
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 172
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    sget v2, Lcom/guochao/component/mvp/R$mipmap;->icon_grow_mvp:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v7, v21, v2

    const/4 v2, 0x4

    if-ne v3, v2, :cond_24

    const/4 v2, 0x0

    goto :goto_16

    :cond_24
    div-float v2, v21, v18

    :goto_16
    add-float/2addr v7, v2

    float-to-int v2, v7

    const/high16 v3, 0x40e00000    # 7.0f

    .line 178
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 179
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/high16 v2, 0x42300000    # 44.0f

    .line 180
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 181
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 182
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 184
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    if-le v2, v4, :cond_25

    move v13, v4

    goto :goto_17

    :cond_25
    move v13, v2

    .line 185
    :goto_17
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 187
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, -0x2

    .line 188
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 v2, 0x42480000    # 50.0f

    .line 189
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v2, p2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_27

    const/4 v4, 0x3

    if-eq v2, v4, :cond_26

    int-to-float v2, v3

    mul-float v8, v19, v2

    move/from16 v2, v22

    float-to-int v2, v2

    sub-int v5, p3, v2

    int-to-float v2, v5

    mul-float v2, v2, v19

    add-float/2addr v8, v2

    .line 190
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v2, v2

    div-float v2, v2, v18

    sub-float/2addr v8, v2

    float-to-int v2, v8

    .line 191
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_18

    :cond_26
    move/from16 v2, v22

    int-to-float v3, v3

    mul-float v8, v19, v3

    float-to-int v2, v2

    sub-int v5, p3, v2

    int-to-float v2, v5

    mul-float v2, v2, v19

    add-float/2addr v8, v2

    .line 192
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v2, v2

    div-float v2, v2, v18

    sub-float/2addr v8, v2

    float-to-int v2, v8

    .line 193
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_18

    :cond_27
    move/from16 v2, v22

    float-to-int v2, v2

    sub-int v5, p3, v2

    int-to-float v2, v5

    mul-float v8, v19, v2

    float-to-int v2, v8

    .line 194
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_18
    const/16 v1, 0x11

    .line 195
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v25

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 198
    invoke-virtual {v0, v9, v1, v2}, Lcom/guochao/component/mvp/view/MvpProgressHolder;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_1a

    :cond_28
    move v2, v1

    move/from16 p3, v5

    move-wide v5, v6

    float-to-int v1, v2

    move/from16 v2, p3

    if-ne v1, v2, :cond_2b

    .line 199
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 200
    iget-object v3, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 201
    sget v7, Lcom/guochao/component/mvp/R$string;->mvp_diff_tips:I

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    .line 202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x24

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v9, v12

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_29

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_29

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getMvpLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_29
    move-object/from16 v2, v16

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v9, v8

    .line 204
    invoke-virtual {v3, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x2

    .line 205
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 206
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 207
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 208
    sget v2, Lcom/guochao/component/mvp/R$drawable;->icon_bottom_mvp:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v2, -0x1

    .line 209
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v2, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 211
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 212
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 213
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 214
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 215
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    sget v3, Lcom/guochao/component/mvp/R$mipmap;->icon_grow_mvp:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 218
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x40e00000    # 7.0f

    .line 219
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/high16 v3, 0x42300000    # 44.0f

    .line 220
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v3, 0x800005

    .line 221
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 222
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 223
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    float-to-int v3, v3

    if-le v3, v4, :cond_2a

    move v13, v4

    goto :goto_19

    :cond_2a
    move v13, v3

    .line 226
    :goto_19
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 227
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 228
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 229
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v3, 0x42480000    # 50.0f

    .line 230
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v3, 0x800005

    .line 231
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x11

    .line 232
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 235
    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/component/mvp/view/MvpProgressHolder;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    :cond_2b
    :goto_1a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2e

    :cond_2c
    move-object/from16 v20, v3

    move-object v11, v14

    .line 236
    iget-object v1, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 237
    iget-object v3, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 238
    sget v4, Lcom/guochao/component/mvp/R$layout;->layout_mvp3_progress:I

    iget-object v7, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 239
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    .line 240
    sget v4, Lcom/guochao/component/mvp/R$id;->mvpTV1:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-ge v2, v8, :cond_2d

    .line 241
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp1:I

    goto :goto_1b

    :cond_2d
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp1_select:I

    .line 242
    :goto_1b
    invoke-static {v4, v7}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableStart(Landroid/widget/TextView;I)V

    .line 243
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "($"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2e

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2e

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v8, :cond_2e

    invoke-virtual {v8}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1c

    :cond_2e
    move-object/from16 v8, v16

    :goto_1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 245
    sget v4, Lcom/guochao/component/mvp/R$id;->mvpTV2:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v7, 0x2

    if-ge v2, v7, :cond_2f

    .line 246
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp2:I

    goto :goto_1d

    :cond_2f
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp2_select:I

    .line 247
    :goto_1d
    invoke-static {v4, v7}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableStart(Landroid/widget/TextView;I)V

    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "($"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_30

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_30

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v8, :cond_30

    invoke-virtual {v8}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1e

    :cond_30
    move-object/from16 v8, v16

    :goto_1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    sget v4, Lcom/guochao/component/mvp/R$id;->mvpTV3:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v7, 0x3

    if-ge v2, v7, :cond_31

    .line 250
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp3:I

    goto :goto_1f

    :cond_31
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp3_select:I

    .line 251
    :goto_1f
    invoke-static {v4, v7}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableEnd(Landroid/widget/TextView;I)V

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "($"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_32

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_32

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v8, :cond_32

    invoke-virtual {v8}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_20

    :cond_32
    move-object/from16 v8, v16

    :goto_20
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float v4, v1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v4, v4, v7

    int-to-float v2, v2

    add-float v2, p3, v2

    .line 253
    sget v7, Lcom/guochao/component/mvp/R$id;->big_white_point_lay:I

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v2, v8

    if-gez v8, :cond_35

    mul-float v2, v2, v4

    const/high16 v7, 0x40a00000    # 5.0f

    div-float/2addr v2, v7

    mul-float v2, v2, v18

    float-to-int v2, v2

    .line 254
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 255
    iget-object v8, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 256
    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_diff_tips:I

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/Object;

    .line 257
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x24

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v13, v14

    .line 258
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_33

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_33

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v11, :cond_33

    invoke-virtual {v11}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getMvpLevel()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_33
    move-object/from16 v11, v16

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v13, v11

    .line 259
    invoke-virtual {v8, v9, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41400000    # 12.0f

    const/4 v9, 0x2

    .line 260
    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 261
    sget v8, Lcom/guochao/component/mvp/R$drawable;->icon_bottom_mvp:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v8, -0x1

    .line 262
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v8, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 264
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 265
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 266
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 267
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 268
    new-instance v8, Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 269
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v10}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v10

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {v11}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 270
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    sget v9, Lcom/guochao/component/mvp/R$mipmap;->icon_grow_mvp:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v9, 0x40a00000    # 5.0f

    div-float/2addr v4, v9

    mul-float v4, v4, v18

    float-to-int v4, v4

    const/high16 v9, 0x40e00000    # 7.0f

    .line 274
    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    sub-int/2addr v4, v9

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/high16 v4, 0x42300000    # 44.0f

    .line 275
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 276
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 277
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 278
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    if-le v8, v1, :cond_34

    goto :goto_21

    :cond_34
    move v1, v8

    .line 279
    :goto_21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 281
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v1, -0x2

    .line 282
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 v1, 0x42480000    # 50.0f

    .line 283
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v1, 0x11

    .line 284
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x24

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 287
    invoke-virtual {v0, v7, v1, v4}, Lcom/guochao/component/mvp/view/MvpProgressHolder;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_24

    :cond_35
    cmpg-float v8, v2, v18

    if-gez v8, :cond_38

    const/high16 v8, 0x40a00000    # 5.0f

    div-float v9, v4, v8

    mul-float v9, v9, v18

    const/4 v10, 0x1

    int-to-float v13, v10

    sub-float/2addr v2, v13

    mul-float v2, v2, v4

    div-float/2addr v2, v8

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v2, v2, v8

    add-float/2addr v9, v2

    float-to-int v2, v9

    .line 288
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 289
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 290
    iget-object v8, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 291
    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_diff_tips:I

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/Object;

    .line 292
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x24

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v13, v14

    .line 293
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_36

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_36

    const/4 v14, 0x1

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v11, :cond_36

    invoke-virtual {v11}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getMvpLevel()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_36
    move-object/from16 v11, v16

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v13, v11

    .line 294
    invoke-virtual {v8, v9, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41700000    # 15.0f

    const/4 v9, 0x2

    .line 295
    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 296
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 297
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 298
    sget v8, Lcom/guochao/component/mvp/R$drawable;->icon_bottom_mvp:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v8, -0x1

    .line 299
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v8, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 301
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 302
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 303
    new-instance v8, Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 304
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v10}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v10

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {v11}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 305
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    sget v9, Lcom/guochao/component/mvp/R$mipmap;->icon_grow_mvp:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 308
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v4, v4

    const/high16 v9, 0x40e00000    # 7.0f

    .line 309
    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    sub-int/2addr v4, v9

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/high16 v4, 0x42300000    # 44.0f

    .line 310
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 311
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 312
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 313
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    if-le v8, v1, :cond_37

    goto :goto_22

    :cond_37
    move v1, v8

    .line 314
    :goto_22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 316
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v1, 0x1

    .line 317
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, -0x2

    .line 318
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v1, 0x42480000    # 50.0f

    .line 319
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x11

    .line 320
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x24

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 323
    invoke-virtual {v0, v7, v1, v4}, Lcom/guochao/component/mvp/view/MvpProgressHolder;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_24

    :cond_38
    const/high16 v8, 0x40400000    # 3.0f

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3b

    const/4 v8, 0x2

    int-to-float v9, v8

    sub-float/2addr v2, v9

    mul-float v2, v2, v4

    add-float/2addr v4, v2

    float-to-int v2, v4

    const/4 v4, 0x1

    .line 324
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v8, 0x3

    .line 325
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 326
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 327
    iget-object v7, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 328
    sget v8, Lcom/guochao/component/mvp/R$string;->mvp_diff_tips:I

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    .line 329
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x24

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v10, v12

    .line 330
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_39

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_39

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v11, :cond_39

    invoke-virtual {v11}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getMvpLevel()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_39
    move-object/from16 v11, v16

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v10, v11

    .line 331
    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41700000    # 15.0f

    const/4 v8, 0x2

    .line 332
    invoke-virtual {v4, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 333
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 334
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 335
    sget v7, Lcom/guochao/component/mvp/R$drawable;->icon_bottom_mvp:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v7, -0x1

    .line 336
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v7, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 338
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 339
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 340
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 341
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 342
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    sget v8, Lcom/guochao/component/mvp/R$mipmap;->icon_grow_mvp:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 345
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x40e00000    # 7.0f

    .line 346
    invoke-static {v8}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/high16 v8, 0x42300000    # 44.0f

    .line 347
    invoke-static {v8}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v8, 0x800005

    .line 348
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 349
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 350
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 351
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    if-le v8, v1, :cond_3a

    goto :goto_23

    :cond_3a
    move v1, v8

    .line 352
    :goto_23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 353
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 354
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 355
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v1, 0x42480000    # 50.0f

    .line 356
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v1, 0x800005

    .line 357
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x11

    .line 358
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x24

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 361
    invoke-virtual {v0, v4, v1, v5}, Lcom/guochao/component/mvp/view/MvpProgressHolder;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_24

    :cond_3b
    const/4 v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v2, v1

    mul-float v2, v2, v4

    add-float/2addr v4, v2

    float-to-int v2, v4

    const/4 v1, 0x1

    .line 362
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x3

    .line 363
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x5

    .line 364
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :goto_24
    sget v1, Lcom/guochao/component/mvp/R$id;->select_progress:I

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2e

    :cond_3c
    move-object/from16 v20, v3

    move-object v11, v14

    .line 366
    iget-object v1, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 367
    iget-object v3, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 368
    sget v4, Lcom/guochao/component/mvp/R$layout;->layout_mvp2_progress:I

    iget-object v7, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 369
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    .line 370
    sget v4, Lcom/guochao/component/mvp/R$id;->mvpTV1:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-ge v2, v8, :cond_3d

    .line 371
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp1:I

    goto :goto_25

    :cond_3d
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp1_select:I

    .line 372
    :goto_25
    invoke-static {v4, v7}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableStart(Landroid/widget/TextView;I)V

    .line 373
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "($"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_3e

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3e

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v8, :cond_3e

    invoke-virtual {v8}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_26

    :cond_3e
    move-object/from16 v8, v16

    :goto_26
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 375
    sget v4, Lcom/guochao/component/mvp/R$id;->mvpTV2:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v7, 0x2

    if-ge v2, v7, :cond_3f

    .line 376
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp2:I

    goto :goto_27

    :cond_3f
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp2_select:I

    .line 377
    :goto_27
    invoke-static {v4, v7}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableEnd(Landroid/widget/TextView;I)V

    .line 378
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "($"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_40

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_40

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v8, :cond_40

    invoke-virtual {v8}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_28

    :cond_40
    move-object/from16 v8, v16

    :goto_28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    if-ne v2, v4, :cond_43

    .line 379
    sget v2, Lcom/guochao/component/mvp/R$id;->select_progress:I

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v7, v1

    int-to-float v8, v4

    add-float v8, v8, p3

    mul-float v8, v8, v7

    div-float v8, v8, v18

    float-to-int v4, v8

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 380
    sget v2, Lcom/guochao/component/mvp/R$id;->big_white_point_lay:I

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 381
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 382
    iget-object v4, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 383
    sget v8, Lcom/guochao/component/mvp/R$string;->mvp_diff_tips:I

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    .line 384
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x24

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v10, v12

    .line 385
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_41

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_41

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v11, :cond_41

    invoke-virtual {v11}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getMvpLevel()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_41
    move-object/from16 v11, v16

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v10, v11

    .line 386
    invoke-virtual {v4, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v8, 0x2

    .line 387
    invoke-virtual {v2, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 388
    sget v4, Lcom/guochao/component/mvp/R$drawable;->icon_bottom_mvp:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v4, -0x1

    .line 389
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v4, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 391
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 392
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 393
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 394
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 395
    new-instance v4, Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 396
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 397
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    sget v8, Lcom/guochao/component/mvp/R$mipmap;->icon_grow_mvp:I

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 400
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    div-float v7, v7, v18

    const/high16 v8, 0x40e00000    # 7.0f

    .line 401
    invoke-static {v8}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const/high16 v7, 0x42300000    # 44.0f

    .line 402
    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 403
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 404
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 405
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    float-to-int v4, v4

    if-le v4, v1, :cond_42

    goto :goto_29

    :cond_42
    move v1, v4

    .line 406
    :goto_29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 408
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 409
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v1, 0x42480000    # 50.0f

    .line 410
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v1, 0x800005

    .line 411
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x11

    .line 412
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 415
    invoke-virtual {v0, v2, v1, v3}, Lcom/guochao/component/mvp/view/MvpProgressHolder;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_2e

    :cond_43
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p3, v2

    if-gez v2, :cond_4b

    .line 416
    sget v2, Lcom/guochao/component/mvp/R$id;->select_progress:I

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    int-to-float v4, v1

    mul-float v4, v4, p3

    div-float v4, v4, v18

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 417
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 418
    iget-object v4, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 419
    sget v7, Lcom/guochao/component/mvp/R$string;->mvp_diff_tips:I

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    .line 420
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x24

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 421
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_44

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_44

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v10, :cond_44

    invoke-virtual {v10}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getMvpLevel()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_44
    move-object/from16 v10, v16

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 422
    invoke-virtual {v4, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v7, 0x2

    .line 423
    invoke-virtual {v2, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 424
    sget v4, Lcom/guochao/component/mvp/R$drawable;->icon_bottom_mvp:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v4, -0x1

    .line 425
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 426
    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v4, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 427
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 428
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 429
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 430
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 431
    new-instance v4, Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 432
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v8}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 433
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->icon_grow_mvp:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 436
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v7, 0x40e00000    # 7.0f

    .line 437
    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/high16 v7, 0x42300000    # 44.0f

    .line 438
    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v7, 0x800005

    .line 439
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 440
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 441
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 442
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    float-to-int v4, v4

    if-le v4, v1, :cond_45

    goto :goto_2a

    :cond_45
    move v1, v4

    .line 443
    :goto_2a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 444
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 445
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v1, -0x2

    .line 446
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 v1, 0x42480000    # 50.0f

    .line 447
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v1, 0x11

    .line 448
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 451
    invoke-virtual {v0, v2, v1, v3}, Lcom/guochao/component/mvp/view/MvpProgressHolder;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto/16 :goto_2e

    :cond_46
    move-object/from16 v20, v3

    move-object v11, v14

    .line 452
    iget-object v1, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 453
    iget-object v3, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 454
    sget v4, Lcom/guochao/component/mvp/R$layout;->layout_mvp1_progress:I

    iget-object v7, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 455
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    .line 456
    sget v4, Lcom/guochao/component/mvp/R$id;->select_progress:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    int-to-float v7, v1

    mul-float v7, v7, p3

    float-to-int v7, v7

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 457
    sget v4, Lcom/guochao/component/mvp/R$id;->mvpTV:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v7, 0x1

    if-ge v2, v7, :cond_47

    .line 458
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp1:I

    goto :goto_2b

    :cond_47
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_mvp1_select:I

    .line 459
    :goto_2b
    invoke-static {v4, v7}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->addDrawableEnd(Landroid/widget/TextView;I)V

    .line 460
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "($"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_48

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_48

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v8, :cond_48

    invoke-virtual {v8}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getRechargeMin()D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2c

    :cond_48
    move-object/from16 v8, v16

    :goto_2c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x1

    if-ge v2, v4, :cond_4b

    .line 462
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 463
    iget-object v4, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 464
    sget v7, Lcom/guochao/component/mvp/R$string;->mvp_diff_tips:I

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    .line 465
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x24

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 466
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_49

    invoke-virtual/range {p4 .. p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->getMvpConfVoList()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_49

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-eqz v11, :cond_49

    invoke-virtual {v11}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->getMvpLevel()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_49
    move-object/from16 v10, v16

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 467
    invoke-virtual {v4, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v7, 0x2

    .line 468
    invoke-virtual {v2, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 469
    sget v4, Lcom/guochao/component/mvp/R$drawable;->icon_bottom_mvp:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v4, -0x1

    .line 470
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-static/range {v17 .. v17}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v4, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 472
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 473
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 474
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 475
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 476
    new-instance v4, Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/guochao/component/mvp/view/MvpProgressHolder;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 477
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v8}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v8

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 478
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    sget v7, Lcom/guochao/component/mvp/R$mipmap;->icon_grow_mvp:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 480
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 481
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v7, 0x40e00000    # 7.0f

    .line 482
    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/high16 v7, 0x42300000    # 44.0f

    .line 483
    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v7, 0x800005

    .line 484
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 485
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 486
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 487
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    float-to-int v4, v4

    if-le v4, v1, :cond_4a

    goto :goto_2d

    :cond_4a
    move v1, v4

    .line 488
    :goto_2d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 490
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 491
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v1, 0x42480000    # 50.0f

    .line 492
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v1, 0x800005

    .line 493
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x11

    .line 494
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 497
    invoke-virtual {v0, v2, v1, v3}, Lcom/guochao/component/mvp/view/MvpProgressHolder;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    :cond_4b
    :goto_2e
    return-void
.end method

.method public final setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 8
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v4, v1, :cond_5

    if-nez v5, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v1

    .line 3
    :goto_1
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 4
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v5, :cond_3

    if-nez v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v1, v2

    .line 5
    invoke-interface {v0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_6

    .line 8
    invoke-virtual {p0, v0, p2}, Lcom/guochao/component/mvp/view/MvpProgressHolder;->getFirstCharIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_6
    const/4 v0, -0x1

    :goto_4
    const/16 v2, 0x12

    if-ltz v0, :cond_7

    .line 9
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 10
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    .line 11
    invoke-virtual {v1, v3, v0, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    .line 12
    :cond_7
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, p2, v3, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 13
    :goto_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
