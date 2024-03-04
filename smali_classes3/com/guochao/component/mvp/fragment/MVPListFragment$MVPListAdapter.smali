.class public final Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/mvp/fragment/MVPListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MVPListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/component/mvp/model/GiftModel;",
        "Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0014J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0002R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/component/mvp/model/GiftModel;",
        "Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;",
        "isShowButton",
        "",
        "list",
        "",
        "(Lcom/guochao/component/mvp/fragment/MVPListFragment;ZLjava/util/List;)V",
        "mIsShowButton",
        "convert",
        "",
        "holder",
        "item",
        "isGet",
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
.field private mIsShowButton:Z

.field final synthetic this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/component/mvp/fragment/MVPListFragment;ZLjava/util/List;)V
    .locals 1
    .param p2    # Z
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/GiftModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    .line 2
    sget p1, Lcom/guochao/component/mvp/R$layout;->item_gift:I

    invoke-direct {p0, p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 3
    iput-boolean p2, p0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->mIsShowButton:Z

    return-void
.end method

.method private static final convert$lambda-1(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V
    .locals 9

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$1"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p3, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_receive_click:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->getCallBack()Lkotlin/jvm/functions/Function1;

    move-result-object p3

    if-eqz p3, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    new-instance p3, Lcom/guochao/component/mvp/model/GetRewardRequestModel;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->getMode()Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getLevel()Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object v3, v8

    :goto_0
    const/4 v4, 0x0

    .line 5
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v5, v8

    :goto_1
    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p3

    .line 6
    invoke-direct/range {v1 .. v7}, Lcom/guochao/component/mvp/model/GetRewardRequestModel;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$2$1;

    invoke-direct {v1, p2, p0, p1, v8}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$2$1;-><init>(Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, p3, v1}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->getReward(Lcom/guochao/component/mvp/model/GetRewardRequestModel;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final convert$lambda-4$lambda-3(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V
    .locals 5

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$1"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p3, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_receive_click:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->getCallBack()Lkotlin/jvm/functions/Function1;

    move-result-object p3

    if-eqz p3, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const/4 v1, 0x1

    if-le p3, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->getMode()Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getLevel()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 5
    sget-object v0, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->Companion:Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, v1, p3, v2}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment$Companion;->newInstance(IILjava/util/ArrayList;)Lcom/guochao/component/mvp/fragment/GiftSelectFragment;

    move-result-object p3

    .line 9
    new-instance v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$1$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$1$1;-><init>(Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Lcom/guochao/component/mvp/fragment/MVPListFragment;)V

    invoke-virtual {p3, v0}, Lcom/guochao/component/mvp/fragment/GiftSelectFragment;->setCallBack(Lkotlin/jvm/functions/Function1;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "parentFragmentManager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "giftSelect"

    invoke-virtual {p3, p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_4

    .line 11
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result p3

    .line 12
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->getMode()Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getLevel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    .line 13
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 14
    :goto_2
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/TypeData;->getBussinessId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v3

    .line 15
    :goto_3
    new-instance v4, Lcom/guochao/component/mvp/model/GetRewardRequestModel;

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 17
    invoke-direct {v4, p3, v1, v0, v2}, Lcom/guochao/component/mvp/model/GetRewardRequestModel;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object p3

    new-instance v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;

    invoke-direct {v0, p1, p0, p2, v3}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$3$1$2;-><init>(Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p3, v4, v0}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->getReward(Lcom/guochao/component/mvp/model/GetRewardRequestModel;Lkotlin/jvm/functions/Function2;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private static final convert$lambda-7$lambda-6(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V
    .locals 1

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$item"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$count"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$1"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p4, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->Companion:Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$Companion;

    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->getMode()Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getLevel()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p4, v0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$Companion;->newInstance(Ljava/lang/Integer;)Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;

    move-result-object p4

    .line 2
    new-instance v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$5$1$1;-><init>(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;)V

    invoke-virtual {p4, v0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->setCallBack(Lkotlin/jvm/functions/Function1;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "parentFragmentManager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "freeTime"

    invoke-virtual {p4, p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final convert$lambda-9$lambda-8(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V
    .locals 1

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$item"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$count"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$1"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p4, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->Companion:Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$Companion;

    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/MVPListFragment;->getMode()Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getLevel()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p4, v0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$Companion;->newInstance(Ljava/lang/Integer;)Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;

    move-result-object p4

    .line 2
    new-instance v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$6$1$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter$convert$6$1$1;-><init>(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;)V

    invoke-virtual {p4, v0}, Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;->setCallBack(Lkotlin/jvm/functions/Function1;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "parentFragmentManager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "setTop"

    invoke-virtual {p4, p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->convert$lambda-4$lambda-3(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->convert$lambda-9$lambda-8(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->convert$lambda-7$lambda-6(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->convert$lambda-1(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;

    check-cast p2, Lcom/guochao/component/mvp/model/GiftModel;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->convert(Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;Lcom/guochao/component/mvp/model/GiftModel;)V

    return-void
.end method

.method protected convert(Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;Lcom/guochao/component/mvp/model/GiftModel;)V
    .locals 23
    .param p1    # Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/mvp/model/GiftModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "holder"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "item"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->smallIV:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-boolean v2, v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->mIsShowButton:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftBgFL:Landroid/widget/FrameLayout;

    sget v6, Lcom/guochao/component/mvp/R$mipmap;->ic_bg_gift:I

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v2

    const-string v6, "holder.viewBinding.getTV"

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_18

    .line 8
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    iget-object v3, v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    .line 9
    iget-object v4, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftIV:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v4, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftIV:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    iget-object v4, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftIV:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 11
    iget-object v1, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->titleTV:Landroid/widget/TextView;

    sget v4, Lcom/guochao/component/mvp/R$string;->mvp_get_title_tips_gift:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->desTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/guochao/component/mvp/R$string;->mvp_get_small_tips_gift:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/guochao/component/mvp/R$string;->mvp_gift_have:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_18

    .line 15
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    iget-object v9, v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    .line 16
    iget-object v10, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftIV:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v4, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftBgFL:Landroid/widget/FrameLayout;

    sget v10, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_gift_set_top:I

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 18
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v10

    const-string v11, ","

    if-eqz v10, :cond_1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iput-object v10, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 19
    iget-object v10, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/guochao/component/mvp/R$string;->mvp_get_title_set_top:I

    new-array v14, v8, [Ljava/lang/Object;

    iget-object v15, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v5

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/guochao/component/mvp/model/TypeData;->getData()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v10, 0x1

    :goto_4
    if-eqz v10, :cond_6

    .line 21
    iget-object v10, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->desTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 22
    sget v13, Lcom/guochao/component/mvp/R$string;->mvp_get_small_tips_time:I

    new-array v14, v8, [Ljava/lang/Object;

    .line 23
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_5

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v5

    .line 24
    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 25
    :cond_6
    iget-object v10, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->desTV:Landroid/widget/TextView;

    .line 26
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 28
    sget v14, Lcom/guochao/component/mvp/R$string;->mvp_get_small_tips_time:I

    new-array v15, v8, [Ljava/lang/Object;

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_7

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x6

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    .line 30
    :goto_6
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v5

    .line 31
    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":ID"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/TypeData;->getData()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    .line 34
    :goto_7
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :goto_8
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->isGet(Lcom/guochao/component/mvp/model/GiftModel;)Z

    move-result v7

    xor-int/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->isGet(Lcom/guochao/component/mvp/model/GiftModel;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 38
    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/guochao/component/mvp/R$string;->mvp_gift_useed:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 39
    :cond_9
    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/guochao/component/mvp/R$string;->mvp_gift_un_use:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    iget-object v10, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v11, 0x0

    new-instance v13, Lcom/guochao/component/mvp/fragment/w;

    invoke-direct {v13, v9, v1, v4, v0}, Lcom/guochao/component/mvp/fragment/w;-><init>(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;)V

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    goto/16 :goto_18

    .line 41
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    iget-object v7, v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    .line 42
    iget-object v9, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftIV:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object v4, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftBgFL:Landroid/widget/FrameLayout;

    sget v9, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_gift_free_time:I

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 44
    iget-object v4, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 45
    sget v10, Lcom/guochao/component/mvp/R$string;->mvp_get_title_free_time:I

    new-array v11, v8, [Ljava/lang/Object;

    .line 46
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    :goto_a
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    .line 47
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/guochao/component/mvp/model/TypeData;->getData()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_b
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_c

    goto :goto_c

    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    :cond_d
    :goto_c
    const/4 v4, 0x1

    :goto_d
    if-eqz v4, :cond_e

    .line 49
    iget-object v4, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->desTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/guochao/component/mvp/R$string;->mvp_get_small_tips_no_set:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 50
    :cond_e
    iget-object v4, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->desTV:Landroid/widget/TextView;

    .line 51
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/guochao/component/mvp/R$string;->mvp_get_small_tips_set_user_id:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v10, :cond_f

    invoke-virtual {v10}, Lcom/guochao/component/mvp/model/TypeData;->getData()Ljava/lang/String;

    move-result-object v10

    goto :goto_e

    :cond_f
    const/4 v10, 0x0

    .line 53
    :goto_e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 54
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_f
    iget-object v4, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->isGet(Lcom/guochao/component/mvp/model/GiftModel;)Z

    move-result v9

    xor-int/2addr v8, v9

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->isGet(Lcom/guochao/component/mvp/model/GiftModel;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 57
    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v8, Lcom/guochao/component/mvp/R$string;->mvp_gift_useed:I

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 58
    :cond_10
    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v8, Lcom/guochao/component/mvp/R$string;->mvp_gift_un_use:I

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_10
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_11

    :cond_11
    const/4 v4, 0x0

    :goto_11
    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v3

    iget-object v8, v3, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    new-instance v11, Lcom/guochao/component/mvp/fragment/x;

    invoke-direct {v11, v7, v1, v2, v0}, Lcom/guochao/component/mvp/fragment/x;-><init>(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    goto/16 :goto_18

    .line 61
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    .line 62
    iget-object v3, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftIV:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v3, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftIV:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    :cond_12
    const/4 v7, 0x0

    :goto_12
    invoke-virtual {v3, v7}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    .line 64
    iget-object v3, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftIV:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 65
    iget-object v1, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/guochao/component/mvp/R$string;->mvp_get_title_tips_bullet:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->desTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/guochao/component/mvp/R$string;->mvp_get_small_tips_bullet:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/guochao/component/mvp/R$string;->mvp_gift_have:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_18

    .line 69
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    iget-object v4, v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    .line 70
    iget-object v7, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftIV:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v7, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftIV:Landroid/widget/ImageView;

    invoke-static {v7}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getLogo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/g;

    iget-object v9, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftIV:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v7

    if-eq v7, v8, :cond_17

    const/4 v9, 0x2

    if-eq v7, v9, :cond_16

    const/4 v9, 0x3

    if-eq v7, v9, :cond_15

    const/4 v9, 0x4

    if-eq v7, v9, :cond_14

    .line 73
    iget-object v7, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_13

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/TypeData;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    :cond_13
    const/4 v5, 0x0

    :goto_13
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 74
    :cond_14
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_get_title_tips_badge:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->desTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_get_small_tips_badge:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 76
    :cond_15
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_get_title_tips_chat:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->desTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_get_small_tips_chat:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 78
    :cond_16
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_get_title_tips_head:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->desTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_get_small_tips_head:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 80
    :cond_17
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_get_title_tips_car:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->desTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_get_small_tips_car:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_14
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->isGet(Lcom/guochao/component/mvp/model/GiftModel;)Z

    move-result v7

    xor-int/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->isGet(Lcom/guochao/component/mvp/model/GiftModel;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 84
    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/guochao/component/mvp/R$string;->mvp_gift_geted:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 85
    :cond_18
    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/guochao/component/mvp/R$string;->mvp_gift_get:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    iget-object v7, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/guochao/component/mvp/fragment/u;

    invoke-direct {v10, v4, v1, v0}, Lcom/guochao/component/mvp/fragment/u;-><init>(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    goto/16 :goto_18

    .line 87
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    .line 88
    iget-object v7, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->smallIV:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v7, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_19

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v5

    goto :goto_16

    :cond_19
    const/4 v5, 0x0

    :goto_16
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->desTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_get_small_tips_diamond:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->isGet(Lcom/guochao/component/mvp/model/GiftModel;)Z

    move-result v7

    xor-int/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 92
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftBgFL:Landroid/widget/FrameLayout;

    sget v7, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_gift_diamond:I

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 93
    iget-object v5, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->giftIV:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->isGet(Lcom/guochao/component/mvp/model/GiftModel;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 95
    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/guochao/component/mvp/R$string;->mvp_gift_geted:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 96
    :cond_1a
    iget-object v2, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/guochao/component/mvp/R$string;->mvp_gift_get:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListViewHolder;->getViewBinding()Lcom/guochao/component/mvp/databinding/ItemGiftBinding;

    move-result-object v2

    iget-object v7, v2, Lcom/guochao/component/mvp/databinding/ItemGiftBinding;->getTV:Landroid/widget/TextView;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    iget-object v2, v0, Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;->this$0:Lcom/guochao/component/mvp/fragment/MVPListFragment;

    new-instance v10, Lcom/guochao/component/mvp/fragment/v;

    invoke-direct {v10, v2, v1, v0}, Lcom/guochao/component/mvp/fragment/v;-><init>(Lcom/guochao/component/mvp/fragment/MVPListFragment;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/MVPListFragment$MVPListAdapter;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    :goto_18
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isGet(Lcom/guochao/component/mvp/model/GiftModel;)Z
    .locals 2
    .param p1    # Lcom/guochao/component/mvp/model/GiftModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/model/TypeData;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/TypeData;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
