.class public final Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000I\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u000c\u001a\u00020\tH\u0002J\u0008\u0010 \u001a\u00020\u001aH\u0002R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000e\u0010\u0002\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006!"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "adapter",
        "com/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1",
        "Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;",
        "broadCasterId",
        "",
        "headerBinding",
        "Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;",
        "isWatcher",
        "",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;)V",
        "viewModel",
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "loadBroadCasterInfo",
        "showReadAllDialog",
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
.field private final adapter:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private broadCasterId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private headerBinding:Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isWatcher:Z

.field public viewBinding:Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)V

    .line 6
    new-instance v1, Lcom/guochao/faceshow/component/live/fragment/q;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/component/live/fragment/q;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->adapter:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->broadCasterId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->initView$lambda-10$lambda-8(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->initView$lambda-5$lambda-4$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->initView$lambda-10(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->adapter$lambda-2$lambda-1(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Landroid/app/Dialog;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->showReadAllDialog$lambda-11(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Landroid/app/Dialog;Z)V

    return-void
.end method

.method public static synthetic U1(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->initView$lambda-6(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getBroadCasterId$p(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->broadCasterId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isWatcher$p(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->isWatcher:Z

    return p0
.end method

.method private static final adapter$lambda-2$lambda-1(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationType()I

    move-result p3

    const/4 v0, 0x3

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity"

    if-ne p3, v0, :cond_6

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p3

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "system_conversation_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v2, "live_im_float_system_conversation_click"

    .line 7
    invoke-virtual {p3, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "system_interaction"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatInteractionFragment;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    .line 11
    invoke-static {p1, p0}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->addFloatFragment(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;)V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "system_official"

    .line 12
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    .line 15
    invoke-static {p1, p0}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->addFloatFragment(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;)V

    goto :goto_1

    :sswitch_2
    const-string v0, "system_focused"

    .line 16
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    new-instance p1, Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatFriendRequestListFragment;-><init>()V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    .line 19
    invoke-static {p1, p0}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->addFloatFragment(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;)V

    goto :goto_1

    :sswitch_3
    const-string v0, "system_hello"

    .line 20
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    .line 21
    :cond_4
    new-instance p1, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;-><init>()V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    .line 23
    invoke-static {p1, p0}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->addFloatFragment(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;)V

    goto :goto_1

    .line 24
    :cond_5
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "_v.context"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->onClick(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    goto :goto_1

    .line 25
    :cond_6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p2

    const-string p3, "live_im_float_conversation_click"

    .line 26
    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 27
    sget-object p2, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->Companion:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;

    .line 28
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "item.conversationId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "item.conversationName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2, p3, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    .line 32
    invoke-static {p1, p0}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->addFloatFragment(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1536b13e -> :sswitch_3
        0x47a0567 -> :sswitch_2
        0x5a075efb -> :sswitch_1
        0x6ce6d002 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    return-object v0
.end method

.method private static final initView$lambda-10(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    if-eqz v0, :cond_10

    .line 2
    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 4
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;->getList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    :goto_2
    instance-of v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v3, :cond_4

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ld9/g;->getCurrentGCLiveRoomModel()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result p0

    if-ne p0, v1, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    .line 6
    :goto_4
    iget-boolean v3, p1, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->isWatcher:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_c

    if-nez p0, :cond_c

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 8
    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 9
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->broadCasterId:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, -0x1

    .line 10
    :goto_6
    new-instance p0, Lcom/guochao/faceshow/component/live/fragment/p;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/live/fragment/p;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)V

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    if-ltz v3, :cond_9

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setOnlineStatus(I)V

    .line 12
    iget-object v1, p1, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->headerBinding:Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    :cond_7
    if-nez p0, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_7

    .line 13
    :cond_9
    iget-object v1, p1, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->headerBinding:Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    :cond_a
    if-nez p0, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_7

    .line 14
    :cond_c
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewNoTextBinding;

    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutEmptyViewNoTextBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 17
    :cond_d
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 18
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewNoTextBinding;

    invoke-virtual {p0}, Lcom/guochao/faceshow/databinding/LayoutEmptyViewNoTextBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    :goto_7
    iget-object p0, p1, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->adapter:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    .line 20
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;->unReadNum:Landroid/widget/TextView;

    .line 21
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;->getUnread()I

    move-result p1

    const/16 v0, 0x63

    if-le p1, v0, :cond_e

    const-string p1, "99+"

    goto :goto_8

    .line 22
    :cond_e
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;->getUnread()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    :goto_8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;->getUnread()I

    move-result p1

    if-lez p1, :cond_f

    goto :goto_9

    :cond_f
    const/16 v2, 0x8

    :goto_9
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private static final initView$lambda-10$lambda-8(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)I
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->broadCasterId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->broadCasterId:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->compareTo(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)I

    move-result p0

    return p0
.end method

.method private static final initView$lambda-5$lambda-4$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Landroid/view/View;)V
    .locals 2

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p2

    .line 2
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->e0(Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p2

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setNewConversation(Z)V

    .line 5
    sget-object p2, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->Companion:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;

    .line 6
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadCasterUserId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 8
    :cond_0
    invoke-virtual {p2, v0, p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    move-result-object p0

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    .line 10
    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->addFloatFragment(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;)V

    return-void
.end method

.method private static final initView$lambda-6(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->showReadAllDialog()V

    return-void
.end method

.method private final loadBroadCasterInfo(Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->e0()Ld9/g;

    move-result-object v0

    const-string v1, "activity as BaseLiveActivity).currentLiveRoom"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    iget-object v1, p1, Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;->userName:Landroid/widget/TextView;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p1, Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    :cond_1
    const-string v1, "tokens/user/info/findDetailAttention"

    .line 6
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->broadCasterId:Ljava/lang/String;

    const-string v3, "account"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "liveId"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 9
    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getChatGroupId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IMID"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 10
    new-instance v1, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$loadBroadCasterInfo$1;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$loadBroadCasterInfo$1;-><init>(Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_2
    return-void
.end method

.method private final showReadAllDialog()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/guochao/faceshow/component/live/fragment/o;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/component/live/fragment/o;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)V

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const v1, 0x7f12042f

    .line 4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    const v1, 0x7f12042d

    .line 5
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method private static final showReadAllDialog$lambda-11(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Landroid/app/Dialog;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->readAll()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->setDefaultFragmentViewHeight(Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->loadSystemMessage()V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->requestOnlineStatus()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 5
    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->isWatcher:Z

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "this.broadCasterUserId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->broadCasterId:Ljava/lang/String;

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->adapter:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    .line 13
    invoke-static {v1, v2, v4}, Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;

    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->headerBinding:Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;

    .line 15
    invoke-virtual {v1}, Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v4, Lcom/guochao/faceshow/component/live/fragment/l;

    invoke-direct {v4, v0, p0}, Lcom/guochao/faceshow/component/live/fragment/l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v2, v1, Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v2, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setOnline(Z)V

    .line 17
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "it"

    .line 18
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->loadBroadCasterInfo(Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object p2, v1, Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;->userName:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p2, v1, Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;->avatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 21
    :goto_0
    invoke-virtual {v1}, Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    const-string p2, "inflate(\n               \u2026iew\n                    }"

    .line 22
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 23
    invoke-static/range {v3 .. v8}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    .line 24
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->adapter:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;->clear:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/live/fragment/m;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/live/fragment/m;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-direct {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/component/live/fragment/n;

    invoke-direct {v0, p1, p0}, Lcom/guochao/faceshow/component/live/fragment/n;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)V

    invoke-virtual {p2, p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;

    return-void
.end method
