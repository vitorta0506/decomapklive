.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;
.super Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;,
        Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0018\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u0012\u0010\u001d\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;",
        "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;",
        "()V",
        "isAdmin",
        "",
        "viewBinding",
        "Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;)V",
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
        "obtainMenus",
        "",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;",
        "voiceRoomInfoModel",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "onCreate",
        "Companion",
        "SettingMenuAdapter",
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
.field public static final Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private isAdmin:Z

.field public viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$viewModel$2;

    invoke-direct {v1, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$viewModel$2;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->initView$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

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

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-object v0
.end method

.method private static final initView$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;->recentRV:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->obtainMenus(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;

    invoke-direct {v3, p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    invoke-direct {v1, v2, v3}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static final newInstance(Z)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->Companion:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$Companion;->newInstance(Z)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    move-result-object p0

    return-object p0
.end method

.method private final obtainMenus(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v9, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    .line 3
    sget v3, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_audio_effect:I

    .line 4
    sget v4, Lcom/guochao/component/liveroom/R$string;->live_sound_effect:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, v9

    .line 5
    invoke-direct/range {v2 .. v8}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;-><init>(IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    .line 8
    sget v11, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_manager:I

    .line 9
    sget v12, Lcom/guochao/component/liveroom/R$string;->management:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    move-object v10, v2

    .line 10
    invoke-direct/range {v10 .. v16}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;-><init>(IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-boolean v2, v0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->isAdmin:Z

    if-nez v2, :cond_6

    .line 13
    new-instance v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    .line 14
    sget v4, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_mic_mode:I

    .line 15
    sget v5, Lcom/guochao/component/liveroom/R$string;->voice_room_mic_mode:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroType()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    sget v3, Lcom/guochao/component/liveroom/R$string;->voice_room_members:I

    goto :goto_1

    .line 17
    :cond_1
    sget v3, Lcom/guochao/component/liveroom/R$string;->voice_room_all:I

    .line 18
    :goto_1
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v2

    .line 19
    invoke-direct/range {v3 .. v9}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;-><init>(IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    .line 22
    sget v13, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_enter_fee:I

    .line 23
    sget v14, Lcom/guochao/component/liveroom/R$string;->member_fee_title:I

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMemberPrice()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object v12, v2

    .line 25
    invoke-direct/range {v12 .. v18}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;-><init>(IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    .line 28
    sget v4, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_more_select_private_mode:I

    if-eqz p1, :cond_3

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getNature()I

    move-result v5

    if-ne v5, v10, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_4

    sget v5, Lcom/guochao/component/liveroom/R$string;->voice_room_mic_private:I

    goto :goto_4

    .line 30
    :cond_4
    sget v5, Lcom/guochao/component/liveroom/R$string;->voice_room_mic_public:I

    :goto_4
    if-eqz p1, :cond_5

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getNature()I

    move-result v6

    if-ne v6, v10, :cond_5

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    .line 32
    :goto_5
    invoke-direct {v2, v4, v5, v3, v10}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;-><init>(IILjava/lang/String;Z)V

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    .line 35
    sget v12, Lcom/guochao/component/liveroom/R$drawable;->ic_voice_room_settings:I

    .line 36
    sget v13, Lcom/guochao/component/liveroom/R$string;->setting_text:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    move-object v11, v2

    .line 37
    invoke-direct/range {v11 .. v17}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;-><init>(IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v1
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->getViewModel()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/guochao/component/voiceliveroom/fragment/f0;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/fragment/f0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "isAdmin"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->isAdmin:Z

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->viewBinding:Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;

    return-void
.end method
