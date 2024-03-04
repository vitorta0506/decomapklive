.class Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$a;->a:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;)Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;->a()F

    move-result v0

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;->a()F

    move-result v1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;->a()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;->b()F

    move-result v1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;->b()F

    move-result p3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;->b()F

    move-result p2

    sub-float/2addr p3, p2

    mul-float p1, p1, p3

    add-float/2addr v1, p1

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;

    invoke-direct {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;-><init>(FF)V

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;

    check-cast p3, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$a;->a(FLcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;)Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;

    move-result-object p1

    return-object p1
.end method
