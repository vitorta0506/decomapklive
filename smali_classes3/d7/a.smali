.class public interface abstract Ld7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a<",
        "TVH;>;"
    }
.end annotation


# virtual methods
.method public abstract addData(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract addDatas(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract clearAll()V
.end method

.method public abstract convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;ITT;)V"
        }
    .end annotation
.end method

.method public abstract getFooterView()Landroid/view/View;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getItemViewType(I)I
.end method

.method public abstract getList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract hideFooterView()V
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/View;)V
.end method

.method public abstract onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public abstract onCreateAdapter(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation
.end method

.method public abstract onCreateLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end method

.method public abstract reload()V
.end method

.method public abstract setDatas(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setFooterView(I)V
.end method

.method public abstract showEmptyView()V
.end method
