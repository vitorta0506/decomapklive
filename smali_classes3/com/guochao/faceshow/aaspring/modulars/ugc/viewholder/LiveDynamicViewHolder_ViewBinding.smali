.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder_ViewBinding;
.source "SourceFile"


# instance fields
.field private m:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;

.field private n:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder_ViewBinding;->m:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0add

    const-string v2, "field \'mImageViewStatus\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->mImageViewStatus:Landroid/widget/ImageView;

    const v0, 0x7f0a027c

    const-string v1, "field \'mImageViewCover\' and method \'click\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mImageViewCover\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->mImageViewCover:Landroid/widget/ImageView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder_ViewBinding;->n:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a073a

    const-string v1, "field \'mMainContent\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->mMainContent:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder_ViewBinding;->m:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder_ViewBinding;->m:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->mImageViewStatus:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->mImageViewCover:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->mMainContent:Landroid/view/View;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder_ViewBinding;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder_ViewBinding;->n:Landroid/view/View;

    .line 8
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder_ViewBinding;->unbind()V

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
