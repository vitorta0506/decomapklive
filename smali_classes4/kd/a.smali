.class public Lkd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Lcom/rd/draw/data/RtlMode;

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:J

.field private s:J

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Lcom/rd/draw/data/Orientation;

.field private z:Lcom/rd/animation/type/AnimationType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lkd/a;->t:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lkd/a;->x:I

    return-void
.end method


# virtual methods
.method public A(J)V
    .locals 0

    iput-wide p1, p0, Lkd/a;->s:J

    return-void
.end method

.method public B(Lcom/rd/animation/type/AnimationType;)V
    .locals 0

    iput-object p1, p0, Lkd/a;->z:Lcom/rd/animation/type/AnimationType;

    return-void
.end method

.method public C(Z)V
    .locals 0

    iput-boolean p1, p0, Lkd/a;->n:Z

    return-void
.end method

.method public D(I)V
    .locals 0

    iput p1, p0, Lkd/a;->t:I

    return-void
.end method

.method public E(Z)V
    .locals 0

    iput-boolean p1, p0, Lkd/a;->o:Z

    return-void
.end method

.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, Lkd/a;->p:Z

    return-void
.end method

.method public G(I)V
    .locals 0

    iput p1, p0, Lkd/a;->a:I

    return-void
.end method

.method public H(Z)V
    .locals 0

    iput-boolean p1, p0, Lkd/a;->q:Z

    return-void
.end method

.method public I(J)V
    .locals 0

    iput-wide p1, p0, Lkd/a;->r:J

    return-void
.end method

.method public J(Z)V
    .locals 0

    iput-boolean p1, p0, Lkd/a;->m:Z

    return-void
.end method

.method public K(I)V
    .locals 0

    iput p1, p0, Lkd/a;->w:I

    return-void
.end method

.method public L(Lcom/rd/draw/data/Orientation;)V
    .locals 0

    iput-object p1, p0, Lkd/a;->y:Lcom/rd/draw/data/Orientation;

    return-void
.end method

.method public M(I)V
    .locals 0

    iput p1, p0, Lkd/a;->d:I

    return-void
.end method

.method public N(I)V
    .locals 0

    iput p1, p0, Lkd/a;->h:I

    return-void
.end method

.method public O(I)V
    .locals 0

    iput p1, p0, Lkd/a;->e:I

    return-void
.end method

.method public P(I)V
    .locals 0

    iput p1, p0, Lkd/a;->g:I

    return-void
.end method

.method public Q(I)V
    .locals 0

    iput p1, p0, Lkd/a;->f:I

    return-void
.end method

.method public R(I)V
    .locals 0

    iput p1, p0, Lkd/a;->c:I

    return-void
.end method

.method public S(Lcom/rd/draw/data/RtlMode;)V
    .locals 0

    iput-object p1, p0, Lkd/a;->A:Lcom/rd/draw/data/RtlMode;

    return-void
.end method

.method public T(F)V
    .locals 0

    iput p1, p0, Lkd/a;->j:F

    return-void
.end method

.method public U(I)V
    .locals 0

    iput p1, p0, Lkd/a;->l:I

    return-void
.end method

.method public V(I)V
    .locals 0

    iput p1, p0, Lkd/a;->u:I

    return-void
.end method

.method public W(I)V
    .locals 0

    iput p1, p0, Lkd/a;->v:I

    return-void
.end method

.method public X(I)V
    .locals 0

    iput p1, p0, Lkd/a;->i:I

    return-void
.end method

.method public Y(I)V
    .locals 0

    iput p1, p0, Lkd/a;->k:I

    return-void
.end method

.method public Z(I)V
    .locals 0

    iput p1, p0, Lkd/a;->x:I

    return-void
.end method

.method public a()J
    .locals 2

    iget-wide v0, p0, Lkd/a;->s:J

    return-wide v0
.end method

.method public a0(I)V
    .locals 0

    iput p1, p0, Lkd/a;->b:I

    return-void
.end method

.method public b()Lcom/rd/animation/type/AnimationType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkd/a;->z:Lcom/rd/animation/type/AnimationType;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    iput-object v0, p0, Lkd/a;->z:Lcom/rd/animation/type/AnimationType;

    .line 3
    :cond_0
    iget-object v0, p0, Lkd/a;->z:Lcom/rd/animation/type/AnimationType;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lkd/a;->t:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lkd/a;->a:I

    return v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lkd/a;->r:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lkd/a;->w:I

    return v0
.end method

.method public g()Lcom/rd/draw/data/Orientation;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkd/a;->y:Lcom/rd/draw/data/Orientation;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    iput-object v0, p0, Lkd/a;->y:Lcom/rd/draw/data/Orientation;

    .line 3
    :cond_0
    iget-object v0, p0, Lkd/a;->y:Lcom/rd/draw/data/Orientation;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lkd/a;->d:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lkd/a;->h:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lkd/a;->e:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lkd/a;->g:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lkd/a;->f:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lkd/a;->c:I

    return v0
.end method

.method public n()Lcom/rd/draw/data/RtlMode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkd/a;->A:Lcom/rd/draw/data/RtlMode;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    iput-object v0, p0, Lkd/a;->A:Lcom/rd/draw/data/RtlMode;

    .line 3
    :cond_0
    iget-object v0, p0, Lkd/a;->A:Lcom/rd/draw/data/RtlMode;

    return-object v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Lkd/a;->j:F

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lkd/a;->l:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lkd/a;->u:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lkd/a;->v:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lkd/a;->i:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lkd/a;->k:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lkd/a;->x:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lkd/a;->b:I

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lkd/a;->n:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lkd/a;->o:Z

    return v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lkd/a;->p:Z

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lkd/a;->m:Z

    return v0
.end method
