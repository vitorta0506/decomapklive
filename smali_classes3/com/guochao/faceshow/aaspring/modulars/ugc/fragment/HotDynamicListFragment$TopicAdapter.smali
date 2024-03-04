.class public final Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TopicAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\rH\u0016J\u0018\u0010\n\u001a\u00020\u000f2\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0016R.\u0010\u0004\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0006`\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;",
        "()V",
        "data",
        "Ljava/util/ArrayList;",
        "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
        "Lkotlin/collections/ArrayList;",
        "getData",
        "()Ljava/util/ArrayList;",
        "setData",
        "(Ljava/util/ArrayList;)V",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
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
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;->data:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;->onBindViewHolder$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;I)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;I)V
    .locals 1

    const-string p2, "$holder"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_hot_topic_click:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->r0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;I)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->f(Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;I)V

    .line 3
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/g;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->setOnClickListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$b;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    const v0, 0x7f0800da

    invoke-direct {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;-><init>(Landroid/view/ViewGroup;I)V

    return-object p2
.end method

.method public final setData(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;->data:Ljava/util/ArrayList;

    return-void
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
