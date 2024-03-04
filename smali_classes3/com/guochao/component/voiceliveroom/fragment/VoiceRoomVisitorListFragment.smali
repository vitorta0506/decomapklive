.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;
.super Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$Companion;,
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;,
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001c2\u00020\u0001:\u0003\u001c\u001d\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u001aH\u0014R\u0015\u0010\u0003\u001a\u00060\u0004R\u00020\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR$\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000f\u0010\u0002\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u000c\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;",
        "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;",
        "()V",
        "mAdapter",
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;",
        "getMAdapter",
        "()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;",
        "seatViewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "getSeatViewModel",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "seatViewModel$delegate",
        "Lkotlin/Lazy;",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;)V",
        "viewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;",
        "getViewModel",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;",
        "viewModel$delegate",
        "initListener",
        "",
        "loadDataAndObserve",
        "Companion",
        "PeopleAdapter",
        "PeopleViewHolder",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final seatViewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 3
    iput-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$seatViewModel$2;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$seatViewModel$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->seatViewModel$delegate:Lkotlin/Lazy;

    .line 5
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V

    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v1

    new-instance v2, Lcom/guochao/component/voiceliveroom/fragment/j1;

    invoke-direct {v2, p0}, Lcom/guochao/component/voiceliveroom/fragment/j1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lx0/j;)V

    .line 7
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->loadDataAndObserve$lambda-6$lambda-5(Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->loadDataAndObserve$lambda-6(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->initListener$lambda-4(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->mAdapter$lambda-1$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->initListener$lambda-3$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V

    return-void
.end method

.method private final getSeatViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->seatViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object v0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    return-object v0
.end method

.method private static final initListener$lambda-3$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel$default(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    move-object v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->loadVisitorList$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;ZIILjava/lang/Object;)V

    return-void
.end method

.method private static final initListener$lambda-4(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object p1

    const-string p2, "/app/user_home_page"

    invoke-virtual {p1, p2}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getUserId()Ljava/lang/String;

    move-result-object p0

    const-string p2, "userId"

    invoke-virtual {p1, p2, p0}, Lcom/alibaba/android/arouter/facade/Postcard;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    return-void
.end method

.method private static final loadDataAndObserve$lambda-6(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;->getList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    .line 3
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getSeatViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getViewerCount()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;->getTotal()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget v2, Lcom/guochao/component/liveroom/R$string;->voice_room_visitor_title:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#6365FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getSeatViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getViewerCount()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;->swipe:Lcom/guochao/faceshow/aaspring/views/GCSwipeRefreshView;

    invoke-virtual {v0, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;->getList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;->getTotal()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v4, v1, v2}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd$default(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;ZILjava/lang/Object;)V

    .line 12
    :goto_2
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getSeatViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getViewerCount()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-gtz v0, :cond_5

    .line 13
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getSeatViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    const/16 v1, 0x14

    const/4 v3, 0x2

    invoke-static {v0, v1, v4, v3, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->loadViewerList$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;IZILjava/lang/Object;)V

    .line 14
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getSeatViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getViewerCount()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/g1;

    invoke-direct {v1, p1, p0}, Lcom/guochao/component/voiceliveroom/fragment/g1;-><init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_5
    return-void
.end method

.method private static final loadDataAndObserve$lambda-6$lambda-5(Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;->getTotal()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p0, Lcom/guochao/component/liveroom/R$string;->voice_room_visitor_title:I

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#6365FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x0

    const/16 v2, 0x21

    .line 4
    invoke-virtual {v0, p0, v1, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final mAdapter$lambda-1$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v0}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel$default(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    move-object v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->loadVisitorList$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;ZIILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getMAdapter()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initListener()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;->initListener()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;->swipe:Lcom/guochao/faceshow/aaspring/views/GCSwipeRefreshView;

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/h1;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/fragment/h1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/i1;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/fragment/i1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    return-void
.end method

.method protected loadDataAndObserve()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;->loadDataAndObserve()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel$default(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->loadVisitorList$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;ZIILjava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->getVisitorList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/f1;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/fragment/f1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;

    return-void
.end method
