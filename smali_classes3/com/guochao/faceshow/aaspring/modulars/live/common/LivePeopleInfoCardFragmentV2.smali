.class public final Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/lib_service_center/userinfo/UserInfoCardProxy;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/user_info_card"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 V2\u00020\u00012\u00020\u0002:\u0001VB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010>\u001a\u00020?2\u0006\u0010!\u001a\u00020\"H\u0002J\u0008\u0010@\u001a\u00020)H\u0016J\u0008\u0010A\u001a\u00020?H\u0002J\u0012\u0010B\u001a\u00020?2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0016J\u0008\u0010E\u001a\u00020?H\u0016J\u0012\u0010F\u001a\u00020?2\u0008\u0010G\u001a\u0004\u0018\u00010\u0005H\u0017J\u0008\u0010H\u001a\u00020?H\u0016J\u0012\u0010I\u001a\u00020?2\u0008\u0010J\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010K\u001a\u00020?2\u0006\u0010G\u001a\u00020\u00052\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0016J\u0008\u0010N\u001a\u00020?H\u0014J\u0010\u0010O\u001a\u00020?2\u0006\u0010!\u001a\u00020\"H\u0002J\u0018\u0010P\u001a\u00020?2\u0006\u0010Q\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\"H\u0002J9\u0010R\u001a\u00020?2\u0006\u0010C\u001a\u00020S2\u0006\u0010-\u001a\u00020$2\u0006\u0010#\u001a\u00020$2\u0008\u0010;\u001a\u0004\u0018\u00010$2\u0008\u0010T\u001a\u0004\u0018\u00010)H\u0016\u00a2\u0006\u0002\u0010UR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000f\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u000f\u001a\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0007\"\u0004\u0008\u001d\u0010\tR\u001e\u0010\u001e\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0007\"\u0004\u0008 \u0010\tR\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010#\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u000f\u001a\u0004\u0008%\u0010&R\u001b\u0010(\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\u000f\u001a\u0004\u0008*\u0010+R\u001b\u0010-\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010\u000f\u001a\u0004\u0008.\u0010&R\u001e\u00100\u001a\u0002018\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001b\u00106\u001a\u0002078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010\u000f\u001a\u0004\u00088\u00109R\u001b\u0010;\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008=\u0010\u000f\u001a\u0004\u0008<\u0010&\u00a8\u0006W"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;",
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;",
        "Lcom/guochao/lib_service_center/userinfo/UserInfoCardProxy;",
        "()V",
        "bottomButtonArea",
        "Landroid/view/View;",
        "getBottomButtonArea",
        "()Landroid/view/View;",
        "setBottomButtonArea",
        "(Landroid/view/View;)V",
        "controllerViewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "getControllerViewModel",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "controllerViewModel$delegate",
        "Lkotlin/Lazy;",
        "focused",
        "",
        "fromSeat",
        "getFromSeat",
        "()Z",
        "fromSeat$delegate",
        "memberViewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;",
        "getMemberViewModel",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;",
        "memberViewModel$delegate",
        "micArea",
        "getMicArea",
        "setMicArea",
        "micStatus",
        "getMicStatus",
        "setMicStatus",
        "model",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;",
        "roomId",
        "",
        "getRoomId",
        "()Ljava/lang/String;",
        "roomId$delegate",
        "seatIndex",
        "",
        "getSeatIndex",
        "()I",
        "seatIndex$delegate",
        "userId",
        "getUserId",
        "userId$delegate",
        "userRoleView",
        "Landroid/widget/TextView;",
        "getUserRoleView",
        "()Landroid/widget/TextView;",
        "setUserRoleView",
        "(Landroid/widget/TextView;)V",
        "viewModel",
        "Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;",
        "viewModel$delegate",
        "voiceId",
        "getVoiceId",
        "voiceId$delegate",
        "checkPermission",
        "",
        "getLayoutId",
        "getUserInfo",
        "init",
        "context",
        "Landroid/content/Context;",
        "loadData2",
        "menuButtonClick",
        "view",
        "onResume",
        "onViewClicked",
        "v",
        "onViewCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "refreshUserType",
        "setData",
        "showAdminArea",
        "show",
        "start",
        "Landroidx/fragment/app/FragmentActivity;",
        "seat",
        "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public bottomButtonArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final controllerViewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private focused:Z

