.class Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->v0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Landroidx/core/view/GestureDetectorCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->t0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->s0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;Z)Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->g0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->p0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;I)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->u0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->y0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->p0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;I)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->A0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->s0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;Z)Z

    :cond_4
    :goto_0
    return v0
.end method
