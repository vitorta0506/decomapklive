.class Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->s0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;Z)Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->t0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->u0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->g0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->p0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;I)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->q0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->g0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->p0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->q0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    .line 4
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
