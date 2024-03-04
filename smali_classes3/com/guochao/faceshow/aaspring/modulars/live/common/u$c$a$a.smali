.class Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
