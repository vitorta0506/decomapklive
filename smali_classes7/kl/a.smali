.class public Lkl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 0

    invoke-static {p0}, Lkl/a;->b(I)I

    move-result p0

    return p0
.end method

.method private static b(I)I
    .locals 1

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static c(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lkl/a;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static d(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
