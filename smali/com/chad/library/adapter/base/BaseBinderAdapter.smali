.class public Lcom/chad/library/adapter/base/BaseBinderAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/BaseBinderAdapter$ItemCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001-B\u0017\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J9\u0010\u0011\u001a\u00020\u0000\"\n\u0008\u0000\u0010\u0012\u0018\u0001*\u00020\u00022\u0010\u0010\u0013\u001a\u000c\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\u0008\u00030\u000e2\u0010\u0008\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u0002H\u0012\u0018\u00010\nH\u0086\u0008JF\u0010\u0011\u001a\u00020\u0000\"\u0008\u0008\u0000\u0010\u0012*\u00020\u00022\u000e\u0010\u0015\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00120\t2\u0010\u0010\u0013\u001a\u000c\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\u0008\u00030\u000e2\u0010\u0008\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u0002H\u0012\u0018\u00010\nH\u0007J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0010H\u0014J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H\u0014J\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0010H\u0014J\u0018\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0002H\u0014J&\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00022\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020 H\u0014J\u0014\u0010!\u001a\u00020\u00102\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\tH\u0004J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u0010H\u0014J\u001c\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u001e\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u0018\u0010&\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020(2\u0006\u0010\u0019\u001a\u00020\u0010H\u0014J\u0010\u0010)\u001a\u00020*2\u0006\u0010\u001d\u001a\u00020\u0003H\u0016J\u0010\u0010+\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0003H\u0016J\u0010\u0010,\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0003H\u0016RB\u0010\u0007\u001a6\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n0\u0008j\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u0002\u0012\u0002\u0008\u00030\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u000f\u001a&\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u0004\u0012\u00020\u00100\u0008j\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\t\u0012\u0004\u0012\u00020\u0010`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/chad/library/adapter/base/BaseBinderAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "list",
        "",
        "(Ljava/util/List;)V",
        "classDiffMap",
        "Ljava/util/HashMap;",
        "Ljava/lang/Class;",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lkotlin/collections/HashMap;",
        "mBinderArray",
        "Landroid/util/SparseArray;",
        "Lcom/chad/library/adapter/base/binder/BaseItemBinder;",
        "mTypeMap",
        "",
        "addItemBinder",
        "T",
        "baseItemBinder",
        "callback",
        "clazz",
        "bindChildClick",
        "",
        "viewHolder",
        "viewType",
        "bindClick",
        "bindViewClickListener",
        "convert",
        "holder",
        "item",
        "payloads",
        "",
        "findViewType",
        "getDefItemViewType",
        "position",
        "getItemBinder",
        "getItemBinderOrNull",
        "onCreateDefViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "onFailedToRecycleView",
        "",
        "onViewAttachedToWindow",
        "onViewDetachedFromWindow",
        "ItemCallback",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final classDiffMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mBinderArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
            "Ljava/lang/Object;",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->classDiffMap:Ljava/util/HashMap;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mTypeMap:Ljava/util/HashMap;

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mBinderArray:Landroid/util/SparseArray;

    .line 5
    new-instance p1, Lcom/chad/library/adapter/base/BaseBinderAdapter$ItemCallback;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter/base/BaseBinderAdapter$ItemCallback;-><init>(Lcom/chad/library/adapter/base/BaseBinderAdapter;)V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getClassDiffMap$p(Lcom/chad/library/adapter/base/BaseBinderAdapter;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->classDiffMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic addItemBinder$default(Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;ILjava/lang/Object;)Lcom/chad/library/adapter/base/BaseBinderAdapter;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "baseItemBinder"

    .line 2
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x4

    const-string p4, "T"

    .line 3
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p3, Ljava/lang/Object;

    invoke-virtual {p0, p3, p1, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->addItemBinder(Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Lcom/chad/library/adapter/base/BaseBinderAdapter;

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addItemBinder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic addItemBinder$default(Lcom/chad/library/adapter/base/BaseBinderAdapter;Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;ILjava/lang/Object;)Lcom/chad/library/adapter/base/BaseBinderAdapter;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->addItemBinder(Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Lcom/chad/library/adapter/base/BaseBinderAdapter;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addItemBinder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final bindChildClick$lambda-11$lambda-10$lambda-9(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)Z
    .locals 2

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "v"

    .line 3
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p3, p1, v0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onChildLongClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method private static final bindChildClick$lambda-8$lambda-7$lambda-6(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)V
    .locals 2

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "v"

    .line 3
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p3, p1, v0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onChildClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method

.method private static final bindClick$lambda-4(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)V
    .locals 3

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 4
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v1

    const-string v2, "it"

    .line 5
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p2, p1, v0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method

.method private static final bindClick$lambda-5(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)Z
    .locals 3

    const-string v0, "$viewHolder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 4
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v1

    const-string v2, "it"

    .line 5
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p2, p1, v0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onLongClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindChildClick$lambda-8$lambda-7$lambda-6(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindChildClick$lambda-11$lambda-10$lambda-9(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindClick$lambda-5(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindClick$lambda-4(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final synthetic addItemBinder(Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Lcom/chad/library/adapter/base/BaseBinderAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
            "TT;*>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)",
            "Lcom/chad/library/adapter/base/BaseBinderAdapter;"
        }
    .end annotation

    const-string v0, "baseItemBinder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "T"

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->addItemBinder(Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Lcom/chad/library/adapter/base/BaseBinderAdapter;

    return-object p0
.end method

.method public final addItemBinder(Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;)Lcom/chad/library/adapter/base/BaseBinderAdapter;
    .locals 7
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/chad/library/adapter/base/binder/BaseItemBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
            "TT;*>;)",
            "Lcom/chad/library/adapter/base/BaseBinderAdapter;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseItemBinder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->addItemBinder$default(Lcom/chad/library/adapter/base/BaseBinderAdapter;Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;ILjava/lang/Object;)Lcom/chad/library/adapter/base/BaseBinderAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final addItemBinder(Ljava/lang/Class;Lcom/chad/library/adapter/base/binder/BaseItemBinder;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Lcom/chad/library/adapter/base/BaseBinderAdapter;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/chad/library/adapter/base/binder/BaseItemBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
            "TT;*>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)",
            "Lcom/chad/library/adapter/base/BaseBinderAdapter;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseItemBinder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mTypeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mBinderArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p2, p0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->set_adapter$com_github_CymChad_brvah(Lcom/chad/library/adapter/base/BaseBinderAdapter;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->classDiffMap:Ljava/util/HashMap;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method protected bindChildClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 5
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemChildClickListener()Lx0/d;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->getChildClickViewIds()Ljava/util/ArrayList;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 5
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v3, v1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    :cond_1
    new-instance v4, Lcom/chad/library/adapter/base/b;

    invoke-direct {v4, p1, p0, v0}, Lcom/chad/library/adapter/base/b;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemChildLongClickListener()Lx0/e;

    move-result-object v0

    if-nez v0, :cond_5

    .line 10
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->getChildLongClickViewIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 13
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 15
    invoke-virtual {v2, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 16
    :cond_4
    new-instance v3, Lcom/chad/library/adapter/base/d;

    invoke-direct {v3, p1, p0, p2}, Lcom/chad/library/adapter/base/d;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/binder/BaseItemBinder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected bindClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemClickListener()Lx0/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chad/library/adapter/base/a;

    invoke-direct {v1, p1, p0}, Lcom/chad/library/adapter/base/a;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getOnItemLongClickListener()Lx0/h;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chad/library/adapter/base/c;

    invoke-direct {v1, p1, p0}, Lcom/chad/library/adapter/base/c;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseBinderAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method protected bindViewClickListener(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindViewClickListener(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindChildClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method protected final findViewType(Ljava/lang/Class;)I
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findViewType: ViewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Not Find!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getDefItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->findViewType(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
            "Ljava/lang/Object;",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mBinderArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getItemBinder: viewType \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' no such Binder found\uff0cplease use addItemBinder() first!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemBinderOrNull(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/chad/library/adapter/base/binder/BaseItemBinder<",
            "Ljava/lang/Object;",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter;->mBinderArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->set_context$com_github_CymChad_brvah(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->onFailedToRecycleView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Z
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinderOrNull(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onFailedToRecycleView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinderOrNull(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->onViewDetachedFromWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinderOrNull(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onViewDetachedFromWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    :goto_0
    return-void
.end method
