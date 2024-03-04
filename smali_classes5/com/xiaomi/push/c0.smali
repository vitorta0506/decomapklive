.class public final Lcom/xiaomi/push/c0;
.super Lcom/xiaomi/push/g2;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/push/g2;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/c0;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/c0;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/c0;->f:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/c0;->g:I

    return-void
.end method

.method public static l([B)Lcom/xiaomi/push/c0;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/c0;

    invoke-direct {v0}, Lcom/xiaomi/push/c0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/g2;->c([B)Lcom/xiaomi/push/g2;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/c0;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/c0;->g:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->i()I

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/c0;->g:I

    return v0
.end method

.method public bridge synthetic b(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/g2;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/c0;->j(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/c0;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/xiaomi/push/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->x(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->x(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->x(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/c0;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iput v1, p0, Lcom/xiaomi/push/c0;->g:I

    return v1
.end method

.method public j(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/c0;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->b()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/g2;->g(Lcom/xiaomi/push/l0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/c0;->r(Ljava/lang/String;)Lcom/xiaomi/push/c0;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/c0;->o(Ljava/lang/String;)Lcom/xiaomi/push/c0;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/c0;->k(Ljava/lang/String;)Lcom/xiaomi/push/c0;

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/xiaomi/push/c0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/c0;->a:Z

    iput-object p1, p0, Lcom/xiaomi/push/c0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/c0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/c0;->a:Z

    return v0
.end method

.method public o(Ljava/lang/String;)Lcom/xiaomi/push/c0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/c0;->c:Z

    iput-object p1, p0, Lcom/xiaomi/push/c0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/c0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/c0;->c:Z

    return v0
.end method

.method public r(Ljava/lang/String;)Lcom/xiaomi/push/c0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/c0;->e:Z

    iput-object p1, p0, Lcom/xiaomi/push/c0;->f:Ljava/lang/String;

    return-object p0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/c0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/c0;->e:Z

    return v0
.end method
