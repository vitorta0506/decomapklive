.class public final Lcom/guochao/faceshow/adapter/BaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J!\u0010\u0007\u001a\u0004\u0018\u0001H\u0008\"\n\u0008\u0000\u0010\u0008*\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u001e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nJ\u001e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\nJ\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nJ\u0010\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0019J\u001e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nJ\u0016\u0010\u001b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nJ\u0018\u0010\u001c\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eJ\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010 \u001a\u00020\nR\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "mViews",
        "Landroid/util/SparseArray;",
        "getView",
        "T",
        "viewId",
        "",
        "(I)Landroid/view/View;",
        "setImageByUri",
        "url",
        "Landroid/net/Uri;",
        "placeHolder",
        "setImageByUrl",
        "",
        "setImageResource",
        "resourceId",
        "setOnIntemClickListener",
        "",
        "listener",
        "Landroid/view/View$OnClickListener;",
        "setOnIntemLongClickListener",
        "Landroid/view/View$OnLongClickListener;",
        "setRoundImageByUri",
        "setRoundImageResource",
        "setText",
        "text",
        "",
        "setViewVisibility",
        "visibility",
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
.field private final mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/BaseViewHolder;->mViews:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final getView(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapter/BaseViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/adapter/BaseViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final setImageByUri(ILandroid/net/Uri;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;
    .locals 1
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/h;->n(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/g;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-object p0
.end method

.method public final setImageByUrl(ILjava/lang/String;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/g;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-object p0
.end method

.method public final setImageResource(II)Lcom/guochao/faceshow/adapter/BaseViewHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public final setOnIntemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnIntemLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnLongClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final setRoundImageByUri(ILandroid/net/Uri;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;
    .locals 1
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/h;->n(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/g;

    new-instance p3, Lcom/bumptech/glide/load/resource/bitmap/y;

    const/16 v0, 0x32

    invoke-direct {p3, v0}, Lcom/bumptech/glide/load/resource/bitmap/y;-><init>(I)V

    invoke-static {p3}, Lcom/bumptech/glide/request/h;->x0(Le0/h;)Lcom/bumptech/glide/request/h;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-object p0
.end method

.method public final setRoundImageResource(II)Lcom/guochao/faceshow/adapter/BaseViewHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->p(Ljava/lang/Integer;)Lcom/bumptech/glide/g;

    move-result-object p1

    new-instance p2, Lcom/bumptech/glide/load/resource/bitmap/y;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/y;-><init>(I)V

    invoke-static {p2}, Lcom/bumptech/glide/request/h;->x0(Le0/h;)Lcom/bumptech/glide/request/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    return-object p0
.end method

.method public final setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public final setViewVisibility(II)Lcom/guochao/faceshow/adapter/BaseViewHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
