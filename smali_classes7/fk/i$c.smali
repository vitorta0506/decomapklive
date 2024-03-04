.class public abstract Lfk/i$c;
.super Lfk/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method protected constructor <init>(Lfk/e;Lfk/f;Lfk/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lfk/i;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-void
.end method

.method protected constructor <init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lfk/i;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-void
.end method


# virtual methods
.method protected A()Z
    .locals 7

    iget-object v0, p0, Lfk/i;->b:Lfk/f;

    iget-object v1, p0, Lfk/i;->c:Lfk/f;

    iget-object v2, p0, Lfk/i;->a:Lfk/e;

    invoke-virtual {v2}, Lfk/e;->l()Lfk/f;

    move-result-object v2

    iget-object v3, p0, Lfk/i;->a:Lfk/e;

    invoke-virtual {v3}, Lfk/e;->m()Lfk/f;

    move-result-object v3

    invoke-virtual {v1}, Lfk/f;->o()Lfk/f;

    move-result-object v1

    invoke-virtual {p0}, Lfk/i;->j()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v4, p0, Lfk/i;->d:[Lfk/f;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lfk/f;->h()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lfk/f;->o()Lfk/f;

    move-result-object v4

    invoke-virtual {v4}, Lfk/f;->o()Lfk/f;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v4

    invoke-virtual {v2, v5}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v3, v4}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lfk/i;->d:[Lfk/f;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lfk/f;->h()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lfk/f;->o()Lfk/f;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v6

    invoke-virtual {v1, v4}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v2, v5}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v3, v6}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lfk/f;->o()Lfk/f;

    move-result-object v4

    invoke-virtual {v4, v2}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public C(Lfk/i;)Lfk/i;
    .locals 1

    invoke-virtual {p1}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lfk/i;->x()Lfk/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfk/i;->a(Lfk/i;)Lfk/i;

    move-result-object p1

    return-object p1
.end method

.method protected h()Z
    .locals 1

    invoke-virtual {p0}, Lfk/i;->g()Lfk/f;

    move-result-object v0

    invoke-virtual {v0}, Lfk/f;->s()Z

    move-result v0

    return v0
.end method
