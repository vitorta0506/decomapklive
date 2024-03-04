.class public final Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u000c\u0012\n0\u0003R\u00060\u0000R\u00020\u00040\u00012\u00020\u0005:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0006J \u0010\u0007\u001a\u00020\u00082\u000e\u0010\t\u001a\n0\u0003R\u00060\u0000R\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0014\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;",
        "(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;)V",
        "convert",
        "",
        "holder",
        "item",
        "ViewerRoomHolder",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;

    const v0, 0x7f0d03a0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 2
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/view/WrapLoadMoreView;

    invoke-direct {v1}, Lcom/guochao/component/voiceliveroom/view/WrapLoadMoreView;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setEnableLoadMore(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setAutoLoadMore(Z)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/k;

    invoke-direct {v0, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$Companion;

    .line 2
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;->access$getViewModel(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const-string v0, ""

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    move-object p3, v0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 4
    :goto_0
    invoke-virtual {p2, p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "people"

    invoke-virtual {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;->_init_$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public addLoadMoreModule(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)",
            "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/LoadMoreModule$DefaultImpls;->addLoadMoreModule(Lcom/chad/library/adapter/base/module/LoadMoreModule;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;

    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;->convert(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;)V

    return-void
.end method

.method protected convert(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a00f0

    .line 2
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;->getSmallImg()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>()V

    const v3, 0x7f0f0089

    .line 4
    invoke-static {v0, v1, v3, v2}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    const v0, 0x7f0a086b

    .line 5
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;->getDressHead()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method
