.class public abstract Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\'\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0014\u0010\u001b\u001a\u00020\u001c2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007J\'\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u001f\u001a\u00028\u00002\u0006\u0010 \u001a\u00020\tH&\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020\tH\u0016J\u001a\u0010#\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u00032\u0008\u0008\u0001\u0010 \u001a\u00020\tH\u0016J\u0018\u0010$\u001a\u00020\u00032\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\tH\u0016J\u0014\u0010(\u001a\u00020\u001c2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007J\u0010\u0010)\u001a\u00020\u001c2\u0008\u0010*\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010+\u001a\u00020\u001c2\u0008\u0010,\u001a\u0004\u0018\u00010\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006-"
    }
    d2 = {
        "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;",
        "T",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
        "mContext",
        "Landroid/content/Context;",
        "data",
        "",
        "layoutId",
        "",
        "(Landroid/content/Context;Ljava/util/List;I)V",
        "mData",
        "mInflater",
        "Landroid/view/LayoutInflater;",
        "mItemClickListener",
        "Lcom/guochao/faceshow/adapter/OnItemClickListener;",
        "getMItemClickListener",
        "()Lcom/guochao/faceshow/adapter/OnItemClickListener;",
        "setMItemClickListener",
        "(Lcom/guochao/faceshow/adapter/OnItemClickListener;)V",
        "mLayoutId",
        "mLongClickListener",
        "Lcom/guochao/faceshow/adapter/OnLongClickListener;",
        "getMLongClickListener",
        "()Lcom/guochao/faceshow/adapter/OnLongClickListener;",
        "setMLongClickListener",
        "(Lcom/guochao/faceshow/adapter/OnLongClickListener;)V",
        "addData",
        "",
        "convert",
        "holder",
        "item",
        "position",
        "(Lcom/guochao/faceshow/adapter/BaseViewHolder;Ljava/lang/Object;I)V",
        "getItemCount",
        "onBindViewHolder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "setData",
        "setOnItemClickListener",
        "itemClickListener",
        "setOnLongClickListener",
        "longClickListener",
        "lib_base_release"
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
.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mItemClickListener:Lcom/guochao/faceshow/adapter/OnItemClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mLayoutId:I

.field private mLongClickListener:Lcom/guochao/faceshow/adapter/OnLongClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "from(mContext)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mData:Ljava/util/List;

    .line 5
    iput p3, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mLayoutId:I

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;ILandroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->onBindViewHolder$lambda-1(Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->onBindViewHolder$lambda-0(Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;ILandroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;ILandroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mItemClickListener:Lcom/guochao/faceshow/adapter/OnItemClickListener;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/guochao/faceshow/adapter/OnItemClickListener;->onItemClick(I)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-1(Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;ILandroid/view/View;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mLongClickListener:Lcom/guochao/faceshow/adapter/OnLongClickListener;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/guochao/faceshow/adapter/OnLongClickListener;->onLongClick(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Ljava/lang/Object;I)V
    .param p1    # Lcom/guochao/faceshow/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getMItemClickListener()Lcom/guochao/faceshow/adapter/OnItemClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mItemClickListener:Lcom/guochao/faceshow/adapter/OnItemClickListener;

    return-object v0
.end method

.method public final getMLongClickListener()Lcom/guochao/faceshow/adapter/OnLongClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mLongClickListener:Lcom/guochao/faceshow/adapter/OnLongClickListener;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->onBindViewHolder(Lcom/guochao/faceshow/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/adapter/BaseViewHolder;I)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mItemClickListener:Lcom/guochao/faceshow/adapter/OnItemClickListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/adapter/a;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/adapter/a;-><init>(Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mLongClickListener:Lcom/guochao/faceshow/adapter/OnLongClickListener;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/adapter/b;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/adapter/b;-><init>(Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mLayoutId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/guochao/faceshow/adapter/BaseViewHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mData:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setMItemClickListener(Lcom/guochao/faceshow/adapter/OnItemClickListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/adapter/OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mItemClickListener:Lcom/guochao/faceshow/adapter/OnItemClickListener;

    return-void
.end method

.method public final setMLongClickListener(Lcom/guochao/faceshow/adapter/OnLongClickListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/adapter/OnLongClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mLongClickListener:Lcom/guochao/faceshow/adapter/OnLongClickListener;

    return-void
.end method

.method public final setOnItemClickListener(Lcom/guochao/faceshow/adapter/OnItemClickListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/adapter/OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mItemClickListener:Lcom/guochao/faceshow/adapter/OnItemClickListener;

    return-void
.end method

.method public final setOnLongClickListener(Lcom/guochao/faceshow/adapter/OnLongClickListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/adapter/OnLongClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->mLongClickListener:Lcom/guochao/faceshow/adapter/OnLongClickListener;

    return-void
.end method