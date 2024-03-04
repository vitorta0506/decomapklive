.class public final Lcom/xiaomi/push/z;
.super Lcom/xiaomi/push/g2;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/push/g2;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/z;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/z;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/z;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/z;->h:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/z;->i:I

    return-void
.end method

.method public static m([B)Lcom/xiaomi/push/z;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/z;

    invoke-direct {v0}, Lcom/xiaomi/push/z;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/g2;->c([B)Lcom/xiaomi/push/g2;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/z;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/z;->i:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/z;->i()I

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/z;->i:I

    return v0
.end method

.method public bridge synthetic b(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/g2;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/z;->j(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/z;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/xiaomi/push/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/z;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/z;->o()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->y(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/z;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/z;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->x(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/z;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/z;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->x(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/z;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/z;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->x(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/z;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/z;->o()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->h(IZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/z;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/z;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/z;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/z;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/z;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/z;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iput v1, p0, Lcom/xiaomi/push/z;->i:I

    return v1
.end method

.method public j(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/z;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->b()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/g2;->g(Lcom/xiaomi/push/l0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/z;->s(Ljava/lang/String;)Lcom/xiaomi/push/z;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/z;->p(Ljava/lang/String;)Lcom/xiaomi/push/z;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/z;->k(Ljava/lang/String;)Lcom/xiaomi/push/z;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/z;->l(Z)Lcom/xiaomi/push/z;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/xiaomi/push/z;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/z;->c:Z

    iput-object p1, p0, Lcom/xiaomi/push/z;->d:Ljava/lang/String;

    return-object p0
.end method

.method public l(Z)Lcom/xiaomi/push/z;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/z;->a:Z

    iput-boolean p1, p0, Lcom/xiaomi/push/z;->b:Z

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/z;->d:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/z;->b:Z

    return v0
.end method

.method public p(Ljava/lang/String;)Lcom/xiaomi/push/z;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/z;->e:Z

    iput-object p1, p0, Lcom/xiaomi/push/z;->f:Ljava/lang/String;

    return-object p0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/z;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/z;->a:Z

    return v0
.end method

.method public s(Ljava/lang/String;)Lcom/xiaomi/push/z;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/z;->g:Z

    iput-object p1, p0, Lcom/xiaomi/push/z;->h:Ljava/lang/String;

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/z;->h:Ljava/lang/String;

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/z;->c:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/z;->e:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/z;->g:Z

    return v0
.end method
