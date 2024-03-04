.class Lcom/guochao/faceshow/aaspring/modulars/live/game/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->q0(ZLjava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->Q(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 2
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    const v4, 0x7f0a045f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-array v0, v0, [I

    .line 3
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v0, v2

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->Q(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->N(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;F)F

    return-void
.end method
