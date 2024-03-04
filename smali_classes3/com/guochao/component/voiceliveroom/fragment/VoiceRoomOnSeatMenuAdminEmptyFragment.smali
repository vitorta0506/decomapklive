.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;
.super Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0012\u0010\u001d\u001a\u00020\u00182\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001e\u001a\u00020\u001f2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006#"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;",
        "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;",
        "()V",
        "isLock",
        "",
        "roomId",
        "",
        "seatIndex",
        "",
        "Ljava/lang/Integer;",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;)V",
        "viewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "getViewModel",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onViewCreated",
        "view",
        "Companion",
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
.field public static final Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private isLock:Z

.field private roomId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private seatIndex:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$viewModel$2;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$viewModel$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->initView$lambda-3$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->initView$lambda-3$lambda-1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->initView$lambda-3$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getRoomId$p(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->roomId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSeatIndex$p(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->seatIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isLock$p(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->isLock:Z

    return p0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object v0
.end method

.method private static final initView$lambda-3$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-3$lambda-1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$2$1;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$2$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-3$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$3$1;

    invoke-direct {p1, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$3$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)V

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel(Lkotlin/jvm/functions/Function1;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;IZ)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$Companion;->newInstance(Ljava/lang/String;IZ)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;

    move-result-object p1

    .line 3
    iget-boolean p2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->isLock:Z

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;->lockBT:Lcom/google/android/material/button/MaterialButton;

    sget v0, Lcom/guochao/component/liveroom/R$string;->voice_room_lock_seat:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;->cancel:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "cancel"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/guochao/component/voiceliveroom/fragment/p0;

    invoke-direct {v4, p0}, Lcom/guochao/component/voiceliveroom/fragment/p0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 6
    iget-object v7, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;->linkBT:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "linkBT"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/guochao/component/voiceliveroom/fragment/o0;

    invoke-direct {v10, p0}, Lcom/guochao/component/voiceliveroom/fragment/o0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 7
    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;->lockBT:Lcom/google/android/material/button/MaterialButton;

    const-string p1, "lockBT"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/n0;

    invoke-direct {v3, p0}, Lcom/guochao/component/voiceliveroom/fragment/n0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "roomId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->roomId:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "roomSeatIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->seatIndex:Ljava/lang/Integer;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "isLock"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->isLock:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    .line 3
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    const/16 p2, 0x50

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 5
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;

    return-void
.end method