.field private final fromSeat$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final memberViewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public micArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public micStatus:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private model:Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final roomId$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final seatIndex$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userId$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public userRoleView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final voiceId$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$viewModel$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$viewModel$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->viewModel$delegate:Lkotlin/Lazy;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$controllerViewModel$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$controllerViewModel$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->controllerViewModel$delegate:Lkotlin/Lazy;

    .line 4
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->memberViewModel$delegate:Lkotlin/Lazy;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$roomId$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$roomId$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->roomId$delegate:Lkotlin/Lazy;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$userId$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$userId$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->userId$delegate:Lkotlin/Lazy;

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$voiceId$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$voiceId$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->voiceId$delegate:Lkotlin/Lazy;

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$seatIndex$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$seatIndex$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->seatIndex$delegate:Lkotlin/Lazy;

    .line 10
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$fromSeat$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$fromSeat$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->fromSeat$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->showAdminArea$lambda-9(Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->showAdminArea$lambda-8(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->showAdminArea$lambda-11(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->showAdminArea$lambda-10(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->setData$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getControllerViewModel(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getControllerViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMemberViewModel(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getMemberViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRoomId(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getRoomId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSeatIndex(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)I
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getSeatIndex()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getViewModel(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVoiceId(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getVoiceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setData(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->setData(Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    return-void
.end method

.method public static final synthetic access$setFocused$p(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->focused:Z

    return-void
.end method

.method private final checkPermission(Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.component.liveroom.model.GCVoiceLiveRoomModel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserRoles()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_9

    const/16 v5, 0xa

    if-eq v1, v5, :cond_6

    const/16 v5, 0x14

    if-eq v1, v5, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getUserRoleView()Landroid/widget/TextView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-interface {v0}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->isVoiceRoomOwner()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->isVoiceRoomAdministrator()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v4, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->showAdminArea(ZLcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    goto/16 :goto_5

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->showAdminArea(ZLcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    goto/16 :goto_5

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getUserRoleView()Landroid/widget/TextView;

    move-result-object v1

    const v5, 0x7f120a67

    .line 8
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080303

    .line 11
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 12
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_3
    move-object v5, v3

    .line 13
    :goto_1
    invoke-virtual {v1, v5, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 14
    invoke-interface {v0}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->isVoiceRoomOwner()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->isVoiceRoomAdministrator()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    invoke-direct {p0, v4, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->showAdminArea(ZLcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    goto/16 :goto_5

    .line 16
    :cond_5
    :goto_2
    invoke-direct {p0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->showAdminArea(ZLcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    goto :goto_5

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getUserRoleView()Landroid/widget/TextView;

    move-result-object v1

    const v5, 0x7f12047b

    .line 18
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080302

    .line 21
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 22
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    :cond_7
    move-object v5, v3

    .line 23
    :goto_3
    invoke-virtual {v1, v5, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 24
    invoke-interface {v0}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->isVoiceRoomOwner()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-direct {p0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->showAdminArea(ZLcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    goto :goto_5

    .line 26
    :cond_8
    invoke-direct {p0, v4, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->showAdminArea(ZLcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    goto :goto_5

    .line 27
    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getUserRoleView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120a51

    .line 28
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080304

    .line 31
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 32
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v4, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    :cond_a
    move-object v1, v3

    .line 33
    :goto_4
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-direct {p0, v4, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->showAdminArea(ZLcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    :goto_5
    return-void
.end method

.method private final getControllerViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->controllerViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object v0
.end method

.method private final getFromSeat()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->fromSeat$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getMemberViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->memberViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    return-object v0
.end method

.method private final getRoomId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->roomId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-roomId>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getSeatIndex()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->seatIndex$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getUserId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->userId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-userId>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getUserInfo()V
    .locals 5

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;

    move-result-object v0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getUserId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$getUserInfo$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$getUserInfo$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;->loadUserInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final getViewModel()Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;

    return-object v0
.end method

.method private final getVoiceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->voiceId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-voiceId>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

    move-result-object p0

    return-object p0
.end method

.method private final setData(Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->userInfoLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->model:Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserName:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserIdView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mFCoins:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getBCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mFansCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getFansNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mSentCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getDiamondCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->h(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mGenderAndSexView:Landroid/view/View;

    invoke-direct {v0, v2, v1, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;ZZ)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->a(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->cmdArea:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getBottomButtonArea()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getBottomButtonArea()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAttentionStatus()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getAttentionStatus()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->focused:Z

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->setFocused(Z)V

    .line 16
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->checkPermission(Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    .line 17
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focus:Landroid/view/View;

    const-string v0, "focus"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/live/common/r;

    invoke-direct {v5, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/r;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setData$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->focused:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->setFocused(Z)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$setData$2$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$setData$2$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)V

    .line 6
    invoke-static {p1, p2, v0}, Lib/b;->a(Ljava/lang/String;Landroid/app/Activity;Lhb/b;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 7
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->setFocused(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->LIVE:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$setData$2$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$setData$2$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)V

    .line 11
    invoke-static {p1, p2, v0, v1}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    :goto_0
    return-void
.end method

.method private final showAdminArea(ZLcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V
    .locals 10

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.guochao.component.liveroom.model.GCVoiceLiveRoomModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->cmdArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getControllerViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->findUserOnSeat(Ljava/lang/String;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getMicArea()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f0a077f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/o;

    invoke-direct {v7, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;->isVoiceRoomOwner()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->adminArea:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f0a008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/live/common/s;

    invoke-direct {v5, p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->muteArea:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const v0, 0x7f0a07c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/live/common/q;

    invoke-direct {v5, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/q;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->kickArea:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    const v0, 0x7f0a0609

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/p;

    invoke-direct {v4, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->cmdArea:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final showAdminArea$lambda-10(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Landroid/view/View;)V
    .locals 5

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isBan()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v1, "requireContext()"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 3
    new-instance p2, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    const v3, 0x7f120aa0

    .line 4
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(com.guochao.co\u2026_room_tips_mute_somebody)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p2

    .line 5
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1;

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    invoke-static {p2, v2, v3, v0, v2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 7
    :cond_1
    new-instance p2, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    const v3, 0x7f12050a

    .line 8
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(com.guochao.co\u2026ing.livecanclemutedialog)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p2

    .line 9
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$2;

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    invoke-static {p2, v2, v3, v0, v2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method

.method private static final showAdminArea$lambda-11(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Landroid/view/View;)V
    .locals 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->isKick()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    const v1, 0x7f120a9c

    .line 4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(com.guochao.co\u2026_room_tips_kick_somebody)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p2

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$4$1;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$4$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    const/4 p1, 0x1

    invoke-static {p2, v0, v1, p1, v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "requireContext()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    const p0, 0x7f120a3b

    const/4 p1, 0x0

    const/4 p2, 0x4

    .line 7
    invoke-static {v0, p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method private static final showAdminArea$lambda-8(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    const v0, 0x7f120a9d

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(com.guochao.co\u2026_tips_leave_mic_somebody)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p2

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$1$1;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p2, p1, v0, v1, p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "requireContext()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final showAdminArea$lambda-9(Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Landroid/view/View;)V
    .locals 5

    const-string p2, "$model"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserRoles()I

    move-result p2

    const/16 v0, 0x1e

    if-ne p2, v0, :cond_0

    const p0, 0x7f120aa2

    .line 2
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserRoles()I

    move-result p2

    const/16 v0, 0xa

    const-string v1, "requireContext()"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_1

    .line 4
    new-instance p2, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    const v0, 0x7f120aa1

    .line 5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "getString(com.guochao.co\u2026m_tips_no_admin_somebody)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p2

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$2$1;

    invoke-direct {v0, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$2$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    invoke-static {p2, v3, v0, v2, v3}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;-><init>()V

    const v0, 0x7f120a96

    .line 9
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "getString(com.guochao.co\u2026room_tips_admin_somebody)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->contentText(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p2

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$2$2;

    invoke-direct {v0, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$2$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V

    invoke-static {p2, v3, v0, v2, v3}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->onClick$default(Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;

    move-result-object p0

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/dialog/GCDialog$Builder;->build(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getBottomButtonArea()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->bottomButtonArea:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bottomButtonArea"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d03b3

    return v0
.end method

.method public final getMicArea()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->micArea:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "micArea"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMicStatus()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->micStatus:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "micStatus"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserRoleView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->userRoleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "userRoleView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public loadData2()V
    .locals 0

    return-void
.end method

.method public menuButtonClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->model:Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    const v2, 0x7f0a086d

    const-string v3, ""

    if-nez p1, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_5

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, v3

    .line 5
    :cond_3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getNickName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v0

    .line 6
    :goto_1
    invoke-static {p0, p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/KotlinBridge;->startChatFromLiveRoom(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_5
    :goto_2
    const v2, 0x7f0a086c

    if-nez p1, :cond_6

    goto :goto_4

    .line 7
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_9

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-object v1, v3

    .line 10
    :cond_7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getNickName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move-object v3, v0

    .line 11
    :goto_3
    invoke-interface {p1, v1, v3}, Ld9/e;->onAtSomebody(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    :goto_4
    const v0, 0x7f0a0a5d

    if-nez p1, :cond_a

    goto :goto_7

    .line 12
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_e

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    goto :goto_5

    :cond_b
    move-object p1, v1

    :goto_5
    if-eqz p1, :cond_c

    .line 14
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    goto :goto_6

    :cond_c
    move-object p1, v1

    :goto_6
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz v0, :cond_d

    move-object v1, p1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    :cond_d
    if-eqz v1, :cond_e

    .line 15
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Companion;

    .line 16
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getRoomId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->model:Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;

    const/16 v3, 0x10

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getControllerViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getVoiceId()I

    move-result v4

    .line 18
    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Companion;->newInstance(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/model/GCUser;II)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    move-result-object p1

    .line 19
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "gift"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 20
    :cond_e
    :goto_7
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public bridge synthetic onPlayMusicAnim(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ld9/d;->a(Ld9/e;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getUserInfo()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserId:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getFromSeat()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getMicStatus()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->getMicStatus()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected refreshUserType()V
    .locals 0

    return-void
.end method

.method public final setBottomButtonArea(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->bottomButtonArea:Landroid/view/View;

    return-void
.end method

.method public final setMicArea(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->micArea:Landroid/view/View;

    return-void
.end method

.method public final setMicStatus(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->micStatus:Landroid/view/View;

    return-void
.end method

.method public final setUserRoleView(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->userRoleView:Landroid/widget/TextView;

    return-void
.end method

.method public start(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "roomId"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "voiceId"

    .line 4
    invoke-virtual {v2, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 5
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "seatIndex"

    invoke-virtual {v2, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "share"

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
