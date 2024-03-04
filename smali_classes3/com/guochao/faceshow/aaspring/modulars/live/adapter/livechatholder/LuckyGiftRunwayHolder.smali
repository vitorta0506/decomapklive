.class public final Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;",
        "(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V",
        "handler",
        "Landroid/os/Handler;",
        "bindToMessage",
        "",
        "message",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;",
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
.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewBinding:Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;->viewBinding:Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;->handler:Landroid/os/Handler;

    .line 4
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->svga:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->setResizeScale(F)V

    .line 5
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->svga:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v1, 0x7f110025

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    .line 6
    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->userName:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$2;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private static final bindToMessage$lambda-4$lambda-3(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V
    .locals 3

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->scrollView:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;

    const-string v1, "scrollView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->scrollView:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->startAutoScroll()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->scrollView:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$1$3$1$1;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$1$3$1$1;

    const-wide/16 v1, 0x1770

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$lambda-4$lambda-3$$inlined$doOnLayout$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$lambda-4$lambda-3$$inlined$doOnLayout$1;-><init>(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;->bindToMessage$lambda-4$lambda-3(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V

    return-void
.end method


# virtual methods
.method public final bindToMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;->viewBinding:Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;

    .line 3
    iget-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->content:Landroid/widget/TextView;

    .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "itemView.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;->getLuckyGiftRunwayContentSpan(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->avatar:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 8
    iget-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->giftIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->getGiftPicture()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 9
    iget-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 10
    iget-object v1, v0, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getLevelId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V

    .line 11
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->scrollView:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$1$1;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$1$1;-><init>()V

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->setScrollEndListener(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;)V

    .line 12
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;->scrollView:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;

    const-string v1, "scrollView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$lambda-4$$inlined$doOnNextLayout$1;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder$bindToMessage$lambda-4$$inlined$doOnNextLayout$1;-><init>(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftRunwayHolder;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/a;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/a;-><init>(Lcom/guochao/faceshow/databinding/ListItemLuckyGiftRunwayHolderBinding;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
