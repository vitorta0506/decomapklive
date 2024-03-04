.class public Lorg/light/utils/TouchEventUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final ACTION_ILLEGAL:I = -0x1
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final ACTION_MOVE:I = 0x2
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x3
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final ACTION_POINTER_UP:I = 0x4
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final ACTION_UP:I = 0x1
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventAction(Landroid/view/MotionEvent;)I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
