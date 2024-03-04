.class public final Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftTipsHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftTipsHolder;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "liveChatFragment",
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;",
        "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V",
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


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "liveChatFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0255

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12053b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "itemView.resources.getTe\u2026ing.lucky_gift_chat_tips)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v1, Landroid/text/SpannableString;

    const-string v3, " "

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802ab

    .line 7
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v3, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 9
    :goto_0
    new-instance v5, Lcom/guochao/faceshow/views/r;

    invoke-direct {v5, v3}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v6, 0x21

    .line 11
    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v3, "  "

    .line 12
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/b;

    invoke-direct {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "$liveChatFragment"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->giftOnclick(I)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftTipsHolder;->_init_$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V

    return-void
.end method
