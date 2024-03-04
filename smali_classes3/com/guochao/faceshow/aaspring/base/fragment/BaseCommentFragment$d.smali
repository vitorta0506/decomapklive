.class Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->m0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/beans/Comment;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$d;->d:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$d;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$d;->b:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$d;->c:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$d;->d:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$d;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$d;->b:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$d;->c:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->A0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V

    const/4 p1, 0x1

    return p1
.end method
