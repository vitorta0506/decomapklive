.class public final Ly2/c;
.super Ly2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/c$a;,
        Ly2/c$b;,
        Ly2/c$c;
    }
.end annotation


# instance fields
.field private final g:Lcom/google/android/exoplayer2/util/b0;

.field private final h:Lcom/google/android/exoplayer2/util/a0;

.field private i:I

.field private final j:Z

.field private final k:I

.field private final l:[Ly2/c$b;

.field private m:Ly2/c$b;

.field private n:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx2/b;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx2/b;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ly2/c$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ly2/e;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/b0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/b0;-><init>()V

    iput-object v0, p0, Ly2/c;->g:Lcom/google/android/exoplayer2/util/b0;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/a0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/a0;-><init>()V

    iput-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Ly2/c;->i:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 5
    :cond_0
    iput p1, p0, Ly2/c;->k:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 6
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/e;->f(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Ly2/c;->j:Z

    const/16 p2, 0x8

    new-array v0, p2, [Ly2/c$b;

    .line 7
    iput-object v0, p0, Ly2/c;->l:[Ly2/c$b;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    .line 8
    iget-object v1, p0, Ly2/c;->l:[Ly2/c$b;

    new-instance v2, Ly2/c$b;

    invoke-direct {v2}, Ly2/c$b;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object p2, p0, Ly2/c;->l:[Ly2/c$b;

    aget-object p1, p2, p1

    iput-object p1, p0, Ly2/c;->m:Ly2/c$b;

    return-void
.end method

.method private A()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    .line 2
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    .line 4
    iget-object v1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v1

    .line 5
    iget-object v2, p0, Ly2/c;->m:Ly2/c$b;

    invoke-virtual {v2, v0, v1}, Ly2/c$b;->o(II)V

    return-void
.end method

.method private B()V
    .locals 13

    .line 1
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v0

    .line 2
    iget-object v2, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v2

    .line 3
    iget-object v3, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v3

    .line 4
    iget-object v4, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v4

    .line 5
    invoke-static {v2, v3, v4, v0}, Ly2/c$b;->h(IIII)I

    move-result v6

    .line 6
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v0

    .line 7
    iget-object v2, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v2

    .line 8
    iget-object v3, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v3

    .line 9
    iget-object v4, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v4

    .line 10
    invoke-static {v2, v3, v4}, Ly2/c$b;->g(III)I

    move-result v7

    .line 11
    iget-object v2, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    move v9, v0

    .line 12
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result v8

    .line 13
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v10

    .line 14
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v11

    .line 15
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v12

    .line 16
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    .line 17
    iget-object v5, p0, Ly2/c;->m:Ly2/c$b;

    invoke-virtual/range {v5 .. v12}, Ly2/c$b;->q(IIZIIII)V

    return-void
.end method

.method private C()V
    .locals 12

    .line 1
    iget-object v0, p0, Ly2/c;->p:Ly2/c$c;

    iget v1, v0, Ly2/c$c;->d:I

    iget v0, v0, Ly2/c$c;->b:I

    const/4 v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const-string v4, "Cea708Decoder"

    if-eq v1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly2/c;->p:Ly2/c$c;

    iget v1, v1, Ly2/c$c;->b:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but current index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly2/c;->p:Ly2/c$c;

    iget v1, v1, Ly2/c$c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (sequence number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly2/c;->p:Ly2/c$c;

    iget v1, v1, Ly2/c$c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    iget-object v5, p0, Ly2/c;->p:Ly2/c$c;

    iget-object v6, v5, Ly2/c$c;->c:[B

    iget v5, v5, Ly2/c$c;->d:I

    invoke-virtual {v1, v6, v5}, Lcom/google/android/exoplayer2/util/a0;->o([BI)V

    .line 4
    :cond_1
    :goto_0
    iget-object v1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/a0;->b()I

    move-result v1

    if-lez v1, :cond_e

    .line 5
    iget-object v1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v1

    .line 6
    iget-object v5, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v5

    const/4 v6, 0x7

    if-ne v1, v6, :cond_2

    .line 7
    iget-object v1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    .line 8
    iget-object v1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v1

    if-ge v1, v6, :cond_2

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid extended service number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v5, :cond_3

    if-eqz v1, :cond_e

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceNumber is non-zero ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when blockSize is 0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 11
    :cond_3
    iget v6, p0, Ly2/c;->k:I

    if-eq v1, v6, :cond_4

    .line 12
    iget-object v1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/a0;->s(I)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object v1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/a0;->e()I

    move-result v1

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    .line 14
    :goto_1
    iget-object v5, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/a0;->e()I

    move-result v5

    if-ge v5, v1, :cond_1

    .line 15
    iget-object v5, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v5

    const/16 v7, 0x10

    const/16 v8, 0xff

    const/16 v9, 0x9f

    const/16 v10, 0x7f

    const/16 v11, 0x1f

    if-eq v5, v7, :cond_9

    if-gt v5, v11, :cond_5

    .line 16
    invoke-direct {p0, v5}, Ly2/c;->p(I)V

    goto :goto_1

    :cond_5
    if-gt v5, v10, :cond_6

    .line 17
    invoke-direct {p0, v5}, Ly2/c;->u(I)V

    goto :goto_2

    :cond_6
    if-gt v5, v9, :cond_7

    .line 18
    invoke-direct {p0, v5}, Ly2/c;->q(I)V

    goto :goto_2

    :cond_7
    if-gt v5, v8, :cond_8

    .line 19
    invoke-direct {p0, v5}, Ly2/c;->v(I)V

    goto :goto_2

    .line 20
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid base command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_9
    iget-object v5, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v5

    if-gt v5, v11, :cond_a

    .line 22
    invoke-direct {p0, v5}, Ly2/c;->r(I)V

    goto :goto_1

    :cond_a
    if-gt v5, v10, :cond_b

    .line 23
    invoke-direct {p0, v5}, Ly2/c;->w(I)V

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_b
    if-gt v5, v9, :cond_c

    .line 24
    invoke-direct {p0, v5}, Ly2/c;->s(I)V

    goto :goto_1

    :cond_c
    if-gt v5, v8, :cond_d

    .line 25
    invoke-direct {p0, v5}, Ly2/c;->x(I)V

    goto :goto_2

    .line 26
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid extended command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    :goto_3
    if-eqz v0, :cond_f

    .line 27
    invoke-direct {p0}, Ly2/c;->o()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ly2/c;->n:Ljava/util/List;

    :cond_f
    return-void
.end method

.method private D()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ly2/c;->l:[Ly2/c$b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ly2/c$b;->l()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly2/c;->p:Ly2/c$c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ly2/c;->C()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ly2/c;->p:Ly2/c$c;

    return-void
.end method

.method private o()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx2/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 2
    iget-object v3, p0, Ly2/c;->l:[Ly2/c$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ly2/c$b;->j()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Ly2/c;->l:[Ly2/c$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ly2/c$b;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, p0, Ly2/c;->l:[Ly2/c$b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ly2/c$b;->c()Ly2/c$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Ly2/c$a;->b()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly2/c$a;

    iget-object v3, v3, Ly2/c$a;->a:Lx2/b;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private p(I)V
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x11

    const-string v2, "Cea708Decoder"

    if-lt p1, v1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid C0 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_0
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0}, Ly2/c;->D()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    invoke-virtual {p1}, Ly2/c$b;->b()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-direct {p0}, Ly2/c;->o()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ly2/c;->n:Ljava/util/List;

    :cond_4
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private q(I)V
    .locals 4

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid C1 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1
    add-int/lit16 p1, p1, -0x98

    .line 2
    invoke-direct {p0, p1}, Ly2/c;->t(I)V

    .line 3
    iget v0, p0, Ly2/c;->q:I

    if-eq v0, p1, :cond_9

    .line 4
    iput p1, p0, Ly2/c;->q:I

    .line 5
    iget-object v0, p0, Ly2/c;->l:[Ly2/c$b;

    aget-object p1, v0, p1

    iput-object p1, p0, Ly2/c;->m:Ly2/c$b;

    goto/16 :goto_5

    .line 6
    :pswitch_2
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    invoke-virtual {p1}, Ly2/c$b;->i()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    goto/16 :goto_5

    .line 8
    :cond_0
    invoke-direct {p0}, Ly2/c;->B()V

    goto/16 :goto_5

    .line 9
    :pswitch_3
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    invoke-virtual {p1}, Ly2/c$b;->i()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    goto/16 :goto_5

    .line 11
    :cond_1
    invoke-direct {p0}, Ly2/c;->A()V

    goto/16 :goto_5

    .line 12
    :pswitch_4
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    invoke-virtual {p1}, Ly2/c$b;->i()Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    goto/16 :goto_5

    .line 14
    :cond_2
    invoke-direct {p0}, Ly2/c;->z()V

    goto/16 :goto_5

    .line 15
    :pswitch_5
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    invoke-virtual {p1}, Ly2/c$b;->i()Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    goto/16 :goto_5

    .line 17
    :cond_3
    invoke-direct {p0}, Ly2/c;->y()V

    goto/16 :goto_5

    .line 18
    :pswitch_6
    invoke-direct {p0}, Ly2/c;->D()V

    goto/16 :goto_5

    .line 19
    :pswitch_7
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    goto/16 :goto_5

    :goto_0
    :pswitch_8
    if-gt v2, v1, :cond_9

    .line 20
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, p0, Ly2/c;->l:[Ly2/c$b;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ly2/c$b;->l()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x1

    :goto_1
    if-gt p1, v1, :cond_9

    .line 22
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    iget-object v0, p0, Ly2/c;->l:[Ly2/c$b;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    .line 24
    invoke-virtual {v0}, Ly2/c$b;->k()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ly2/c$b;->p(Z)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :goto_2
    :pswitch_a
    if-gt v2, v1, :cond_9

    .line 25
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 26
    iget-object p1, p0, Ly2/c;->l:[Ly2/c$b;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ly2/c$b;->p(Z)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_b
    const/4 p1, 0x1

    :goto_3
    if-gt p1, v1, :cond_9

    .line 27
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    iget-object v0, p0, Ly2/c;->l:[Ly2/c$b;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Ly2/c$b;->p(Z)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :goto_4
    :pswitch_c
    if-gt v2, v1, :cond_9

    .line 29
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 30
    iget-object p1, p0, Ly2/c;->l:[Ly2/c$b;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ly2/c$b;->e()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :pswitch_d
    add-int/lit8 p1, p1, -0x80

    .line 31
    iget v0, p0, Ly2/c;->q:I

    if-eq v0, p1, :cond_9

    .line 32
    iput p1, p0, Ly2/c;->q:I

    .line 33
    iget-object v0, p0, Ly2/c;->l:[Ly2/c$b;

    aget-object p1, v0, p1

    iput-object p1, p0, Ly2/c;->m:Ly2/c$b;

    :cond_9
    :goto_5
    :pswitch_e
    return-void

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private r(I)V
    .locals 1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    .line 2
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 3
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private s(I)V
    .locals 1

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    .line 4
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result p1

    .line 5
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private t(I)V
    .locals 14

    .line 1
    iget-object v0, p0, Ly2/c;->l:[Ly2/c$b;

    aget-object v1, v0, p1

    .line 2
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    .line 3
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result v2

    .line 4
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result v3

    .line 5
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result v4

    .line 6
    iget-object p1, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result p1

    .line 7
    iget-object v6, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result v6

    .line 8
    iget-object v7, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v7

    .line 9
    iget-object v8, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v8

    .line 10
    iget-object v9, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v11

    .line 11
    iget-object v9, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v9

    .line 12
    iget-object v10, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    .line 13
    iget-object v10, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v10

    .line 14
    iget-object v12, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    .line 15
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v12

    .line 16
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v13

    move v5, p1

    .line 17
    invoke-virtual/range {v1 .. v13}, Ly2/c$b;->f(ZZZIZIIIIIII)V

    return-void
.end method

.method private u(I)V
    .locals 1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x266b

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ly2/c;->m:Ly2/c$b;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ly2/c$b;->a(C)V

    :goto_0
    return-void
.end method

.method private v(I)V
    .locals 1

    iget-object v0, p0, Ly2/c;->m:Ly2/c$b;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ly2/c$b;->a(C)V

    return-void
.end method

.method private w(I)V
    .locals 2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_9

    const/16 v0, 0x21

    if-eq p1, v0, :cond_8

    const/16 v0, 0x25

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x39

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G2 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x250c

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x2518

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x2514

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 6
    :pswitch_4
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x2510

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 7
    :pswitch_5
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x2502

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 8
    :pswitch_6
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x215e

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 9
    :pswitch_7
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x215d

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 10
    :pswitch_8
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x215c

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 11
    :pswitch_9
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x215b

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 12
    :pswitch_a
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x2022

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 13
    :pswitch_b
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x201d

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 14
    :pswitch_c
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x201c

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto/16 :goto_0

    .line 15
    :pswitch_d
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x2019

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 16
    :pswitch_e
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x2018

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 17
    :pswitch_f
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x2588

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x2120

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x153

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x161

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x2122

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 22
    :cond_4
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x178

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 23
    :cond_5
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x152

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 24
    :cond_6
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x160

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 25
    :cond_7
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x2026

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 26
    :cond_8
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 27
    :cond_9
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private x(I)V
    .locals 2

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x33c4

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G3 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Ly2/c;->m:Ly2/c$b;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ly2/c$b;->a(C)V

    :goto_0
    return-void
.end method

.method private y()V
    .locals 10

    .line 1
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v3

    .line 2
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v4

    .line 3
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v5

    .line 4
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result v6

    .line 5
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/a0;->g()Z

    move-result v7

    .line 6
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v8

    .line 7
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v9

    .line 8
    iget-object v2, p0, Ly2/c;->m:Ly2/c$b;

    invoke-virtual/range {v2 .. v9}, Ly2/c$b;->m(IIIZZII)V

    return-void
.end method

.method private z()V
    .locals 6

    .line 1
    iget-object v0, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v0

    .line 2
    iget-object v2, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v2

    .line 3
    iget-object v3, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v3

    .line 4
    iget-object v4, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v4

    .line 5
    invoke-static {v2, v3, v4, v0}, Ly2/c$b;->h(IIII)I

    move-result v0

    .line 6
    iget-object v2, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v2

    .line 7
    iget-object v3, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v3

    .line 8
    iget-object v4, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v4

    .line 9
    iget-object v5, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v5

    .line 10
    invoke-static {v3, v4, v5, v2}, Ly2/c$b;->h(IIII)I

    move-result v2

    .line 11
    iget-object v3, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/a0;->r(I)V

    .line 12
    iget-object v3, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v3

    .line 13
    iget-object v4, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v4

    .line 14
    iget-object v5, p0, Ly2/c;->h:Lcom/google/android/exoplayer2/util/a0;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/a0;->h(I)I

    move-result v1

    .line 15
    invoke-static {v3, v4, v1}, Ly2/c$b;->g(III)I

    move-result v1

    .line 16
    iget-object v3, p0, Ly2/c;->m:Ly2/c$b;

    invoke-virtual {v3, v0, v2, v1}, Ly2/c$b;->n(III)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Ly2/e;->a(J)V

    return-void
.end method

.method protected d()Lx2/h;
    .locals 2

    .line 1
    iget-object v0, p0, Ly2/c;->n:Ljava/util/List;

    iput-object v0, p0, Ly2/c;->o:Ljava/util/List;

    .line 2
    new-instance v1, Ly2/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Ly2/f;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected e(Lx2/k;)V
    .locals 8

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 3
    iget-object v1, p0, Ly2/c;->g:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/exoplayer2/util/b0;->N([BI)V

    .line 4
    :cond_0
    :goto_0
    iget-object p1, p0, Ly2/c;->g:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->a()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_9

    .line 5
    iget-object p1, p0, Ly2/c;->g:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->D()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_1
    iget-object v5, p0, Ly2/c;->g:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/b0;->D()I

    move-result v5

    int-to-byte v5, v5

    .line 7
    iget-object v6, p0, Ly2/c;->g:Lcom/google/android/exoplayer2/util/b0;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/b0;->D()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Cea708Decoder"

    if-ne v1, v0, :cond_6

    .line 8
    invoke-direct {p0}, Ly2/c;->n()V

    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 9
    iget v1, p0, Ly2/c;->i:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    if-eq v0, v1, :cond_4

    .line 10
    invoke-direct {p0}, Ly2/c;->D()V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sequence number discontinuity. previous="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly2/c;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_4
    iput v0, p0, Ly2/c;->i:I

    and-int/lit8 p1, v5, 0x3f

    if-nez p1, :cond_5

    const/16 p1, 0x40

    .line 13
    :cond_5
    new-instance v1, Ly2/c$c;

    invoke-direct {v1, v0, p1}, Ly2/c$c;-><init>(II)V

    iput-object v1, p0, Ly2/c;->p:Ly2/c$c;

    .line 14
    iget-object p1, v1, Ly2/c$c;->c:[B

    iget v0, v1, Ly2/c$c;->d:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Ly2/c$c;->d:I

    aput-byte v6, p1, v0

    goto :goto_2

    :cond_6
    if-ne v1, v7, :cond_7

    const/4 v3, 0x1

    .line 15
    :cond_7
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 16
    iget-object v0, p0, Ly2/c;->p:Ly2/c$c;

    if-nez v0, :cond_8

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 17
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :cond_8
    iget-object p1, v0, Ly2/c$c;->c:[B

    iget v1, v0, Ly2/c$c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Ly2/c$c;->d:I

    aput-byte v5, p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 19
    iput v1, v0, Ly2/c$c;->d:I

    aput-byte v6, p1, v2

    .line 20
    :goto_2
    iget-object p1, p0, Ly2/c;->p:Ly2/c$c;

    iget v0, p1, Ly2/c$c;->d:I

    iget p1, p1, Ly2/c$c;->b:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v4

    if-ne v0, p1, :cond_0

    .line 21
    invoke-direct {p0}, Ly2/c;->n()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public bridge synthetic f()Lx2/k;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    invoke-super {p0}, Ly2/e;->f()Lx2/k;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 3

    .line 1
    invoke-super {p0}, Ly2/e;->flush()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ly2/c;->n:Ljava/util/List;

    .line 3
    iput-object v0, p0, Ly2/c;->o:Ljava/util/List;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Ly2/c;->q:I

    .line 5
    iget-object v2, p0, Ly2/c;->l:[Ly2/c$b;

    aget-object v1, v2, v1

    iput-object v1, p0, Ly2/c;->m:Ly2/c$b;

    .line 6
    invoke-direct {p0}, Ly2/c;->D()V

    .line 7
    iput-object v0, p0, Ly2/c;->p:Ly2/c$c;

    return-void
.end method

.method public bridge synthetic g()Lx2/l;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    invoke-super {p0}, Ly2/e;->g()Lx2/l;

    move-result-object v0

    return-object v0
.end method

.method protected j()Z
    .locals 2

    iget-object v0, p0, Ly2/c;->n:Ljava/util/List;

    iget-object v1, p0, Ly2/c;->o:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic k(Lx2/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    invoke-super {p0, p1}, Ly2/e;->k(Lx2/k;)V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    invoke-super {p0}, Ly2/e;->release()V

    return-void
.end method
