.class public Lmd/h;
.super Lmd/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Lkd/a;)V
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lkd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lmd/a;-><init>(Landroid/graphics/Paint;Lkd/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lfd/a;II)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p2, Lgd/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p2, Lgd/e;

    .line 3
    invoke-virtual {p2}, Lgd/e;->a()I

    move-result p2

    .line 4
    iget-object v0, p0, Lmd/a;->b:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->t()I

    move-result v0

    .line 5
    iget-object v1, p0, Lmd/a;->b:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->p()I

    move-result v1

    .line 6
    iget-object v2, p0, Lmd/a;->b:Lkd/a;

    invoke-virtual {v2}, Lkd/a;->m()I

    move-result v2

    .line 7
    iget-object v3, p0, Lmd/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float v0, v2

    .line 8
    iget-object v2, p0, Lmd/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 9
    iget-object v2, p0, Lmd/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v1, p0, Lmd/a;->b:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->g()Lcom/rd/draw/data/Orientation;

    move-result-object v1

    sget-object v2, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    if-ne v1, v2, :cond_1

    int-to-float p2, p2

    .line 11
    iget-object p3, p0, Lmd/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, v0, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    .line 12
    iget-object p4, p0, Lmd/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, v0, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method
