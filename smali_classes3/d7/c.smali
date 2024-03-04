.class public interface abstract Ld7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld7/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Ld7/a<",
        "TT;TVH;>;"
    }
.end annotation


# virtual methods
.method public abstract addFooterView(Landroid/view/View;I)V
.end method

.method public abstract addHeaderView(Landroid/view/View;I)V
.end method

.method public abstract canLoadMore()Z
.end method

.method public abstract canRefresh()Z
.end method

.method public abstract getCurrentPage()I
.end method

.method public abstract getDefaultPage()I
.end method

.method public abstract getEmptyView()Landroid/view/View;
.end method

.method public abstract getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end method

.method public abstract loadData(I)V
.end method

.method public abstract notifyDataLoaded(Z)V
.end method

.method public abstract removeFooterView(Landroid/view/View;)V
.end method

.method public abstract removeHeaderView(Landroid/view/View;)V
.end method

.method public abstract setCurrentPage(I)V
.end method

.method public abstract setDefaultPage(I)V
.end method

.method public abstract setShowRefreshOnInit(Z)V
.end method
