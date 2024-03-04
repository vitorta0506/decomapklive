.class public Lf/f;
.super Lf/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/g<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln/a<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lf/g;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method bridge synthetic i(Ln/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf/f;->r(Ln/a;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public p()I
    .locals 2

    invoke-virtual {p0}, Lf/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {p0}, Lf/a;->d()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lf/f;->q(Ln/a;F)I

    move-result v0

    return v0
.end method

.method q(Ln/a;F)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/a<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Ln/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Ln/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lf/a;->e:Ln/c;

    if-eqz v1, :cond_0

    .line 3
    iget v2, p1, Ln/a;->g:F

    iget-object v0, p1, Ln/a;->h:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Ln/a;->b:Ljava/lang/Object;

    iget-object v5, p1, Ln/a;->c:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lf/a;->e()F

    move-result v7

    invoke-virtual {p0}, Lf/a;->f()F

    move-result v8

    move v6, p2

    .line 5
    invoke-virtual/range {v1 .. v8}, Ln/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Ln/a;->g()I

    move-result v0

    invoke-virtual {p1}, Ln/a;->d()I

    move-result p1

    invoke-static {v0, p1, p2}, Lm/g;->l(IIF)I

    move-result p1

    return p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method r(Ln/a;F)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/a<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lf/f;->q(Ln/a;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
