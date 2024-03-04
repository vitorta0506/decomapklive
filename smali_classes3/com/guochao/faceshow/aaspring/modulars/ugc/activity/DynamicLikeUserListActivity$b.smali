.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;->d0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$b;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$b;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$b;->b:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$b;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$b;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$b;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$b;->b:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity$b;->c:Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicLikeUserListActivity;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;)V

    return-void
.end method
