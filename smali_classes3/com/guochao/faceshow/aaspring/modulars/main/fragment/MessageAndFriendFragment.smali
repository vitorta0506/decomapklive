.class public final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0008\u0010\u0018\u001a\u00020\u0013H\u0016J\u000e\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001bJ\u0008\u0010\u001c\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "fragment",
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;)V",
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
        "onResume",
        "select",
        "index",
        "",
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
.field private final fragment:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;

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

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->fragment:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->initView$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;Landroid/app/Dialog;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->showReadAllDialog$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;Landroid/app/Dialog;Z)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->initView$lambda-3$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->fragment:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    return-object p0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    return-object v0
.end method

.method private static final initView$lambda-3$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->showReadAllDialog()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->start(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method private static final initView$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->start(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->groupTips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->b(Landroid/content/Context;)Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "friendGroup"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->setSetting(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private final showReadAllDialog()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/o;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;)V

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

.method private static final showReadAllDialog$lambda-5(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;Landroid/app/Dialog;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->readAll()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;

    move-result-object p1

    .line 3
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$1;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p2, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 4
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v0, p1, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 5
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 6
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->menu1:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/n;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 8
    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->menuSearch:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/m;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->select(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayPauseUtils;->startVideoPlayPause()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->showStatusBar(Landroid/app/Activity;Z)V

    return-void
.end method

.method public final select(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;

    move-result-object v0

    const/16 v1, 0x8

    const v2, 0x7f0f0237

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v4, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v5, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->im_page:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 3
    iget-object v4, v0, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->menu1:Landroid/widget/ImageView;

    const v5, 0x7f0f021f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v4, v0, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->menuSearch:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->groupTips:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v4, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v5, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->im_friend_tab_click:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 7
    iget-object v4, v0, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->menu1:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object v2, v0, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->menuSearch:Landroid/widget/ImageView;

    const v4, 0x7f0f01f6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->b(Landroid/content/Context;)Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    iget-object v4, v4, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "friendGroup"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->getSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->groupTips:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->groupTips:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :goto_0
    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentMessageAndFriendBinding;

    return-void
.end method
