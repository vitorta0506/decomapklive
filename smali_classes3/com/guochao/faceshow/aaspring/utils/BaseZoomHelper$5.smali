.class Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->resetZoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

.field final synthetic val$colorDrawable:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;Landroid/graphics/drawable/ColorDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$5;->this$0:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$5;->val$colorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$5;->val$colorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    return-void
.end method
