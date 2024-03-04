.class public final Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0019\u001a\u00020\u001aJ\"\u0010\u001b\u001a\u00020\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u001eJ\u001c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eH\u0002R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006%"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "avatarGroupView",
        "Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;",
        "getAvatarGroupView",
        "()Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;",
        "setAvatarGroupView",
        "(Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;)V",
        "mBannerViewPager",
        "Lcom/youth/banner/Banner;",
        "getMBannerViewPager",
        "()Lcom/youth/banner/Banner;",
        "setMBannerViewPager",
        "(Lcom/youth/banner/Banner;)V",
        "mOnPageChangeListener",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "mPageIndicatorView",
        "Lcom/rd/PageIndicatorView;",
        "getMPageIndicatorView",
        "()Lcom/rd/PageIndicatorView;",
        "setMPageIndicatorView",
        "(Lcom/rd/PageIndicatorView;)V",
        "getLayoutId",
        "",
        "updateDatas",
        "",
        "mEventItemBeans",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
        "mRankRows",
        "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
        "urls",
        "",
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
.field private avatarGroupView:Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mBannerViewPager:Lcom/youth/banner/Banner;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPageIndicatorView:Lcom/rd/PageIndicatorView;
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

    const v0, 0x7f0a0852

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rd/PageIndicatorView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    const v0, 0x7f0a010c

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/Banner;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mBannerViewPager:Lcom/youth/banner/Banner;

    const v0, 0x7f0a00f6

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->avatarGroupView:Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    return-void
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->updateDatas$lambda-1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->updateDatas$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->updateDatas$lambda-0(Landroid/view/View;)V

    return-void
.end method

.method private static final updateDatas$lambda-0(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "Home_live_Trophy_click"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final updateDatas$lambda-1(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v1, "activity_center_entrance_3000"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/activitycenter/ActivityActivity;->Companion:Lcom/guochao/faceshow/activitycenter/ActivityActivity$Companion;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "it.context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/activitycenter/ActivityActivity$Companion;->start(Landroid/content/Context;)V

    return-void
.end method

.method private static final updateDatas$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;Ljava/util/List;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$mEventItemBeans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v1, "activity_banner_3000"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    const-string v1, "activity_load_from_4000"

    const-string v2, "1"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AppEventFragment;->Q1(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p0

    const-string p1, "KEY_LIVE_CLICK_TIPS"

    invoke-virtual {p0, p1}, Lja/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method private final urls(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mEventItemBeans[i].fileUrl"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getAvatarGroupView()Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->avatarGroupView:Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    return-object v0
.end method

.method public final getLayoutId()I
    .locals 1

    const v0, 0x7f0d020b

    return v0
.end method

.method public final getMBannerViewPager()Lcom/youth/banner/Banner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mBannerViewPager:Lcom/youth/banner/Banner;

    return-object v0
.end method

.method public final getMPageIndicatorView()Lcom/rd/PageIndicatorView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    return-object v0
.end method

.method public final setAvatarGroupView(Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->avatarGroupView:Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    return-void
.end method

.method public final setMBannerViewPager(Lcom/youth/banner/Banner;)V
    .locals 0
    .param p1    # Lcom/youth/banner/Banner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mBannerViewPager:Lcom/youth/banner/Banner;

    return-void
.end method

.method public final setMPageIndicatorView(Lcom/rd/PageIndicatorView;)V
    .locals 0
    .param p1    # Lcom/rd/PageIndicatorView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    return-void
.end method

.method public final updateDatas(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mEventItemBeans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mRankRows"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->avatarGroupView:Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->setAvatarList(Ljava/util/List;)V

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;

    invoke-direct {p2, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$1;-><init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 4
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a091c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/m;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/area/l;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mBannerViewPager:Lcom/youth/banner/Banner;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p2, v0}, Lcom/youth/banner/Banner;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mBannerViewPager:Lcom/youth/banner/Banner;

    if-eqz p2, :cond_3

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$4;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader$updateDatas$4;-><init>()V

    invoke-virtual {p2, v0}, Lcom/youth/banner/Banner;->setImageLoader(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mBannerViewPager:Lcom/youth/banner/Banner;

    if-eqz p2, :cond_4

    const/16 v0, 0x1388

    invoke-virtual {p2, v0}, Lcom/youth/banner/Banner;->setDelayTime(I)Lcom/youth/banner/Banner;

    .line 9
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mBannerViewPager:Lcom/youth/banner/Banner;

    if-eqz p2, :cond_5

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/n;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    .line 10
    :cond_5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mBannerViewPager:Lcom/youth/banner/Banner;

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/youth/banner/Banner;->setBannerStyle(I)Lcom/youth/banner/Banner;

    .line 11
    :cond_6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mBannerViewPager:Lcom/youth/banner/Banner;

    if-eqz p2, :cond_7

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->urls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/youth/banner/Banner;->setImages(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 12
    :cond_7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/rd/PageIndicatorView;->setCount(I)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->mBannerViewPager:Lcom/youth/banner/Banner;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    :cond_9
    return-void
.end method
