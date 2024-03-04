.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;
.super Lcom/guochao/component/voiceliveroom/fragment/FullWidthCenterFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u0012\u0010\u001a\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;",
        "Lcom/guochao/component/voiceliveroom/fragment/FullWidthCenterFragment;",
        "()V",
        "loadConf",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;)V",
        "viewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "getViewModel",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "createCenterDialog",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
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
.field public static final Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private loadConf:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthCenterFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$viewModel$2;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$viewModel$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->initView$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->initView$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setLoadConf$p(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->loadConf:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object v0
.end method

.method private static final initView$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;Landroid/view/View;)V
    .locals 11

    const-string p1, "format(format, *args)"

    const-string v0, "getString(R.string.voice_room_fee_reasonable)"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->loadConf:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x2d

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;->feeET:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->loadConf:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;->getJoinRoomMin()I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-lt v4, v5, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;->feeET:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->loadConf:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;->getJoinRoomMax()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-gt v4, v5, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;->feeET:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 6
    new-instance v6, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$initView$3$1;

    invoke-direct {v6, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$initView$3$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;)V

    new-instance v7, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$initView$3$2;

    invoke-direct {v7, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$initView$3$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;)V

    invoke-static {p0, v6, v7}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt;->callbackOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    move-result-object v6

    .line 7
    invoke-virtual {v4, v5, v6}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->changeRoomFee(ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    goto/16 :goto_6

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 9
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 10
    sget v4, Lcom/guochao/component/liveroom/R$string;->voice_room_fee_reasonable:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v2, [Ljava/lang/Object;

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->loadConf:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;->getJoinRoomMin()I

    move-result v8

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->loadConf:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;->getJoinRoomMax()I

    move-result v8

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 12
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 13
    invoke-static/range {v5 .. v10}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v4

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 15
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 16
    sget v6, Lcom/guochao/component/liveroom/R$string;->voice_room_fee_reasonable:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Object;

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->loadConf:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;->getJoinRoomMin()I

    move-result v8

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->loadConf:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;->getJoinRoomMax()I

    move-result p0

    goto :goto_5

    :cond_7
    const/4 p0, 0x0

    :goto_5
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    .line 18
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v6, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 19
    invoke-static/range {v5 .. v10}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 20
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void
.end method

.method public static final newInstance(Ljava/lang/Integer;)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;
    .locals 1
    .param p0    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$Companion;->newInstance(Ljava/lang/Integer;)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object v0

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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
    invoke-super {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthCenterFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;->closeIV:Landroid/widget/ImageView;

    const-string p1, "viewBinding.closeIV"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/r;

    invoke-direct {v3, p0}, Lcom/guochao/component/voiceliveroom/fragment/r;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;->feeET:Landroid/widget/EditText;

    const-string p2, "viewBinding.feeET"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$initView$$inlined$addTextChangedListener$default$1;

    invoke-direct {p2, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$initView$$inlined$addTextChangedListener$default$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;->feeET:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "fee"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;->okTV:Landroid/widget/TextView;

    const-string p1, "viewBinding.okTV"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/q;

    invoke-direct {v3, p0}, Lcom/guochao/component/voiceliveroom/fragment/q;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthCenterFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$onCreate$1;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$onCreate$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;)V

    sget-object v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$onCreate$2;->INSTANCE:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$onCreate$2;

    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt;->callbackOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomFeeConf(Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;

    return-void
.end method
