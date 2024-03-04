.class public Loa/g$g;
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
    name = "g"
.end annotation


# instance fields
.field protected final a:F

.field protected final b:F

.field final c:Loa/g$e;

.field d:I

.field final synthetic e:Loa/g;


# direct methods
.method public constructor <init>(Loa/g;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Loa/g$g;->e:Loa/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Loa/g;->c()Loa/g$e;

    move-result-object p1

    iput-object p1, p0, Loa/g$g;->c:Loa/g$e;

    .line 3
    iput p2, p0, Loa/g$g;->a:F

    .line 4
    iput p3, p0, Loa/g$g;->b:F

    return-void
.end method


# virtual methods
.method public a(Loa/g$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Loa/g$g;->e:Loa/g;

    iget-object v1, v0, Loa/g;->a:Loa/g$f;

    iget-boolean v1, v1, Loa/g$f;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Loa/g$g;->d:I

    .line 2
    iget-object v1, v0, Loa/g;->g:Loa/c;

    invoke-interface {p1}, Loa/g$c;->c()I

    move-result p1

    invoke-virtual {p0}, Loa/g$g;->c()I

    move-result v2

    invoke-interface {v1, v0, p1, v2}, Loa/c;->a(Loa/b;II)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Loa/g$g;->e:Loa/g;

    iget-object v0, p1, Loa/g;->e:Loa/g$b;

    invoke-virtual {p1, v0}, Loa/g;->e(Loa/g$c;)V

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Loa/g$g;->d:I

    return v0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Loa/g$g;->e:Loa/g;

    iget-object v0, v0, Loa/g;->a:Loa/g$f;

    iget v0, v0, Loa/g$f;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 2
    iget-object p1, p0, Loa/g$g;->e:Loa/g;

    iget-object v0, p1, Loa/g;->e:Loa/g$b;

    invoke-virtual {p1, v0}, Loa/g;->e(Loa/g$c;)V

    return v3

    .line 3
    :cond_0
    iget-object v0, p0, Loa/g$g;->e:Loa/g;

    iget-object v0, v0, Loa/g;->b:Lpa/a;

    invoke-interface {v0}, Lpa/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v2, p0, Loa/g$g;->c:Loa/g$e;

    invoke-virtual {v2, v0, p1}, Loa/g$e;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 5
    :cond_1
    iget-object v2, p0, Loa/g$g;->c:Loa/g$e;

    iget v4, v2, Loa/g$e;->b:F

    iget-boolean v5, v2, Loa/g$e;->c:Z

    iget-object v6, p0, Loa/g$g;->e:Loa/g;

    iget-object v7, v6, Loa/g;->a:Loa/g$f;

    iget-boolean v8, v7, Loa/g$f;->c:Z

    if-ne v5, v8, :cond_2

    iget v9, p0, Loa/g$g;->a:F

    goto :goto_0

    :cond_2
    iget v9, p0, Loa/g$g;->b:F

    :goto_0
    div-float/2addr v4, v9

    .line 6
    iget v2, v2, Loa/g$e;->a:F

    add-float/2addr v2, v4

    if-eqz v8, :cond_3

    if-nez v5, :cond_3

    .line 7
    iget v9, v7, Loa/g$f;->b:F

    cmpg-float v9, v2, v9

    if-lez v9, :cond_4

    :cond_3
    if-nez v8, :cond_5

    if-eqz v5, :cond_5

    iget v5, v7, Loa/g$f;->b:F

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_5

    .line 8
    :cond_4
    iget v1, v7, Loa/g$f;->b:F

    invoke-virtual {v6, v0, v1, p1}, Loa/g;->g(Landroid/view/View;FLandroid/view/MotionEvent;)V

    .line 9
    iget-object p1, p0, Loa/g$g;->e:Loa/g;

    iget-object v0, p1, Loa/g;->h:Loa/d;

    iget v1, p0, Loa/g$g;->d:I

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Loa/d;->a(Loa/b;IF)V

    .line 10
    iget-object p1, p0, Loa/g$g;->e:Loa/g;

    iget-object v0, p1, Loa/g;->c:Loa/g$d;

    invoke-virtual {p1, v0}, Loa/g;->e(Loa/g$c;)V

    return v3

    .line 11
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 13
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_7

    .line 14
    iget-object p1, p0, Loa/g$g;->e:Loa/g;

    long-to-float v1, v5

    div-float/2addr v4, v1

    iput v4, p1, Loa/g;->i:F

    .line 15
    :cond_7
    iget-object p1, p0, Loa/g$g;->e:Loa/g;

    invoke-virtual {p1, v0, v2}, Loa/g;->f(Landroid/view/View;F)V

    .line 16
    iget-object p1, p0, Loa/g$g;->e:Loa/g;

    iget-object v0, p1, Loa/g;->h:Loa/d;

    iget v1, p0, Loa/g$g;->d:I

    invoke-interface {v0, p1, v1, v2}, Loa/d;->a(Loa/b;IF)V

    return v3
.end method
