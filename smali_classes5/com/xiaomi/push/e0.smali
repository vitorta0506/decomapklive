.class public final Lcom/xiaomi/push/e0;
.super Lcom/xiaomi/push/g2;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/xiaomi/push/a;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/push/g2;-><init>()V

    sget-object v0, Lcom/xiaomi/push/a;->c:Lcom/xiaomi/push/a;

    iput-object v0, p0, Lcom/xiaomi/push/e0;->b:Lcom/xiaomi/push/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/e0;->c:I

    return-void
.end method

.method public static m([B)Lcom/xiaomi/push/e0;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/e0;

    invoke-direct {v0}, Lcom/xiaomi/push/e0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/g2;->c([B)Lcom/xiaomi/push/g2;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/e0;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/e0;->c:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/e0;->i()I

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/e0;->c:I

    return v0
.end method

.method public bridge synthetic b(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/g2;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/e0;->l(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/e0;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/xiaomi/push/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/e0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/e0;->j()Lcom/xiaomi/push/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->v(ILcom/xiaomi/push/a;)V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/e0;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/e0;->j()Lcom/xiaomi/push/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->e(ILcom/xiaomi/push/a;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    iput v1, p0, Lcom/xiaomi/push/e0;->c:I

    return v1
.end method

.method public j()Lcom/xiaomi/push/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/e0;->b:Lcom/xiaomi/push/a;

    return-object v0
.end method

.method public k(Lcom/xiaomi/push/a;)Lcom/xiaomi/push/e0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/e0;->a:Z

    iput-object p1, p0, Lcom/xiaomi/push/e0;->b:Lcom/xiaomi/push/a;

    return-object p0
.end method

.method public l(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/e0;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->b()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/g2;->g(Lcom/xiaomi/push/l0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->e()Lcom/xiaomi/push/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/e0;->k(Lcom/xiaomi/push/a;)Lcom/xiaomi/push/e0;

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/e0;->a:Z

    return v0
.end method
