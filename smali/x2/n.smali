.class public final Lx2/n;
.super Lcom/google/android/exoplayer2/f;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private A:I

.field private B:J

.field private final n:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final o:Lx2/m;

.field private final p:Lx2/j;

.field private final q:Lcom/google/android/exoplayer2/l1;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Lcom/google/android/exoplayer2/k1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:Lx2/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Lx2/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:Lx2/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z:Lx2/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx2/m;Landroid/os/Looper;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lx2/j;->a:Lx2/j;

    invoke-direct {p0, p1, p2, v0}, Lx2/n;-><init>(Lx2/m;Landroid/os/Looper;Lx2/j;)V

    return-void
.end method

.method public constructor <init>(Lx2/m;Landroid/os/Looper;Lx2/j;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/f;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx2/m;

    iput-object p1, p0, Lx2/n;->o:Lx2/m;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/l0;->t(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lx2/n;->n:Landroid/os/Handler;

    .line 5
    iput-object p3, p0, Lx2/n;->p:Lx2/j;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/l1;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/l1;-><init>()V

    iput-object p1, p0, Lx2/n;->q:Lcom/google/android/exoplayer2/l1;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lx2/n;->B:J

    return-void
.end method

.method private P()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lx2/n;->Y(Ljava/util/List;)V

    return-void
.end method

.method private Q()J
    .locals 4

    .line 1
    iget v0, p0, Lx2/n;->A:I

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lx2/n;->y:Lx2/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lx2/n;->A:I

    iget-object v3, p0, Lx2/n;->y:Lx2/l;

    invoke-virtual {v3}, Lx2/l;->d()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lx2/n;->y:Lx2/l;

    iget v1, p0, Lx2/n;->A:I

    invoke-virtual {v0, v1}, Lx2/l;->c(I)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method private R(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx2/n;->v:Lcom/google/android/exoplayer2/k1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-direct {p0}, Lx2/n;->P()V

    .line 3
    invoke-direct {p0}, Lx2/n;->W()V

    return-void
.end method

.method private S()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lx2/n;->t:Z

    .line 2
    iget-object v0, p0, Lx2/n;->p:Lx2/j;

    iget-object v1, p0, Lx2/n;->v:Lcom/google/android/exoplayer2/k1;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/k1;

    invoke-interface {v0, v1}, Lx2/j;->b(Lcom/google/android/exoplayer2/k1;)Lx2/i;

    move-result-object v0

    iput-object v0, p0, Lx2/n;->w:Lx2/i;

    return-void
.end method

.method private T(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx2/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx2/n;->o:Lx2/m;

    invoke-interface {v0, p1}, Lx2/m;->l(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lx2/n;->o:Lx2/m;

    new-instance v1, Lx2/e;

    invoke-direct {v1, p1}, Lx2/e;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Lx2/m;->k(Lx2/e;)V

    return-void
.end method

.method private U()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lx2/n;->x:Lx2/k;

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lx2/n;->A:I

    .line 3
    iget-object v1, p0, Lx2/n;->y:Lx2/l;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lb2/f;->p()V

    .line 5
    iput-object v0, p0, Lx2/n;->y:Lx2/l;

    .line 6
    :cond_0
    iget-object v1, p0, Lx2/n;->z:Lx2/l;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lb2/f;->p()V

    .line 8
    iput-object v0, p0, Lx2/n;->z:Lx2/l;

    :cond_1
    return-void
.end method

.method private V()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lx2/n;->U()V

    .line 2
    iget-object v0, p0, Lx2/n;->w:Lx2/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx2/i;

    invoke-interface {v0}, Lb2/d;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lx2/n;->w:Lx2/i;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lx2/n;->u:I

    return-void
.end method

.method private W()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx2/n;->V()V

    .line 2
    invoke-direct {p0}, Lx2/n;->S()V

    return-void
.end method

.method private Y(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx2/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx2/n;->n:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lx2/n;->T(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected F()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lx2/n;->v:Lcom/google/android/exoplayer2/k1;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lx2/n;->B:J

    .line 3
    invoke-direct {p0}, Lx2/n;->P()V

    .line 4
    invoke-direct {p0}, Lx2/n;->V()V

    return-void
.end method

.method protected H(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx2/n;->P()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lx2/n;->r:Z

    .line 3
    iput-boolean p1, p0, Lx2/n;->s:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide p1, p0, Lx2/n;->B:J

    .line 5
    iget p1, p0, Lx2/n;->u:I

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0}, Lx2/n;->W()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lx2/n;->U()V

    .line 8
    iget-object p1, p0, Lx2/n;->w:Lx2/i;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx2/i;

    invoke-interface {p1}, Lb2/d;->flush()V

    :goto_0
    return-void
.end method

.method protected L([Lcom/google/android/exoplayer2/k1;JJ)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    aget-object p1, p1, p2

    iput-object p1, p0, Lx2/n;->v:Lcom/google/android/exoplayer2/k1;

    .line 2
    iget-object p1, p0, Lx2/n;->w:Lx2/i;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lx2/n;->u:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lx2/n;->S()V

    :goto_0
    return-void
.end method

.method public X(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->n()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->f(Z)V

    .line 2
    iput-wide p1, p0, Lx2/n;->B:J

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/k1;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lx2/n;->p:Lx2/j;

    invoke-interface {v0, p1}, Lx2/j;->a(Lcom/google/android/exoplayer2/k1;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget p1, p1, Lcom/google/android/exoplayer2/k1;->E:I

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/v2;->a(I)I

    move-result p1

    return p1

    .line 4
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/k1;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/v;->n(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/v2;->a(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/v2;->a(I)I

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lx2/n;->s:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lx2/n;->T(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s(JJ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->n()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lx2/n;->B:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    .line 2
    invoke-direct {p0}, Lx2/n;->U()V

    .line 3
    iput-boolean p4, p0, Lx2/n;->s:Z

    .line 4
    :cond_0
    iget-boolean p3, p0, Lx2/n;->s:Z

    if-eqz p3, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p3, p0, Lx2/n;->z:Lx2/l;

    if-nez p3, :cond_2

    .line 6
    iget-object p3, p0, Lx2/n;->w:Lx2/i;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lx2/i;

    invoke-interface {p3, p1, p2}, Lx2/i;->a(J)V

    .line 7
    :try_start_0
    iget-object p3, p0, Lx2/n;->w:Lx2/i;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lx2/i;

    invoke-interface {p3}, Lb2/d;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lx2/l;

    iput-object p3, p0, Lx2/n;->z:Lx2/l;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-direct {p0, p1}, Lx2/n;->R(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    return-void

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p3, p0, Lx2/n;->y:Lx2/l;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 11
    invoke-direct {p0}, Lx2/n;->Q()J

    move-result-wide v2

    const/4 p3, 0x0

    :goto_1
    cmp-long v4, v2, p1

    if-gtz v4, :cond_5

    .line 12
    iget p3, p0, Lx2/n;->A:I

    add-int/2addr p3, p4

    iput p3, p0, Lx2/n;->A:I

    .line 13
    invoke-direct {p0}, Lx2/n;->Q()J

    move-result-wide v2

    const/4 p3, 0x1

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    .line 14
    :cond_5
    iget-object v2, p0, Lx2/n;->z:Lx2/l;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 15
    invoke-virtual {v2}, Lb2/a;->k()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p3, :cond_9

    .line 16
    invoke-direct {p0}, Lx2/n;->Q()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_9

    .line 17
    iget v2, p0, Lx2/n;->u:I

    if-ne v2, v0, :cond_6

    .line 18
    invoke-direct {p0}, Lx2/n;->W()V

    goto :goto_2

    .line 19
    :cond_6
    invoke-direct {p0}, Lx2/n;->U()V

    .line 20
    iput-boolean p4, p0, Lx2/n;->s:Z

    goto :goto_2

    .line 21
    :cond_7
    iget-wide v4, v2, Lb2/f;->b:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_9

    .line 22
    iget-object p3, p0, Lx2/n;->y:Lx2/l;

    if-eqz p3, :cond_8

    .line 23
    invoke-virtual {p3}, Lb2/f;->p()V

    .line 24
    :cond_8
    invoke-virtual {v2, p1, p2}, Lx2/l;->a(J)I

    move-result p3

    iput p3, p0, Lx2/n;->A:I

    .line 25
    iput-object v2, p0, Lx2/n;->y:Lx2/l;

    .line 26
    iput-object v3, p0, Lx2/n;->z:Lx2/l;

    const/4 p3, 0x1

    :cond_9
    :goto_2
    if-eqz p3, :cond_a

    .line 27
    iget-object p3, p0, Lx2/n;->y:Lx2/l;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p3, p0, Lx2/n;->y:Lx2/l;

    invoke-virtual {p3, p1, p2}, Lx2/l;->b(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lx2/n;->Y(Ljava/util/List;)V

    .line 29
    :cond_a
    iget p1, p0, Lx2/n;->u:I

    if-ne p1, v0, :cond_b

    return-void

    .line 30
    :cond_b
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lx2/n;->r:Z

    if-nez p1, :cond_13

    .line 31
    iget-object p1, p0, Lx2/n;->x:Lx2/k;

    if-nez p1, :cond_d

    .line 32
    iget-object p1, p0, Lx2/n;->w:Lx2/i;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx2/i;

    invoke-interface {p1}, Lb2/d;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx2/k;

    if-nez p1, :cond_c

    return-void

    .line 33
    :cond_c
    iput-object p1, p0, Lx2/n;->x:Lx2/k;

    .line 34
    :cond_d
    iget p2, p0, Lx2/n;->u:I

    if-ne p2, p4, :cond_e

    const/4 p2, 0x4

    .line 35
    invoke-virtual {p1, p2}, Lb2/a;->o(I)V

    .line 36
    iget-object p2, p0, Lx2/n;->w:Lx2/i;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx2/i;

    invoke-interface {p2, p1}, Lb2/d;->b(Ljava/lang/Object;)V

    .line 37
    iput-object v3, p0, Lx2/n;->x:Lx2/k;

    .line 38
    iput v0, p0, Lx2/n;->u:I

    return-void

    .line 39
    :cond_e
    iget-object p2, p0, Lx2/n;->q:Lcom/google/android/exoplayer2/l1;

    invoke-virtual {p0, p2, p1, v1}, Lcom/google/android/exoplayer2/f;->M(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_12

    .line 40
    invoke-virtual {p1}, Lb2/a;->k()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 41
    iput-boolean p4, p0, Lx2/n;->r:Z

    .line 42
    iput-boolean v1, p0, Lx2/n;->t:Z

    goto :goto_5

    .line 43
    :cond_f
    iget-object p2, p0, Lx2/n;->q:Lcom/google/android/exoplayer2/l1;

    iget-object p2, p2, Lcom/google/android/exoplayer2/l1;->b:Lcom/google/android/exoplayer2/k1;

    if-nez p2, :cond_10

    return-void

    .line 44
    :cond_10
    iget-wide p2, p2, Lcom/google/android/exoplayer2/k1;->p:J

    iput-wide p2, p1, Lx2/k;->i:J

    .line 45
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->r()V

    .line 46
    iget-boolean p2, p0, Lx2/n;->t:Z

    invoke-virtual {p1}, Lb2/a;->m()Z

    move-result p3

    if-nez p3, :cond_11

    const/4 p3, 0x1

    goto :goto_4

    :cond_11
    const/4 p3, 0x0

    :goto_4
    and-int/2addr p2, p3

    iput-boolean p2, p0, Lx2/n;->t:Z

    .line 47
    :goto_5
    iget-boolean p2, p0, Lx2/n;->t:Z

    if-nez p2, :cond_b

    .line 48
    iget-object p2, p0, Lx2/n;->w:Lx2/i;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx2/i;

    invoke-interface {p2, p1}, Lb2/d;->b(Ljava/lang/Object;)V

    .line 49
    iput-object v3, p0, Lx2/n;->x:Lx2/k;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_12
    const/4 p1, -0x3

    if-ne p2, p1, :cond_b

    return-void

    :catch_1
    move-exception p1

    .line 50
    invoke-direct {p0, p1}, Lx2/n;->R(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    :cond_13
    return-void
.end method
