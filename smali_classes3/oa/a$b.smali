.class public Loa/a$b;
.super Loa/g$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loa/g$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2, v1, v1}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v2

    sub-float/2addr v0, v2

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v1, v1}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result p2

    sub-float/2addr v2, p2

    .line 4
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Loa/g$e;->a:F

    .line 6
    iput v2, p0, Loa/g$e;->b:F

    const/4 p1, 0x0

    const/4 p2, 0x1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_2

    const/4 v1, 0x1

    .line 7
    :cond_2
    iput-boolean v1, p0, Loa/g$e;->c:Z

    return p2
.end method
