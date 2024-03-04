.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->c:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->a:F

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->b:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->b:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->a:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1

    return v0

    .line 5
    :cond_1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->a:F

    sub-float p2, p1, p2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->c:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_3

    .line 6
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/BidiFormatter;->isRtlContext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->c:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->w4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->c()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->c:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->w4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->d()V

    goto :goto_0

    .line 9
    :cond_3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->a:F

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->c:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6

    .line 10
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/BidiFormatter;->isRtlContext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->c:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->w4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->d()V

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->c:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->w4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchBottomSwitchHolder;->c()V

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->a:F

    .line 14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$r;->b:F

    :cond_6
    :goto_0
    return v0
.end method
