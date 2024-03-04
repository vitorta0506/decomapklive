.class Lcom/guochao/faceshow/aaspring/modulars/live/common/u$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->e(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Ld9/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic c:Ld9/i;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Ld9/i;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$f;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$f;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$f;->c:Ld9/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$f;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$f;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$f;->c:Ld9/i;

    invoke-interface {p1}, Ld9/i;->onCallback()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
