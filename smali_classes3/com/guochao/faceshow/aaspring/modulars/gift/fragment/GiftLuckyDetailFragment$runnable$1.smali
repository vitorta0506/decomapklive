.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->access$getCount$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->getPrizeInfoList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->access$setCount$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->getPrizeInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->access$getHandler$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->getPrizeInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->access$getCount$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, ""

    .line 6
    :cond_6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->getPrizeInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->access$getCount$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/PrizeInfo;->getTimes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    .line 7
    :goto_3
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    const v5, 0x7f12053d

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.lucky_gift_draw_times)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v2

    .line 9
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    .line 10
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/4 v5, -0x1

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x22

    .line 13
    invoke-virtual {v4, v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 14
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentComboGiftDetailBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentComboGiftDetailBinding;->countTV:Landroid/widget/TextSwitcher;

    .line 16
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    sget-object v3, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-virtual {v2, v4, v3}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 18
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentComboGiftDetailBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentComboGiftDetailBinding;->countTV:Landroid/widget/TextSwitcher;

    .line 19
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    sget-object v3, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-virtual {v2, v4, v3}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :goto_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->access$getHandler$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment$runnable$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->access$getCount$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->access$setCount$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;I)V

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;->access$getCount$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyDetailFragment;)I

    return-void
.end method
