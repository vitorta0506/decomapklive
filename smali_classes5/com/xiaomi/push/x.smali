.class public final Lcom/xiaomi/push/x;
.super Lcom/xiaomi/push/g2;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Z

.field private f:I

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/push/g2;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/x;->b:Z

    iput v0, p0, Lcom/xiaomi/push/x;->d:I

    iput v0, p0, Lcom/xiaomi/push/x;->f:I

    iput v0, p0, Lcom/xiaomi/push/x;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/x;->i:I

    return-void
.end method

.method public static m([B)Lcom/xiaomi/push/x;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/x;

    invoke-direct {v0}, Lcom/xiaomi/push/x;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/g2;->c([B)Lcom/xiaomi/push/g2;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/x;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/x;->i:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/x;->i()I

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/x;->i:I

    return v0
.end method

.method public bridge synthetic b(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/g2;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/x;->k(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/x;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/xiaomi/push/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/x;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/x;->n()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->y(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/x;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/x;->q()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->t(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/x;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/x;->t()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->t(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/x;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/x;->v()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->t(II)V

    :cond_3
    return-void
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/x;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/x;->n()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->h(IZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/x;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/x;->q()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/x;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/x;->t()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/x;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/x;->v()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iput v1, p0, Lcom/xiaomi/push/x;->i:I

    return v1
.end method

.method public j(I)Lcom/xiaomi/push/x;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/x;->c:Z

    iput p1, p0, Lcom/xiaomi/push/x;->d:I

    return-object p0
.end method

.method public k(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/x;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->b()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/g2;->g(Lcom/xiaomi/push/l0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/x;->r(I)Lcom/xiaomi/push/x;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/x;->o(I)Lcom/xiaomi/push/x;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/x;->j(I)Lcom/xiaomi/push/x;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/x;->l(Z)Lcom/xiaomi/push/x;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public l(Z)Lcom/xiaomi/push/x;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/x;->a:Z

    iput-boolean p1, p0, Lcom/xiaomi/push/x;->b:Z

    return-object p0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/x;->b:Z

    return v0
.end method

.method public o(I)Lcom/xiaomi/push/x;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/x;->e:Z

    iput p1, p0, Lcom/xiaomi/push/x;->f:I

    return-object p0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/x;->a:Z

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/x;->d:I

    return v0
.end method

.method public r(I)Lcom/xiaomi/push/x;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/x;->g:Z

    iput p1, p0, Lcom/xiaomi/push/x;->h:I

    return-object p0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/x;->c:Z

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/x;->f:I

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/x;->e:Z

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/x;->h:I

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/x;->g:Z

    return v0
.end method
