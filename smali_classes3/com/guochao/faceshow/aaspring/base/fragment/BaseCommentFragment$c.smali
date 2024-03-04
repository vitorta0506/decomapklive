.class Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->m0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/Comment;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->e:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->c:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->e:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->d:Landroid/widget/TextView;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->g0(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->e:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$c;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->F0(Lcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;Landroid/widget/TextView;)V

    return-void
.end method
