.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->Q0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F

    move-result p2

    sub-float/2addr p1, p2

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F

    move-result p2

    sub-float/2addr v0, p2

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41000000    # 8.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->I0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    move-result-object v0

    iget-wide v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mChangePanelVisibilityDelay:J

    invoke-virtual {p2, p1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m()Lla/f;

    move-result-object p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->I0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mChangePanelVisibilityDelay:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->I0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    move-result-object v0

    iget-wide v0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mChangePanelVisibilityDelay:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->S0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;F)F

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;F)F

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->I0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;

    move-result-object v0

    iget-wide v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mChangePanelVisibilityDelay:J

    invoke-virtual {p2, p1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return v1
.end method
