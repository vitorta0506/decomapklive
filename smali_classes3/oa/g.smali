.class public abstract Loa/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loa/b;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loa/g$b;,
        Loa/g$g;,
        Loa/g$d;,
        Loa/g$c;,
        Loa/g$a;,
        Loa/g$f;,
        Loa/g$e;
    }
.end annotation


# instance fields
.field protected final a:Loa/g$f;

.field protected final b:Lpa/a;

.field protected final c:Loa/g$d;

.field protected final d:Loa/g$g;

.field protected final e:Loa/g$b;

.field protected f:Loa/g$c;

.field protected g:Loa/c;

.field protected h:Loa/d;

.field protected i:F


# direct methods
.method public constructor <init>(Lpa/a;FFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Loa/g$f;

    invoke-direct {v0}, Loa/g$f;-><init>()V

    iput-object v0, p0, Loa/g;->a:Loa/g$f;

    .line 3
    new-instance v0, Loa/e;

    invoke-direct {v0}, Loa/e;-><init>()V

    iput-object v0, p0, Loa/g;->g:Loa/c;

    .line 4
    new-instance v0, Loa/f;

    invoke-direct {v0}, Loa/f;-><init>()V

    iput-object v0, p0, Loa/g;->h:Loa/d;

    .line 5
    iput-object p1, p0, Loa/g;->b:Lpa/a;

    .line 6
    new-instance p1, Loa/g$b;

    invoke-direct {p1, p0, p2}, Loa/g$b;-><init>(Loa/g;F)V

    iput-object p1, p0, Loa/g;->e:Loa/g$b;

    .line 7
    new-instance p1, Loa/g$g;

    invoke-direct {p1, p0, p3, p4}, Loa/g$g;-><init>(Loa/g;FF)V

    iput-object p1, p0, Loa/g;->d:Loa/g$g;

    .line 8
    new-instance p1, Loa/g$d;

    invoke-direct {p1, p0}, Loa/g$d;-><init>(Loa/g;)V

    iput-object p1, p0, Loa/g;->c:Loa/g$d;

    .line 9
    iput-object p1, p0, Loa/g;->f:Loa/g$c;

    .line 10
    invoke-virtual {p0}, Loa/g;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Loa/g;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    invoke-virtual {p0}, Loa/g;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method protected abstract b()Loa/g$a;
.end method

.method protected abstract c()Loa/g$e;
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Loa/g;->b:Lpa/a;

    invoke-interface {v0}, Lpa/a;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected e(Loa/g$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Loa/g;->f:Loa/g$c;

    .line 2
    iput-object p1, p0, Loa/g;->f:Loa/g$c;

    .line 3
    invoke-interface {p1, v0}, Loa/g$c;->a(Loa/g$c;)V

    return-void
.end method

.method protected abstract f(Landroid/view/View;F)V
.end method

.method protected abstract g(Landroid/view/View;FLandroid/view/MotionEvent;)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Loa/g;->f:Loa/g$c;

    invoke-interface {p1, p2}, Loa/g$c;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    iget-object p1, p0, Loa/g;->f:Loa/g$c;

    invoke-interface {p1, p2}, Loa/g$c;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
