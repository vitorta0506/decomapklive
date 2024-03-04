.class Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->k(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;Landroid/widget/ImageView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$a;->d:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$a;->a:Landroid/widget/ImageView;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$a;->b:F

    iput p4, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$a;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$a;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$a;->b:F

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$a;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$a;->c:F

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
