.class public final synthetic Lcom/guochao/faceshow/aaspring/base/fragment/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field public final synthetic c:I

.field public final synthetic d:Lcom/guochao/faceshow/aaspring/beans/Comment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/c;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/c;->b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/c;->c:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/base/fragment/c;->d:Lcom/guochao/faceshow/aaspring/beans/Comment;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/c;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/c;->b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/c;->c:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/c;->d:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->d0(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
