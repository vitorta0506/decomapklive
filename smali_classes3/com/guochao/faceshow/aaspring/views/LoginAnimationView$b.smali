.class Lcom/guochao/faceshow/aaspring/views/LoginAnimationView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView$b;->a:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView$b;->a:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->r(I)V

    return-void
.end method
