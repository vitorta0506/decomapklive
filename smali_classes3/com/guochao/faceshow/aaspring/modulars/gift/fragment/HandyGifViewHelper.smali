.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001&B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008$\u0010%J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0014\u0010\u000c\u001a\u00020\u00022\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ\u0006\u0010\r\u001a\u00020\u0002R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0012\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0017\u001a\u00020\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;",
        "",
        "",
        "refreshGiftDiamondCount",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
        "itemBean",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
        "categoryItem",
        "setCurrentSelected",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
        "liveMessageModel",
        "checkLiveMessageModel",
        "trackSend",
        "Landroid/view/ViewStub;",
        "viewStub",
        "Landroid/view/ViewStub;",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;",
        "fragment",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;",
        "getFragment",
        "()Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;",
        "Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;",
        "giftPathData",
        "Ljava/util/List;",
        "giftItemBean",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
        "Lcom/guochao/faceshow/gift/view/NumCheckSendView;",
        "sendButton",
        "Lcom/guochao/faceshow/gift/view/NumCheckSendView;",
        "<init>",
        "(Landroid/view/ViewStub;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V",
        "GiftPathIconViewHolder",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final fragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final giftIconListener:Ls0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/i<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private giftItemBean:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final giftPathData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendButton:Lcom/guochao/faceshow/gift/view/NumCheckSendView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewStub:Landroid/view/ViewStub;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V
    .locals 2
    .param p1    # Landroid/view/ViewStub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewStub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewStub:Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->fragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->bind(Landroid/view/View;)Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    move-result-object p1

    const-string v0, "bind(viewStub.inflate())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/t;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/t;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->close:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/q;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/q;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/u;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/u;-><init>(Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 8
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    .line 9
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;->Companion:Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData$Companion;->getGiftPathDataList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->giftPathData:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$giftIconListener$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$giftIconListener$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->giftIconListener:Ls0/i;

    .line 11
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    const-string v0, "fragment.mNumCheckSendView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->sendButton:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    .line 12
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->recovation:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/r;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/r;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->clear:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/s;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p1, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$4;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$4;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->setCapturePointsListener(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final _init_$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->revocation()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string p1, "Graffiti_gift_withdraw_3000"

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final _init_$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->clearPoints()Z

    .line 2
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string p1, "Graffiti_gift_delete_3000"

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding$lambda-3$lambda-2(Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;)V

    return-void
.end method

.method public static final synthetic access$getGiftPathData$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->giftPathData:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$refreshGiftDiamondCount(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->refreshGiftDiamondCount()V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding$lambda-3$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->_init_$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding$lambda-3$lambda-0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->_init_$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;Landroid/view/View;)V

    return-void
.end method

.method private final refreshGiftDiamondCount()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->giftItemBean:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMaxDraw()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v3, v3, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->getCurrentDrawCount()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-lt v3, v4, :cond_2

    .line 5
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->close:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->recovation:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->clear:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->guide:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->guide:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->close:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->recovation:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->clear:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :goto_2
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->getAnimating()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->sendButton:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setCurrentHandyGiftDrawCount(I)V

    goto :goto_3

    .line 15
    :cond_3
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->sendButton:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->setCurrentHandyGiftDrawCount(I)V

    .line 16
    :goto_3
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->giftCount:Landroid/widget/TextView;

    const-string v5, "viewBinding.giftCount"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 18
    new-instance v6, Landroid/text/SpannableString;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string v8, "#6365FF"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 20
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    .line 21
    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 22
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v6, "/"

    .line 23
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, "("

    .line 25
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26
    new-instance v0, Landroid/text/SpannableString;

    const-string v6, " "

    invoke-direct {v0, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0802a7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 28
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v6, v1, v1, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;

    invoke-direct {v7, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 31
    invoke-virtual {v0, v7, v1, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 32
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    mul-int v3, v3, v2

    .line 33
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, ")"

    .line 34
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 35
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final viewBinding$lambda-3$lambda-0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final viewBinding$lambda-3$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->fragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final viewBinding$lambda-3$lambda-2(Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;)V
    .locals 3

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->lottie:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v0, 0x7f110010

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->lottie:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const v0, 0x7f11000f

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final checkLiveMessageModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "liveMessageModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setDrawWidth(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setDrawHeight(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->getCurrentPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setPointPaths(Ljava/util/List;)V

    return-void
.end method

.method public final getFragment()Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->fragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    return-object v0
.end method

.method public final setCurrentSelected(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->isHandyGift()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->sendButton:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->q()V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->sendButton:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->r(Z)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    invoke-virtual {p2}, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v0, "Graffiti_gift_click_3000"

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->fragment:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    invoke-static {p2}, Lcom/bumptech/glide/c;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->giftIconListener:Ls0/i;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/h;->g(Ls0/k;)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->giftIconListener:Ls0/i;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->giftItemBean:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->clearPoints()Z

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getMaxDraw()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->setMaxDraw(I)V

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->refreshGiftDiamondCount()V

    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->sendButton:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/gift/view/NumCheckSendView;->r(Z)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final trackSend()V
    .locals 10

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v1, "Graffiti_gift_give_3000"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->giftItemBean:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Graffiti_gift_give_Price_3000_%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v2, v2, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->getCurrentDrawCount()I

    move-result v2

    const/16 v5, 0x1e

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-ge v2, v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/16 v5, 0x50

    if-ge v2, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0x78

    if-ge v2, v5, :cond_3

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    const/16 v5, 0x96

    if-ge v2, v5, :cond_4

    const/4 v5, 0x3

    goto :goto_1

    :cond_4
    const/4 v5, 0x4

    :goto_1
    new-array v9, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v9, "Graffiti_gift_give_quantity_3000_%s"

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 5
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->giftItemBean:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    mul-int v5, v5, v2

    const/16 v2, 0x32

    if-ge v5, v2, :cond_6

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    const/16 v2, 0x64

    if-ge v5, v2, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/16 v2, 0xc8

    if-ge v5, v2, :cond_8

    const/4 v6, 0x2

    goto :goto_3

    :cond_8
    const/16 v2, 0x1f4

    if-ge v5, v2, :cond_9

    goto :goto_3

    :cond_9
    const/16 v2, 0x320

    if-ge v5, v2, :cond_a

    const/4 v6, 0x4

    goto :goto_3

    :cond_a
    const/16 v2, 0x4b0

    if-ge v5, v2, :cond_b

    const/4 v6, 0x5

    goto :goto_3

    :cond_b
    const/16 v2, 0x7d0

    if-ge v5, v2, :cond_c

    const/4 v6, 0x6

    goto :goto_3

    :cond_c
    const/4 v6, 0x7

    :goto_3
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Graffiti_gift_give_Total_price_3000_%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->viewBinding:Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->trackSend()V

    return-void
.end method
