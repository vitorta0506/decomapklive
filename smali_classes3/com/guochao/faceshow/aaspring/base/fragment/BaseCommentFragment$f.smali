.class Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->k0(Lcom/guochao/faceshow/aaspring/beans/Comment;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/Comment;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;Lcom/guochao/faceshow/aaspring/beans/Comment;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->e:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->c:Landroid/view/View;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getIsLike()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setIsLike(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getLikeNum()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setLikeNum(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setIsLike(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getLikeNum()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setLikeNum(I)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getLikeNum()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getIsLike()I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->d:Landroid/widget/ImageView;

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    const-string v4, "scaleX"

    invoke-static {p1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$f;->d:Landroid/widget/ImageView;

    new-array v4, v1, [F

    aput v3, v4, v0

    const-string v3, "scaleY"

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 11
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p1, v4, v0

    aput-object v2, v4, v1

    .line 12
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 13
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
