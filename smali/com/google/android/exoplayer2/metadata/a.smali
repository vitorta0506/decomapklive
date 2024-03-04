.class public final Lcom/google/android/exoplayer2/metadata/a;
.super Lcom/google/android/exoplayer2/f;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final n:Lo2/c;

.field private final o:Lo2/e;

.field private final p:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final q:Lo2/d;

.field private r:Lo2/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Z

.field private t:Z

.field private u:J

.field private v:J

.field private w:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo2/e;Landroid/os/Looper;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lo2/c;->a:Lo2/c;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/metadata/a;-><init>(Lo2/e;Landroid/os/Looper;Lo2/c;)V

    return-void
.end method

.method public constructor <init>(Lo2/e;Landroid/os/Looper;Lo2/c;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/f;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo2/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->o:Lo2/e;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/l0;->t(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->p:Landroid/os/Handler;

    .line 5
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo2/c;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->n:Lo2/c;

    .line 6
    new-instance p1, Lo2/d;

    invoke-direct {p1}, Lo2/d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Lo2/d;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/a;->v:J

    return-void
.end method

.method private P(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->d()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->c(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->N()Lcom/google/android/exoplayer2/k1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->n:Lo2/c;

    invoke-interface {v2, v1}, Lo2/c;->a(Lcom/google/android/exoplayer2/k1;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->n:Lo2/c;

    .line 5
    invoke-interface {v2, v1}, Lo2/c;->b(Lcom/google/android/exoplayer2/k1;)Lo2/b;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->c(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->e1()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Lo2/d;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Lo2/d;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->q(I)V

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Lo2/d;

    iget-object v3, v3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Lo2/d;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->r()V

    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Lo2/d;

    invoke-interface {v1, v2}, Lo2/b;->a(Lo2/d;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-direct {p0, v1, p2}, Lcom/google/android/exoplayer2/metadata/a;->P(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->c(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private Q(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/a;->R(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    :goto_0
    return-void
.end method

.method private R(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->o:Lo2/e;

    invoke-interface {v0, p1}, Lo2/e;->g(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method private S(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/a;->v:J

    cmp-long v4, v2, p1

    if-gtz v4, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/a;->Q(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/a;->v:J

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/metadata/a;->s:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/a;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez p2, :cond_1

    .line 6
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/metadata/a;->t:Z

    :cond_1
    return p1
.end method

.method private T()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/a;->s:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Lo2/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->A()Lcom/google/android/exoplayer2/l1;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Lo2/d;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->M(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Lo2/d;

    invoke-virtual {v0}, Lb2/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/a;->s:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Lo2/d;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/metadata/a;->u:J

    iput-wide v1, v0, Lo2/d;->i:J

    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->r()V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Lo2/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Lo2/d;

    invoke-interface {v0, v1}, Lo2/b;->a(Lo2/d;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->d()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/metadata/a;->P(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    .line 12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->q:Lo2/d;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/a;->v:J

    goto :goto_0

    :cond_1
    const/4 v2, -0x5

    if-ne v1, v2, :cond_2

    .line 16
    iget-object v0, v0, Lcom/google/android/exoplayer2/l1;->b:Lcom/google/android/exoplayer2/k1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/k1;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/k1;->p:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/a;->u:J

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected F()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v1, p0, Lcom/google/android/exoplayer2/metadata/a;->v:J

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Lo2/b;

    return-void
.end method

.method protected H(JZ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/a;->v:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/a;->s:Z

    .line 4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/a;->t:Z

    return-void
.end method

.method protected L([Lcom/google/android/exoplayer2/k1;JJ)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/a;->n:Lo2/c;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lo2/c;->b(Lcom/google/android/exoplayer2/k1;)Lo2/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->r:Lo2/b;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/k1;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->n:Lo2/c;

    invoke-interface {v0, p1}, Lo2/c;->a(Lcom/google/android/exoplayer2/k1;)Z

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

    :cond_1
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/v2;->a(I)I

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/a;->t:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/a;->R(Lcom/google/android/exoplayer2/metadata/Metadata;)V

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
    .locals 0

    const/4 p3, 0x1

    :goto_0
    if-eqz p3, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/a;->T()V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/metadata/a;->S(J)Z

    move-result p3

    goto :goto_0

    :cond_0
    return-void
.end method
