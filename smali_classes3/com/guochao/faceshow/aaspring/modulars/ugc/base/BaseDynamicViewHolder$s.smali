.class Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->openComment(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$s;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$s;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$s;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getIsComment()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$s;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$s;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->b:Laa/e;

    if-eqz v1, :cond_2

    .line 5
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-interface {v1, v0, v2}, Laa/e;->onCommentButtonClicked(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$s;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$s;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->h1(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/Comment;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDoubleTabClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$s;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->q()V

    return-void
.end method
