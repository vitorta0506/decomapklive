.class public final Lll/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lll/e;)Lll/d;
    .locals 1

    .line 1
    new-instance v0, Lll/c;

    invoke-direct {v0, p0}, Lll/c;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-interface {v0, p1}, Lll/d;->setOnGestureListener(Lll/e;)V

    return-object v0
.end method
