.class public final Lcom/xiaomi/push/a0;
.super Lcom/xiaomi/push/g2;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lcom/xiaomi/push/x;

.field private s:Z

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/push/g2;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/a0;->b:I

    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/a0;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/push/a0;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/push/a0;->h:Ljava/lang/String;

    iput v0, p0, Lcom/xiaomi/push/a0;->j:I

    iput-object v1, p0, Lcom/xiaomi/push/a0;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/push/a0;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/push/a0;->p:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/push/a0;->r:Lcom/xiaomi/push/x;

    iput v0, p0, Lcom/xiaomi/push/a0;->t:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/a0;->u:I

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/xiaomi/push/a0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/a0;->k:Z

    iput-object p1, p0, Lcom/xiaomi/push/a0;->l:Ljava/lang/String;

    return-object p0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/a0;->l:Ljava/lang/String;

    return-object v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/a0;->g:Z

    return v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/a0;->t:I

    return v0
.end method

.method public E(Ljava/lang/String;)Lcom/xiaomi/push/a0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/a0;->m:Z

    iput-object p1, p0, Lcom/xiaomi/push/a0;->n:Ljava/lang/String;

    return-object p0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/a0;->n:Ljava/lang/String;

    return-object v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/a0;->i:Z

    return v0
.end method

.method public H(Ljava/lang/String;)Lcom/xiaomi/push/a0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/a0;->o:Z

    iput-object p1, p0, Lcom/xiaomi/push/a0;->p:Ljava/lang/String;

    return-object p0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/a0;->p:Ljava/lang/String;

    return-object v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/a0;->k:Z

    return v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/a0;->m:Z

    return v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/a0;->o:Z

    return v0
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/a0;->q:Z

    return v0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/a0;->s:Z

    return v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/a0;->u:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->i()I

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/a0;->u:I

    return v0
.end method

.method public bridge synthetic b(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/g2;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/a0;->m(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/a0;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/xiaomi/push/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->u()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->L(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->x(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->x(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->x(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->z()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->t(II)V

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->J()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->x(ILjava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->K()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->x(ILjava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->x(ILjava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->M()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->j()Lcom/xiaomi/push/x;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->w(ILcom/xiaomi/push/g2;)V

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->N()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->D()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->t(II)V

    :cond_9
    return-void
.end method

.method public i()I
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->u()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->H(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->z()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->J()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->K()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->g(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->M()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->j()Lcom/xiaomi/push/x;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->f(ILcom/xiaomi/push/g2;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->N()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/a0;->D()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    iput v1, p0, Lcom/xiaomi/push/a0;->u:I

    return v1
.end method

.method public j()Lcom/xiaomi/push/x;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/a0;->r:Lcom/xiaomi/push/x;

    return-object v0
.end method

.method public k(I)Lcom/xiaomi/push/a0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/a0;->a:Z

    iput p1, p0, Lcom/xiaomi/push/a0;->b:I

    return-object p0
.end method

.method public l(Lcom/xiaomi/push/x;)Lcom/xiaomi/push/a0;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/a0;->q:Z

    iput-object p1, p0, Lcom/xiaomi/push/a0;->r:Lcom/xiaomi/push/x;

    return-object p0
.end method

.method public m(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/a0;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/g2;->g(Lcom/xiaomi/push/l0;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/a0;->v(I)Lcom/xiaomi/push/a0;

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/xiaomi/push/x;

    invoke-direct {v0}, Lcom/xiaomi/push/x;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/l0;->k(Lcom/xiaomi/push/g2;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/a0;->l(Lcom/xiaomi/push/x;)Lcom/xiaomi/push/a0;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/a0;->H(Ljava/lang/String;)Lcom/xiaomi/push/a0;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/a0;->E(Ljava/lang/String;)Lcom/xiaomi/push/a0;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/a0;->A(Ljava/lang/String;)Lcom/xiaomi/push/a0;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/a0;->q(I)Lcom/xiaomi/push/a0;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/a0;->w(Ljava/lang/String;)Lcom/xiaomi/push/a0;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/a0;->r(Ljava/lang/String;)Lcom/xiaomi/push/a0;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/a0;->n(Ljava/lang/String;)Lcom/xiaomi/push/a0;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/xiaomi/push/l0;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/a0;->k(I)Lcom/xiaomi/push/a0;

    goto :goto_0

    :sswitch_a
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x28 -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public n(Ljava/lang/String;)Lcom/xiaomi/push/a0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/a0;->c:Z

    iput-object p1, p0, Lcom/xiaomi/push/a0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/a0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/a0;->a:Z

    return v0
.end method

.method public q(I)Lcom/xiaomi/push/a0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/a0;->i:Z

    iput p1, p0, Lcom/xiaomi/push/a0;->j:I

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/xiaomi/push/a0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/a0;->e:Z

    iput-object p1, p0, Lcom/xiaomi/push/a0;->f:Ljava/lang/String;

    return-object p0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/a0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/a0;->c:Z

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/a0;->b:I

    return v0
.end method

.method public v(I)Lcom/xiaomi/push/a0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/a0;->s:Z

    iput p1, p0, Lcom/xiaomi/push/a0;->t:I

    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/xiaomi/push/a0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/a0;->g:Z

    iput-object p1, p0, Lcom/xiaomi/push/a0;->h:Ljava/lang/String;

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/a0;->h:Ljava/lang/String;

    return-object v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/a0;->e:Z

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/a0;->j:I

    return v0
.end method
