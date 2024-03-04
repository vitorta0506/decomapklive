.class public final Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcDynamicListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$Companion;,
        Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u000fH\u0002J\u0008\u0010\u0016\u001a\u00020\u000fH\u0002J\u0018\u0010\u0017\u001a\u00020\u000f2\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0019H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcDynamicListFragment;",
        "()V",
        "topicAdapter",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;",
        "getTopicAdapter",
        "()Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;",
        "topicAdapter$delegate",
        "Lkotlin/Lazy;",
        "topicListView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getTopicListView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "topicListView$delegate",
        "initView",
        "",
        "view",
        "Landroid/view/View;",
        "loadData",
        "pageNo",
        "",
        "loadTopic",
        "readCache",
        "writeCache",
        "data",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
        "Companion",
        "TopicAdapter",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final topicAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final topicListView$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcDynamicListFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$topicListView$2;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$topicListView$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->topicListView$delegate:Lkotlin/Lazy;

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$topicAdapter$2;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$topicAdapter$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->topicAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$writeCache(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->writeCache(Ljava/util/List;)V

    return-void
.end method

.method public static final getInstance()Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;

    move-result-object v0

    return-object v0
.end method

.method private final loadTopic()V
    .locals 3

    const-string v0, "tokens/search/findRecommendAndHotTopicList"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "recommendCount"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hotCount"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$loadTopic$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$loadTopic$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private final readCache()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$readCache$data$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$readCache$data$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "topic"

    const-string v2, "topics"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->getTopicAdapter()Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;->setData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private final writeCache(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "topic"

    const-string v1, "topics"

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getTopicAdapter()Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->topicAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;

    return-object v0
.end method

.method public final getTopicListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->topicListView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->getTopicListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x4f0a

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addHeaderView(Landroid/view/View;I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->getTopicListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->getTopicListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->getTopicAdapter()Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->readCache()V

    return-void
.end method

.method public loadData(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcDynamicListFragment;->loadData(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getDefaultPage()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;->loadTopic()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLikeClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Laa/d;->a(Laa/e;Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;I)V

    return-void
.end method
