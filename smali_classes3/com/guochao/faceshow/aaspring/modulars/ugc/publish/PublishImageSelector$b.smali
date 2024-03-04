.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->g(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->e(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Z)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;-><init>(Landroid/view/ViewGroup;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;)V

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;)V

    return-object p2
.end method
