.class Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->m()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;->a()V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->G:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;->d()V

    :cond_1
    return-void
.end method
