.class public final Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "list",
        "Ljava/util/ArrayList;",
        "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
        "Lkotlin/collections/ArrayList;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;)V",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->initView$lambda-5$lambda-4(Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;La8/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->initView$lambda-3(Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;La8/a;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->initView$lambda-0(Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;La8/a;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->list:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, La8/a;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 6
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSayHi()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 11
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;->emptyView:Lcom/guochao/faceshow/databinding/SlListNodataBinding;

    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/SlListNodataBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    .line 13
    iget-object p0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x0

    .line 14
    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private static final initView$lambda-5$lambda-4(Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

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
    sget-object p2, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->Companion:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "item.conversationId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "item.conversationName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2, p3, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    .line 7
    invoke-static {p1, p0}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->addFloatFragment(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;)V

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;->back:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/live/fragment/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/live/fragment/b;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->setDefaultFragmentViewHeight(Landroid/view/View;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/guochao/faceshow/component/live/fragment/c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/component/live/fragment/c;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;)V

    invoke-virtual {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/manager/im/a;->o(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    .line 9
    new-instance v0, Lcom/guochao/faceshow/component/live/fragment/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/live/fragment/d;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;)V

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    .line 10
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;

    return-void
.end method
