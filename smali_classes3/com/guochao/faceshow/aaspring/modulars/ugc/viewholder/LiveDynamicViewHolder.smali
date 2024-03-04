.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
.source "SourceFile"


# instance fields
.field mImageViewCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewStatus:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mMainContent:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->r:I

    return-void
.end method

.method static synthetic T(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    return-object p0
.end method

.method static synthetic U(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->w(Landroid/view/View;)V

    return-void
.end method

.method static synthetic V(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public G(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->G(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getDynamicFile()Ljava/util/ArrayList;

    move-result-object p1

    const v0, 0x7f080476

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->mImageViewCover:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->mImageViewCover:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->mImageViewStatus:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLiveState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->mMainContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 11
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->r:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public click(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/h;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V

    return-void
.end method
