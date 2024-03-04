.class public Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecyclerViewScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# instance fields
.field public a:F


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecyclerViewScroller;->a:F

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method
