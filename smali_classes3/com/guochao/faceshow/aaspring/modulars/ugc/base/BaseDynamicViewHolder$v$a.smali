.class Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onDoubleTabClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$v;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->q()V

    return-void
.end method
