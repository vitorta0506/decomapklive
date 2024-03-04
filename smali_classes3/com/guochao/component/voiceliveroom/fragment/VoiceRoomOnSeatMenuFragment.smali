.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;
.super Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001a\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;",
        "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;",
        "()V",
        "user",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;)V",
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
.field public static final Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private user:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$viewModel$2;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$viewModel$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->initView$lambda-4$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->initView$lambda-4$lambda-3(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->initView$lambda-4$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->initView$lambda-4$lambda-1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getUser$p(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->user:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object v0
.end method

.method private static final initView$lambda-4$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-4$lambda-1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->user:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->user:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->user:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->showPeopleInfoCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-4$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$3$1;

    invoke-direct {p1, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$3$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)V

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel(Lkotlin/jvm/functions/Function1;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    return-void
.end method

.method private static final initView$lambda-4$lambda-3(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1;

    invoke-direct {p1, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)V

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->requireGCLiveRoomModel(Lkotlin/jvm/functions/Function1;)Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    return-void
.end method

.method public static final newInstance(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;
    .locals 1
    .param p0    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$Companion;->newInstance(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
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
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->user:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatStatus()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;->mute:Lcom/google/android/material/button/MaterialButton;

    sget p2, Lcom/guochao/component/liveroom/R$string;->voice_room_mute_self_remove:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;->mute:Lcom/google/android/material/button/MaterialButton;

    sget p2, Lcom/guochao/component/liveroom/R$string;->voice_room_mute_self:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;

    move-result-object p1

    .line 6
    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;->cancel:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "cancel"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/q0;

    invoke-direct {v3, p0}, Lcom/guochao/component/voiceliveroom/fragment/q0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 7
    iget-object v6, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;->myCard:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "myCard"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    new-instance v9, Lcom/guochao/component/voiceliveroom/fragment/t0;

    invoke-direct {v9, p0}, Lcom/guochao/component/voiceliveroom/fragment/t0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 8
    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;->leaveSeat:Lcom/google/android/material/button/MaterialButton;

    const-string p2, "leaveSeat"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/s0;

    invoke-direct {v3, p0}, Lcom/guochao/component/voiceliveroom/fragment/s0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 9
    iget-object v6, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;->mute:Lcom/google/android/material/button/MaterialButton;

    const-string p1, "mute"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/guochao/component/voiceliveroom/fragment/r0;

    invoke-direct {v9, p0}, Lcom/guochao/component/voiceliveroom/fragment/r0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)V

    invoke-static/range {v6 .. v11}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->user:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

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

.method public final setViewBinding(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;

    return-void
.end method
