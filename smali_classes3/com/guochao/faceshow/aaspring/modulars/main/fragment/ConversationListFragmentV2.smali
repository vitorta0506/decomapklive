.class public final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;,
        Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment<",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002./B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001f\u001a\u00020 H\u0002J\u001a\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u00102\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0014J\u0006\u0010%\u001a\u00020 J\u0012\u0010&\u001a\u00020 2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0017J\u0012\u0010\'\u001a\u00020 2\u0008\u0010(\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010)\u001a\u00020 H\u0016J\u001a\u0010*\u001a\u00020 2\u0006\u0010+\u001a\u00020\u00102\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010,\u001a\u00020-H\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0014\u001a\u00020\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0016\u0010\u0004\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001b\u0010\u001b\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\n\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u00060"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;",
        "()V",
        "adapter",
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;",
        "getAdapter",
        "()Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "connectionBinding",
        "Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;",
        "headAdapter",
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;",
        "headerView",
        "Landroid/view/View;",
        "lastLoadOnline",
        "",
        "lastLoopLoadOnline",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;",
        "viewModel$delegate",
        "checkNotificationPermission",
        "",
        "initView",
        "root",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "loadOnline",
        "onActivityCreated",
        "onModelUpdate",
        "model",
        "onResume",
        "onViewCreated",
        "view",
        "shouldHideNotificationTips",
        "",
        "ConversationAdapter",
        "HeadAdapter",
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
.field private final adapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private connectionBinding:Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;

.field private final headAdapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private headerView:Landroid/view/View;

.field private lastLoadOnline:J

.field private lastLoopLoadOnline:J

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;

    const v1, 0x7f0d039a

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->headAdapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->viewModel$delegate:Lkotlin/Lazy;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$adapter$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$adapter$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->onModelUpdate$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->initView$lambda-6$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->initView$lambda-6$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getHeadAdapter$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->headAdapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;

    return-object p0
.end method

.method public static final synthetic access$getHeaderView$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->headerView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getLastLoopLoadOnline$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->lastLoopLoadOnline:J

    return-wide v0
.end method

.method public static final synthetic access$setLastLoopLoadOnline$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->lastLoopLoadOnline:J

    return-void
.end method

.method private final checkNotificationPermission()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->shouldHideNotificationTips()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "connectionBinding"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->connectionBinding:Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;->pushStatus:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->connectionBinding:Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;->pushStatus:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private final getAdapter()Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;

    return-object v0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-6$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/NotificationsUtils;->requestNotify(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private static final initView$lambda-6$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KEY_IM_PUSH_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "module_notification"

    const/4 v2, 0x1

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->connectionBinding:Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;

    if-nez p0, :cond_0

    const-string p0, "connectionBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;->pushStatus:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->notice_list_close_click:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    return-void
.end method

.method private static final onModelUpdate$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;

    move-result-object p0

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final shouldHideNotificationTips()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/NotificationsUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KEY_IM_PUSH_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module_notification"

    .line 4
    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

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
    return v0
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewModel()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "root"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super/range {p0 .. p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewNoTextBinding;

    invoke-virtual {v1}, Lcom/guochao/faceshow/databinding/LayoutEmptyViewNoTextBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewNoTextBinding;

    invoke-virtual {v1}, Lcom/guochao/faceshow/databinding/LayoutEmptyViewNoTextBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    const v3, 0x7f0603ce

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v10, 0x0

    .line 7
    invoke-static {v1, v3, v10}, Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;

    move-result-object v1

    const-string v3, "it"

    .line 8
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->connectionBinding:Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;

    .line 9
    iget-object v3, v1, Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;->pushStatus:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/c;

    invoke-direct {v5, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v3, v1, Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;->imPushClose:Landroid/widget/ImageView;

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/b;

    invoke-direct {v5, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {v1}, Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v5

    const-string v1, "inflate(\n               \u2026     }\n            }.root"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 12
    invoke-static/range {v4 .. v9}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;

    move-result-object v11

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    invoke-static {v1, v3, v10}, Lcom/guochao/faceshow/databinding/ListHeaderConversationListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ListHeaderConversationListBinding;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/guochao/faceshow/databinding/ListHeaderConversationListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object v2, v1, Lcom/guochao/faceshow/databinding/ListHeaderConversationListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "it.rv"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->headAdapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "top_recommend_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;

    .line 21
    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/manager/b;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    const-string v3, "list"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 23
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->headAdapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    .line 24
    invoke-virtual {v1}, Lcom/guochao/faceshow/databinding/ListHeaderConversationListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    :cond_1
    invoke-virtual {v1}, Lcom/guochao/faceshow/databinding/ListHeaderConversationListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    const-string v3, "it.root"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->headerView:Landroid/view/View;

    .line 26
    invoke-virtual {v1}, Lcom/guochao/faceshow/databinding/ListHeaderConversationListBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v12

    const-string v1, "inflate(\n               \u2026    it.root\n            }"

    .line 27
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 28
    invoke-static/range {v11 .. v16}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final loadOnline()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->lastLoadOnline:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->lastLoadOnline:J

    .line 4
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->loadSystemMessage()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->requestOnlineStatus()V

    return-void
.end method

.method public bridge synthetic onModelUpdate(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->onModelUpdate(Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V

    return-void
.end method

.method public onModelUpdate(Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V
    .locals 8
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    if-eqz v0, :cond_b

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->headAdapter:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;

    .line 5
    move-object v3, p1

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 7
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v4, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setOnlineStatus(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 9
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 12
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationType()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgStr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 13
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/d;

    invoke-direct {v2, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 15
    :cond_8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;

    move-result-object v1

    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    .line 16
    :goto_4
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    .line 17
    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewNoTextBinding;

    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutEmptyViewNoTextBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 18
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;->empty:Lcom/guochao/faceshow/databinding/LayoutEmptyViewNoTextBinding;

    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/LayoutEmptyViewNoTextBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    :goto_6
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->checkNotificationPermission()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    const-string p2, "viewLifecycleOwner"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;

    return-void
.end method
