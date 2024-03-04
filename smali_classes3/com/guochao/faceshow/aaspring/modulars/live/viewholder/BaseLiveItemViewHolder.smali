.class public Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0006H\u0016J\u0018\u0010\u001d\u001a\u00020\u00162\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "checkTips",
        "",
        "getCheckTips",
        "()Z",
        "setCheckTips",
        "(Z)V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "userGuideView",
        "Landroid/widget/FrameLayout;",
        "getUserGuideView",
        "()Landroid/widget/FrameLayout;",
        "setUserGuideView",
        "(Landroid/widget/FrameLayout;)V",
        "bindValue",
        "",
        "roomItemData",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        "position",
        "",
        "setCheckTip",
        "tip",
        "setLabel",
        "label",
        "",
        "pkIcon",
        "Landroid/widget/ImageView;",
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
.field private checkTips:Z

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private userGuideView:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "itemView.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bindValue(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V
    .locals 12
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0a0c16

    .line 1
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c22

    .line 2
    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a052d

    .line 3
    invoke-virtual {p0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f080367

    .line 4
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x7f0a06ba

    .line 5
    invoke-virtual {p0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getCity()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->context:Landroid/content/Context;

    const v5, 0x7f120067

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getCity()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getCountry()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const v5, 0x7f0a0088

    .line 11
    invoke-virtual {p0, v5, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 12
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 13
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 14
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getOnlineNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "format(format, *args)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getInfoName()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v4

    :goto_3
    const/16 v3, 0x20

    const-string v5, "roomItemData.infoName"

    const-string v7, ""

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getInfoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_4
    if-gt v9, v8, :cond_b

    if-nez v10, :cond_6

    move v11, v9

    goto :goto_5

    :cond_6
    move v11, v8

    .line 17
    :goto_5
    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    .line 18
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    if-nez v10, :cond_9

    if-nez v11, :cond_8

    const/4 v10, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    if-nez v11, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_b
    :goto_7
    add-int/2addr v8, v2

    .line 19
    invoke-interface {v1, v9, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_c
    move-object v1, v7

    .line 21
    :goto_8
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->containsEmoji(Ljava/lang/String;)Z

    move-result v1

    const/4 v8, 0x2

    if-eqz v1, :cond_e

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    if-eqz p1, :cond_d

    .line 23
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getInfoName()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_d
    move-object p1, v4

    .line 24
    :goto_9
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type android.text.TextPaint"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    div-int/2addr v1, v8

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v1, v1

    .line 26
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 27
    invoke-static {p1, v3, v1, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    .line 28
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_e
    if-eqz p1, :cond_f

    .line 30
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getInfoName()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_f
    move-object v1, v4

    :goto_a
    if-eqz v1, :cond_16

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getInfoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_b
    if-gt v5, v1, :cond_15

    if-nez v7, :cond_10

    move v9, v5

    goto :goto_c

    :cond_10
    move v9, v1

    .line 32
    :goto_c
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 33
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_11

    const/4 v9, 0x1

    goto :goto_d

    :cond_11
    const/4 v9, 0x0

    :goto_d
    if-nez v7, :cond_13

    if-nez v9, :cond_12

    const/4 v7, 0x1

    goto :goto_b

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_13
    if-nez v9, :cond_14

    goto :goto_e

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_15
    :goto_e
    add-int/2addr v1, v2

    .line 34
    invoke-interface {p1, v5, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 36
    :cond_16
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    const/16 p1, 0x8

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    if-ne p2, v2, :cond_1c

    .line 37
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->checkTips:Z

    if-eqz p2, :cond_1c

    .line 38
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    .line 39
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v1

    const-string v3, "KEY_LIVE_CLICK_TIPS"

    .line 40
    invoke-virtual {v1, v3}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 41
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_21

    .line 42
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    .line 43
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$Companion;

    sput-boolean v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->sShowedLiveTips:Z

    .line 44
    new-instance p1, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v4, v8, v4}, Lcom/guochao/faceshow/views/SvgaImageViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    .line 46
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 50
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f110035

    .line 52
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 53
    new-instance p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1209ae

    .line 54
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 55
    invoke-virtual {p1, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, -0x1

    .line 56
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v5, 0x41200000    # 10.0f

    .line 59
    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 60
    invoke-virtual {v0, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_17

    .line 62
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    invoke-virtual {p1, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :cond_17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_18

    const-string v0, "#80000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 66
    :cond_18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    .line 67
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 68
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_19

    goto :goto_10

    :cond_19
    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_10

    .line 70
    :cond_1a
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_21

    .line 71
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    if-nez p2, :cond_1b

    goto :goto_10

    :cond_1b
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_10

    .line 73
    :cond_1c
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_21

    .line 74
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    .line 75
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1d

    const v0, 0x7f0a0af5

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/opensource/svgaplayer/SVGAImageView;

    :cond_1d
    if-eqz v4, :cond_1e

    .line 77
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    :cond_1e
    if-eqz v4, :cond_1f

    .line 78
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGAImageView;->getMVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object p2

    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->release()V

    .line 79
    :cond_1f
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    if-nez p2, :cond_20

    goto :goto_10

    :cond_20
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_21
    :goto_10
    return-void
.end method

.method public final getCheckTips()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->checkTips:Z

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getUserGuideView()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setCheckTip(Z)Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->checkTips:Z

    return-object p0
.end method

.method public final setCheckTips(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->checkTips:Z

    return-void
.end method

.method public final setLabel(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pkIcon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const-string v0, "pk"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p1, 0x7f0f056d

    .line 2
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "hour"

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :try_start_0
    const-string v5, "hour"

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p1

    .line 6
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const p1, 0x7f0f00eb

    .line 7
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0f00ec

    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const p1, 0x7f0f00ed

    .line 9
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const p1, 0x7f0f00ea

    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const-string v0, "countryHour"

    .line 12
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f0f010c

    .line 14
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    const-string v0, "hello"

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p1, 0x7f0f0212

    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const-string v0, "friend"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0f0370

    if-eqz p1, :cond_7

    .line 20
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 22
    :cond_7
    instance-of p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveNormalViewHolder;

    if-eqz p1, :cond_8

    .line 23
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final setUserGuideView(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->userGuideView:Landroid/widget/FrameLayout;

    return-void
.end method
