.class public Lmd/c;
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
.method public a(Landroid/graphics/Canvas;Lfd/a;III)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p2, Lgd/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p2, Lgd/a;

    .line 3
    iget-object v0, p0, Lmd/a;->b:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->m()I

    move-result v0

    int-to-float v0, v0

    .line 4
    iget-object v1, p0, Lmd/a;->b:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->p()I

    move-result v1

    .line 5
    iget-object v2, p0, Lmd/a;->b:Lkd/a;

    invoke-virtual {v2}, Lkd/a;->q()I

    move-result v2

    .line 6
    iget-object v3, p0, Lmd/a;->b:Lkd/a;

    invoke-virtual {v3}, Lkd/a;->r()I

    move-result v3

    .line 7
    iget-object v4, p0, Lmd/a;->b:Lkd/a;

    invoke-virtual {v4}, Lkd/a;->f()I

    move-result v4

    .line 8
    iget-object v5, p0, Lmd/a;->b:Lkd/a;

    invoke-virtual {v5}, Lkd/a;->z()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne p3, v3, :cond_1

    .line 9
    invoke-virtual {p2}, Lgd/a;->a()I

    move-result v1

    goto :goto_0

    :cond_1
    if-ne p3, v2, :cond_4

    .line 10
    invoke-virtual {p2}, Lgd/a;->b()I

    move-result v1

    goto :goto_0

    :cond_2
    if-ne p3, v2, :cond_3

    .line 11
    invoke-virtual {p2}, Lgd/a;->a()I

    move-result v1

    goto :goto_0

    :cond_3
    if-ne p3, v4, :cond_4

    .line 12
    invoke-virtual {p2}, Lgd/a;->b()I

    move-result v1

    .line 13
    :cond_4
    :goto_0
    iget-object p2, p0, Lmd/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p4

    int-to-float p3, p5

    .line 14
    iget-object p4, p0, Lmd/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
