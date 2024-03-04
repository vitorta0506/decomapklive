.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

.field private b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

.field private c:I

.field imageDown:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field motionPannelItemImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public progressDownload:Lcom/guochao/faceshow/views/ItemDownloadProgressView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0233

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 3
    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->c:I

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/a;->r(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->progressDownload:Lcom/guochao/faceshow/views/ItemDownloadProgressView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->imageDown:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-lez p1, :cond_1

    const/16 v2, 0x64

    if-ge p1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->progressDownload:Lcom/guochao/faceshow/views/ItemDownloadProgressView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->progressDownload:Lcom/guochao/faceshow/views/ItemDownloadProgressView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/ItemDownloadProgressView;->setProgress(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->progressDownload:Lcom/guochao/faceshow/views/ItemDownloadProgressView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->imageDown:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->imageDown:Landroid/widget/ImageView;

    const v0, 0x7f0f00ad

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public e(ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->b:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/h;

    invoke-direct {v0}, Lcom/bumptech/glide/request/h;-><init>()V

    const v1, 0x7f0f0024

    .line 4
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->motionPannelItemImg:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/manager/a;->r(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->progressDownload:Lcom/guochao/faceshow/views/ItemDownloadProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->imageDown:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->progressDownload:Lcom/guochao/faceshow/views/ItemDownloadProgressView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->imageDown:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->imageDown:Landroid/widget/ImageView;

    const p2, 0x7f0f00ad

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a051f

    if-eq p1, v0, :cond_0

    const v0, 0x7f0a07a0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    :goto_0
    return-void
.end method
