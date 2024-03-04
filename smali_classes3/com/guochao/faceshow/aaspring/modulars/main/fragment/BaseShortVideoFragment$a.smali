.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuRecyclerView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->O2(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->I:I

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->m2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;)I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->I:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->I:I

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->k2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    :cond_0
    return-void
.end method
