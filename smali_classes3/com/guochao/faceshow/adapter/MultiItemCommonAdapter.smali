.class public abstract Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;
.super Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B5\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0008H\u0016R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;",
        "T",
        "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;",
        "mContext",
        "Landroid/content/Context;",
        "data",
        "",
        "layoutId",
        "",
        "multiItemTypeSupport",
        "Lcom/guochao/faceshow/adapter/MultiItemTypeSupport;",
        "(Landroid/content/Context;Ljava/util/List;ILcom/guochao/faceshow/adapter/MultiItemTypeSupport;)V",
        "mData",
        "mInflater",
        "Landroid/view/LayoutInflater;",
        "mMultiItemTypeSupport",
        "getItemViewType",
        "position",
        "onCreateViewHolder",
        "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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

.field private mMultiItemTypeSupport:Lcom/guochao/faceshow/adapter/MultiItemTypeSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/adapter/MultiItemTypeSupport<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/guochao/faceshow/adapter/MultiItemTypeSupport;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/guochao/faceshow/adapter/MultiItemTypeSupport;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+TT;>;I",
            "Lcom/guochao/faceshow/adapter/MultiItemTypeSupport<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "multiItemTypeSupport"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p3, "from(mContext)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3
    iput-object p4, p0, Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;->mMultiItemTypeSupport:Lcom/guochao/faceshow/adapter/MultiItemTypeSupport;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;->mMultiItemTypeSupport:Lcom/guochao/faceshow/adapter/MultiItemTypeSupport;

    invoke-interface {v1, p1, v0}, Lcom/guochao/faceshow/adapter/MultiItemTypeSupport;->getItemViewType(ILjava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;

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

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;->mMultiItemTypeSupport:Lcom/guochao/faceshow/adapter/MultiItemTypeSupport;

    invoke-interface {v0, p2}, Lcom/guochao/faceshow/adapter/MultiItemTypeSupport;->getLayoutId(I)I

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/guochao/faceshow/adapter/BaseViewHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
