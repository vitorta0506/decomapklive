.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->d(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->d(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->c(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;->c(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
