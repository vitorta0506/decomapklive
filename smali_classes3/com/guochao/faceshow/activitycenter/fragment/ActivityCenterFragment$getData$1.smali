.class public final Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J \u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\u0016\u0010\n\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
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
.field final synthetic this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;->this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;->this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;->swipe:Lcom/guochao/faceshow/aaspring/views/GCSwipeRefreshView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;->this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;->swipe:Lcom/guochao/faceshow/aaspring/views/GCSwipeRefreshView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;->this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;->emptyIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    .line 4
    const-class v1, Lcom/guochao/faceshow/promotion/data/PromotionData;

    .line 5
    invoke-virtual {p2, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/promotion/data/PromotionData;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 6
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 7
    iget-object v1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 8
    iget-object v1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object v1

    const-string v2, "bean.result.live"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    new-instance v3, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1$onResponse$$inlined$sortByDescending$1;

    invoke-direct {v3}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1$onResponse$$inlined$sortByDescending$1;-><init>()V

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10
    :cond_2
    iget-object p1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {p1}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getLive()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 12
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 13
    iget-wide v3, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->startTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "time"

    invoke-static {v3, v2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;-><init>()V

    .line 15
    iget v3, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->setModelType(Ljava/lang/String;)V

    .line 16
    iget-object v3, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->setBannerName(Ljava/lang/String;)V

    .line 17
    iget-object v3, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeId()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v0

    :goto_3
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->setSchemeId(Ljava/lang/String;)V

    .line 18
    iget-object v3, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v0

    :goto_4
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->setSchemeName(Ljava/lang/String;)V

    .line 19
    iget-object v3, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeData()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object v3, v0

    :goto_5
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->setSchemeData(Ljava/lang/String;)V

    .line 20
    iget-object v3, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeType()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_6
    move-object v3, v0

    :goto_6
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->setSchemeType(Ljava/lang/String;)V

    .line 21
    iget-object v3, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_7
    move-object v3, v0

    :goto_7
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->setSchemeUrl(Ljava/lang/String;)V

    .line 22
    iget-object v3, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->coverImgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->setFileUrl(Ljava/lang/String;)V

    .line 23
    iget-object v1, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->belongLang:Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->setBelongLang(Ljava/lang/Integer;)V

    .line 24
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 25
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;->this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;->swipe:Lcom/guochao/faceshow/aaspring/views/GCSwipeRefreshView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 26
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_9

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;->this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;->swipe:Lcom/guochao/faceshow/aaspring/views/GCSwipeRefreshView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;->this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;->emptyIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 29
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;->this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getMAdapter()Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;->this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;->swipe:Lcom/guochao/faceshow/aaspring/views/GCSwipeRefreshView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$getData$1;->this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentActivityCenterBinding;->emptyIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    return-void
.end method
