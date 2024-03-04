.class Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

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

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->a:Z

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)V

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
