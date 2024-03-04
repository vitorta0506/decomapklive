.class Lcom/guochao/faceshow/aaspring/views/r$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/r;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/r;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/r;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/r$b;->a:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/r$b;->a:Lcom/guochao/faceshow/aaspring/views/r;

    const/4 v0, 0x0

    iput v0, p1, Lcom/guochao/faceshow/aaspring/views/r;->z:F

    .line 2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
