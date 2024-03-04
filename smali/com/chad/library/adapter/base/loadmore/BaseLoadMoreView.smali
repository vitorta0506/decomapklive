.class public abstract Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0014\u0010\u0013\u001a\u00020\u0004*\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;",
        "",
        "()V",
        "convert",
        "",
        "holder",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "position",
        "",
        "loadMoreStatus",
        "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;",
        "getLoadComplete",
        "Landroid/view/View;",
        "getLoadEndView",
        "getLoadFailView",
        "getLoadingView",
        "getRootView",
        "parent",
        "Landroid/view/ViewGroup;",
        "isVisible",
        "visible",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isVisible(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILcom/chad/library/adapter/base/loadmore/LoadMoreStatus;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "loadMoreStatus"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p2, p3, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public abstract getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getRootView(Landroid/view/ViewGroup;)Landroid/view/View;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
