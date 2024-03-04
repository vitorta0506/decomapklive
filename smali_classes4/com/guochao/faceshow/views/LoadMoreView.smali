.class public final Lcom/guochao/faceshow/views/LoadMoreView;
.super Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/guochao/faceshow/views/LoadMoreView;",
        "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;",
        "paddingFooter",
        "",
        "(Z)V",
        "getPaddingFooter",
        "()Z",
        "setPaddingFooter",
        "getLoadComplete",
        "Landroid/view/View;",
        "holder",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "getLoadEndView",
        "getLoadFailView",
        "getLoadingView",
        "getRootView",
        "parent",
        "Landroid/view/ViewGroup;",
        "lib_core_release"
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
.field private paddingFooter:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;-><init>()V

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/LoadMoreView;->paddingFooter:Z

    return-void
.end method


# virtual methods
.method public getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/guochao/lib_core/R$id;->load_done:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/guochao/lib_core/R$id;->load_done:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/guochao/lib_core/R$id;->load_done:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/guochao/lib_core/R$id;->loading:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getPaddingFooter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/views/LoadMoreView;->paddingFooter:Z

    return v0
.end method

.method public getRootView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/LoadMoreView;->paddingFooter:Z

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/views/SimpleLiveMoreLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "parent.context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/views/SimpleLiveMoreLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    sget p1, Lcom/guochao/lib_core/R$id;->loading:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final setPaddingFooter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/LoadMoreView;->paddingFooter:Z

    return-void
.end method
