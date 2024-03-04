.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;
.super Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;,
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;,
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \"2\u00020\u0001:\u0003\"#$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u001aH\u0014J\u0008\u0010\u001c\u001a\u00020\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u001aH\u0002J\u0008\u0010!\u001a\u00020\u001aH\u0002R\u0012\u0010\u0003\u001a\u00060\u0004R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000f\u0010\u0002\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\n\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006%"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;",
        "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;",
        "()V",
        "mAdapter",
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;",
        "memberViewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;",
        "getMemberViewModel",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;",
        "memberViewModel$delegate",
        "Lkotlin/Lazy;",
        "roleType",
        "",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;)V",
        "viewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "getViewModel",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "viewModel$delegate",
        "initListener",
        "",
        "loadDataAndObserve",
        "loadMember",
        "onHiddenChanged",
        "hidden",
        "",
        "showMemberList",
        "showQuitTips",
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
.field public static final Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final memberViewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private roleType:I

.field public viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$viewModel$2;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$viewModel$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 3
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$memberViewModel$2;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$memberViewModel$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->memberViewModel$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;

    const/16 v0, 0x1e

    .line 5
    iput v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->roleType:I

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->initListener$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->loadDataAndObserve$lambda-13(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->loadDataAndObserve$lambda-14(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->initListener$lambda-6(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->initListener$lambda-1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic U1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->loadDataAndObserve$lambda-11(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method

.method public static synthetic V1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->initListener$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getMemberViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getMemberViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final getMemberViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->memberViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    return-object v0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object v0
.end method

.method private static final initListener$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->showMemberList()V

    return-void
.end method

.method private static final initListener$lambda-1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "adapter"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->showMemberList()V

    return-void
.end method

.method private static final initListener$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->roleType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getMemberViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;->showJoinTips(Landroidx/fragment/app/Fragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->showQuitTips()V

    goto :goto_0

    .line 4
    :cond_2
    sget-object p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$Companion;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$Companion;->newInstance()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "parentFragmentManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setting"

    invoke-virtual {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final initListener$lambda-6(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Landroid/view/View;)V
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object p1

    const-string v0, "/app/gc_report"

    invoke-virtual {p1, v0}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/guochao/lib_service_center/report/service/ReportProxy;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/guochao/lib_service_center/report/service/ReportProxy;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v0, p1

    .line 4
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string p0, "it2"

    .line 7
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v4, "17"

    move-object v2, v3

    .line 8
    invoke-interface/range {v0 .. v6}, Lcom/guochao/lib_service_center/report/service/ReportProxy;->start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_1
    return-void
.end method

.method private static final loadDataAndObserve$lambda-11(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->headerIV:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    .line 3
    invoke-static {v0, v1, v2}, Lhc/a;->s(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->titleTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->roomIdTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoleType()I

    move-result v0

    iput v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->roleType:I

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->joinTV:Landroid/widget/TextView;

    .line 9
    sget v2, Lcom/guochao/lib_base/R$color;->white:I

    .line 10
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->joinLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoleType()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->iconIV:Landroid/widget/ImageView;

    sget v1, Lcom/guochao/component/liveroom/R$mipmap;->ic_voice_room_big_info_card_add:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->joinTV:Landroid/widget/TextView;

    sget v1, Lcom/guochao/component/liveroom/R$string;->voice_room_setting_add:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMemberPrice()I

    move-result v0

    if-nez v0, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->moneyLL:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->moneyLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->moneyTV:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMemberPrice()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->iconIV:Landroid/widget/ImageView;

    sget v0, Lcom/guochao/component/liveroom/R$mipmap;->ic_voice_room_big_info_card_added:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->joinTV:Landroid/widget/TextView;

    sget v0, Lcom/guochao/component/liveroom/R$string;->voice_room_setting_added:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->joinTV:Landroid/widget/TextView;

    .line 24
    sget v1, Lcom/guochao/component/liveroom/R$color;->gray_65657A:I

    .line 25
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->moneyLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->joinLL:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0

    .line 29
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->iconIV:Landroid/widget/ImageView;

    sget v0, Lcom/guochao/component/liveroom/R$mipmap;->ic_voice_room_big_info_card_setting:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->joinTV:Landroid/widget/TextView;

    sget v0, Lcom/guochao/component/liveroom/R$string;->voice_room_setting:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->moneyLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 32
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->reportIV:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private static final loadDataAndObserve$lambda-13(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Ljava/util/List;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;

    if-eqz p1, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    .line 4
    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getItemType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method

.method private static final loadDataAndObserve$lambda-14(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;Ljava/lang/Integer;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->countTV:Landroid/widget/TextView;

    .line 2
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget v1, Lcom/guochao/component/liveroom/R$string;->voice_room_members_num:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(R.string.voice_room_members_num)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final loadMember()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getMemberViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7fffffff

    invoke-virtual {v1, v0, v2, v3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->loadMemberList(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public static final newInstance()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;->newInstance()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;

    move-result-object v0

    return-object v0
.end method

.method public static final showJoinTips(Landroidx/fragment/app/Fragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;->showJoinTips(Landroidx/fragment/app/Fragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)V

    return-void
.end method

.method private final showMemberList()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoleType()I

    move-result v1

    .line 3
    sget-object v2, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$Companion;

    invoke-virtual {v2, v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$Companion;->newInstance(Ljava/lang/String;I)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parentFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "memberList"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final showQuitTips()V
    .locals 5

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v1, Lcom/guochao/component/liveroom/R$string;->member_content1_cancel:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    sget v3, Lcom/guochao/component/liveroom/R$string;->voice_room_remove_room_title1:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.voice_room_remove_room_title1)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object v2

    .line 4
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$showQuitTips$1$1;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$showQuitTips$1$1;

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$showQuitTips$1$2;

    invoke-direct {v3, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$showQuitTips$1$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initListener()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;->initListener()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getMemberViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object v0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->setVoiceRoomSeatControllerViewModel(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->recentRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->memberRL:Landroid/widget/RelativeLayout;

    const-string v0, "viewBinding.memberRL"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/guochao/component/voiceliveroom/fragment/c;

    invoke-direct {v4, p0}, Lcom/guochao/component/voiceliveroom/fragment/c;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->mAdapter:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/i;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/fragment/i;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->joinLL:Landroid/widget/LinearLayout;

    const-string v0, "viewBinding.joinLL"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/guochao/component/voiceliveroom/fragment/e;

    invoke-direct {v4, p0}, Lcom/guochao/component/voiceliveroom/fragment/e;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;->reportIV:Landroid/widget/ImageView;

    const-string v0, "viewBinding.reportIV"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/guochao/component/voiceliveroom/fragment/d;

    invoke-direct {v4, p0}, Lcom/guochao/component/voiceliveroom/fragment/d;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method protected loadDataAndObserve()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;->loadDataAndObserve()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/guochao/component/voiceliveroom/fragment/f;

    invoke-direct {v2, p0}, Lcom/guochao/component/voiceliveroom/fragment/f;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->loadMember()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getMemberViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->getMemberList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/guochao/component/voiceliveroom/fragment/h;

    invoke-direct {v2, p0}, Lcom/guochao/component/voiceliveroom/fragment/h;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->getMemberViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->getMemberNum()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/guochao/component/voiceliveroom/fragment/g;

    invoke-direct {v2, p0}, Lcom/guochao/component/voiceliveroom/fragment/g;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->loadMember()V

    :cond_0
    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;

    return-void
.end method
