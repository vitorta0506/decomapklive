.class Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;

    iget v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->d:I

    add-int/lit8 v1, v0, -0x1

    iget v2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->c:I

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->a:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->e:Ld9/e$a;

    iget v5, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->f:F

    iget v6, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->b:F

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->l(IILandroid/widget/TextView;Ld9/e$a;FF)V

    return-void
.end method
