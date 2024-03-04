.class Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->V1(Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getDressUpId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onErrorCallback()V
    .locals 2

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getDressUpId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
