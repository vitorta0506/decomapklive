.class Lme/gujun/android/taggroup/TagGroup$f$e;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/gujun/android/taggroup/TagGroup$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lme/gujun/android/taggroup/TagGroup$f;


# direct methods
.method public constructor <init>(Lme/gujun/android/taggroup/TagGroup$f;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f$e;->a:Lme/gujun/android/taggroup/TagGroup$f;

    .line 2
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 1
    new-instance p1, Landroid/view/KeyEvent;

    const/4 p2, 0x0

    const/16 v1, 0x43

    invoke-direct {p1, p2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method
