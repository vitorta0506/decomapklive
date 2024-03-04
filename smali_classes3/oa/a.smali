.class public Loa/a;
.super Loa/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loa/a$a;,
        Loa/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Lpa/a;)V
    .locals 3

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40000000    # -2.0f

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Loa/a;-><init>(Lpa/a;FFF)V

    return-void
.end method

.method public constructor <init>(Lpa/a;FFF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p4, p2, p3}, Loa/g;-><init>(Lpa/a;FFF)V

    return-void
.end method


# virtual methods
.method protected b()Loa/g$a;
    .locals 1

    new-instance v0, Loa/a$a;

    invoke-direct {v0}, Loa/a$a;-><init>()V

    return-object v0
.end method

.method protected c()Loa/g$e;
    .locals 1

    new-instance v0, Loa/a$b;

    invoke-direct {v0}, Loa/a$b;-><init>()V

    return-object v0
.end method

.method protected f(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method protected g(Landroid/view/View;FLandroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    invoke-virtual {p3, p2, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method
