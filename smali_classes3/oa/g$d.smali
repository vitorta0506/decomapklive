.class public Loa/g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loa/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field final a:Loa/g$e;

.field final synthetic b:Loa/g;


# direct methods
.method public constructor <init>(Loa/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/g$d;->b:Loa/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Loa/g;->c()Loa/g$e;

    move-result-object p1

    iput-object p1, p0, Loa/g$d;->a:Loa/g$e;

    return-void
.end method


# virtual methods
.method public a(Loa/g$c;)V
    .locals 3

    iget-object v0, p0, Loa/g$d;->b:Loa/g;

    iget-object v1, v0, Loa/g;->g:Loa/c;

    invoke-interface {p1}, Loa/g$c;->c()I

    move-result p1

    invoke-virtual {p0}, Loa/g$d;->c()I

    move-result v2

    invoke-interface {v1, v0, p1, v2}, Loa/c;->a(Loa/b;II)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Loa/g$d;->b:Loa/g;

    iget-object v0, v0, Loa/g;->b:Lpa/a;

    invoke-interface {v0}, Lpa/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Loa/g$d;->a:Loa/g$e;

    invoke-virtual {v1, v0, p1}, Loa/g$e;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Loa/g$d;->b:Loa/g;

    iget-object v0, v0, Loa/g;->b:Lpa/a;

    invoke-interface {v0}, Lpa/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Loa/g$d;->a:Loa/g$e;

    iget-boolean v0, v0, Loa/g$e;->c:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Loa/g$d;->b:Loa/g;

    iget-object v0, v0, Loa/g;->b:Lpa/a;

    .line 4
    invoke-interface {v0}, Lpa/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Loa/g$d;->a:Loa/g$e;

    iget-boolean v0, v0, Loa/g$e;->c:Z

    if-nez v0, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Loa/g$d;->b:Loa/g;

    iget-object v0, v0, Loa/g;->a:Loa/g$f;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Loa/g$f;->a:I

    .line 6
    iget-object v0, p0, Loa/g$d;->b:Loa/g;

    iget-object v1, v0, Loa/g;->a:Loa/g$f;

    iget-object v2, p0, Loa/g$d;->a:Loa/g$e;

    iget v3, v2, Loa/g$e;->a:F

    iput v3, v1, Loa/g$f;->b:F

    .line 7
    iget-boolean v2, v2, Loa/g$e;->c:Z

    iput-boolean v2, v1, Loa/g$f;->c:Z

    .line 8
    iget-object v1, v0, Loa/g;->d:Loa/g$g;

    invoke-virtual {v0, v1}, Loa/g;->e(Loa/g$c;)V

    .line 9
    iget-object v0, p0, Loa/g$d;->b:Loa/g;

    iget-object v0, v0, Loa/g;->d:Loa/g$g;

    invoke-virtual {v0, p1}, Loa/g$g;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method
