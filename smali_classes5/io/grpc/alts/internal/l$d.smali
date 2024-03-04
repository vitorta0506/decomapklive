.class final Lio/grpc/alts/internal/l$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:Lio/grpc/alts/internal/p;

.field private c:Lio/grpc/alts/internal/l$b;

.field private d:I

.field private e:Lkg/j;

.field private f:Lkg/j;

.field private g:I

.field private h:J

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkg/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/alts/internal/p;Lkg/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/grpc/alts/internal/l$b;->a:Lio/grpc/alts/internal/l$b;

    iput-object v0, p0, Lio/grpc/alts/internal/l$d;->c:Lio/grpc/alts/internal/l$b;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lio/grpc/alts/internal/l$d;->g:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lio/grpc/alts/internal/l$d;->h:J

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lio/grpc/alts/internal/l$d;->b:Lio/grpc/alts/internal/p;

    .line 7
    invoke-interface {p1}, Lio/grpc/alts/internal/p;->d()I

    move-result p1

    iput p1, p0, Lio/grpc/alts/internal/l$d;->a:I

    const/16 v0, 0x8

    .line 8
    invoke-interface {p2, v0}, Lkg/k;->h(I)Lkg/j;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/l$d;->e:Lkg/j;

    .line 9
    invoke-interface {p2, p1}, Lkg/k;->h(I)Lkg/j;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/l$d;->f:Lkg/j;

    return-void
.end method

.method private a(Lkg/j;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lkg/j;->j1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    invoke-virtual {p1, v0}, Lkg/j;->I1(I)Lkg/j;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-wide v0, p0, Lio/grpc/alts/internal/l$d;->h:J

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/alts/internal/l$d;->h:J

    :cond_0
    return-void
.end method

.method private b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkg/j;

    .line 3
    invoke-virtual {v1}, Lkg/j;->j1()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    move v6, v0

    :goto_1
    if-ge v5, v6, :cond_1

    .line 4
    iget-object v6, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkg/j;

    invoke-interface {v6}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v5, 0x0

    .line 6
    iput-wide v5, p0, Lio/grpc/alts/internal/l$d;->h:J

    .line 7
    iput v4, p0, Lio/grpc/alts/internal/l$d;->g:I

    if-eqz v3, :cond_2

    .line 8
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v1}, Lkg/j;->P1()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/grpc/alts/internal/l$d;->h:J

    .line 10
    :cond_2
    sget-object v0, Lio/grpc/alts/internal/l$b;->a:Lio/grpc/alts/internal/l$b;

    iput-object v0, p0, Lio/grpc/alts/internal/l$d;->c:Lio/grpc/alts/internal/l$b;

    .line 11
    iput v4, p0, Lio/grpc/alts/internal/l$d;->d:I

    .line 12
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->e:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->L()Lkg/j;

    .line 13
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->f:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->L()Lkg/j;

    return-void
.end method

.method private c(Lkg/k;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/k;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/alts/internal/l$a;->a:[I

    iget-object v1, p0, Lio/grpc/alts/internal/l$d;->c:Lio/grpc/alts/internal/l$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "impossible enum value"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    iget-wide v0, p0, Lio/grpc/alts/internal/l$d;->h:J

    const-wide/16 v2, 0x8

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-direct {p0}, Lio/grpc/alts/internal/l$d;->e()V

    .line 5
    :goto_0
    iget-wide v0, p0, Lio/grpc/alts/internal/l$d;->h:J

    iget v2, p0, Lio/grpc/alts/internal/l$d;->d:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    return-void

    .line 6
    :cond_3
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/l$d;->f(Lkg/k;)Lkg/j;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0}, Lio/grpc/alts/internal/l$d;->b()V

    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-direct {p0}, Lio/grpc/alts/internal/l$d;->b()V

    throw p1
.end method

.method private e()V
    .locals 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->e:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->q0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    iget v2, p0, Lio/grpc/alts/internal/l$d;->g:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/j;

    .line 3
    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v2

    iget-object v3, p0, Lio/grpc/alts/internal/l$d;->e:Lkg/j;

    invoke-virtual {v3}, Lkg/j;->t2()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget-object v3, p0, Lio/grpc/alts/internal/l$d;->e:Lkg/j;

    invoke-virtual {v3, v0, v2}, Lkg/j;->y2(Lkg/j;I)Lkg/j;

    .line 5
    iget-wide v3, p0, Lio/grpc/alts/internal/l$d;->h:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lio/grpc/alts/internal/l$d;->h:J

    .line 6
    invoke-virtual {v0}, Lkg/j;->j1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget v0, p0, Lio/grpc/alts/internal/l$d;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/grpc/alts/internal/l$d;->g:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->e:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->F1()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lio/grpc/alts/internal/l$d;->d:I

    .line 9
    iget v2, p0, Lio/grpc/alts/internal/l$d;->a:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v2, "Invalid header field: frame size too small"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 10
    iget v0, p0, Lio/grpc/alts/internal/l$d;->d:I

    const v2, 0xffff8

    if-gt v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const-string v2, "Invalid header field: frame size too large"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->e:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->F1()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    const-string v0, "Invalid header field: frame type"

    .line 12
    invoke-static {v1, v0}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 13
    sget-object v0, Lio/grpc/alts/internal/l$b;->b:Lio/grpc/alts/internal/l$b;

    iput-object v0, p0, Lio/grpc/alts/internal/l$d;->c:Lio/grpc/alts/internal/l$b;

    return-void
.end method

.method private f(Lkg/k;)Lkg/j;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/alts/internal/l$d;->d:I

    iget v1, p0, Lio/grpc/alts/internal/l$d;->a:I

    sub-int/2addr v0, v1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    .line 3
    iget-object v5, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    iget v6, p0, Lio/grpc/alts/internal/l$d;->g:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkg/j;

    .line 4
    invoke-virtual {v5}, Lkg/j;->P1()I

    move-result v6

    if-gt v6, v2, :cond_0

    .line 5
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v5}, Lkg/j;->P1()I

    move-result v3

    sub-int/2addr v2, v3

    .line 7
    iget v3, p0, Lio/grpc/alts/internal/l$d;->g:I

    add-int/2addr v3, v4

    iput v3, p0, Lio/grpc/alts/internal/l$d;->g:I

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v5, v2}, Lkg/j;->K1(I)Lkg/j;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto :goto_0

    .line 9
    :cond_1
    iget v2, p0, Lio/grpc/alts/internal/l$d;->a:I

    .line 10
    :goto_1
    iget-object v5, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    iget v6, p0, Lio/grpc/alts/internal/l$d;->g:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkg/j;

    .line 11
    invoke-virtual {v5}, Lkg/j;->P1()I

    move-result v6

    if-gt v6, v2, :cond_3

    .line 12
    invoke-virtual {v5}, Lkg/j;->P1()I

    move-result v6

    sub-int/2addr v2, v6

    .line 13
    iget-object v6, p0, Lio/grpc/alts/internal/l$d;->f:Lkg/j;

    invoke-virtual {v6, v5}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    if-nez v2, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    iget v5, p0, Lio/grpc/alts/internal/l$d;->g:I

    add-int/2addr v5, v4

    iput v5, p0, Lio/grpc/alts/internal/l$d;->g:I

    goto :goto_1

    .line 15
    :cond_3
    iget-object v6, p0, Lio/grpc/alts/internal/l$d;->f:Lkg/j;

    invoke-virtual {v6, v5, v2}, Lkg/j;->y2(Lkg/j;I)Lkg/j;

    .line 16
    :goto_2
    iget v2, p0, Lio/grpc/alts/internal/l$d;->g:I

    iget-object v5, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v2, v5, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Lcom/google/common/base/a0;->a(Z)V

    .line 17
    iget-object v2, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    iget v5, p0, Lio/grpc/alts/internal/l$d;->g:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkg/j;

    .line 18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    int-to-long v7, v0

    .line 20
    :goto_4
    invoke-virtual {v2}, Lkg/j;->P1()I

    move-result v9

    iget v10, p0, Lio/grpc/alts/internal/l$d;->a:I

    add-int/lit8 v10, v10, 0x8

    if-lt v9, v10, :cond_7

    .line 21
    invoke-virtual {v2}, Lkg/j;->F1()I

    move-result v9

    add-int/lit8 v10, v9, -0x4

    .line 22
    iget v11, p0, Lio/grpc/alts/internal/l$d;->a:I

    sub-int/2addr v10, v11

    .line 23
    invoke-virtual {v2}, Lkg/j;->P1()I

    move-result v11

    if-ge v11, v9, :cond_5

    .line 24
    invoke-virtual {v2}, Lkg/j;->Q1()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v2, v9}, Lkg/j;->R1(I)Lkg/j;

    goto :goto_6

    .line 25
    :cond_5
    invoke-virtual {v2}, Lkg/j;->F1()I

    move-result v9

    const/4 v11, 0x6

    if-ne v9, v11, :cond_6

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    invoke-static {v9}, Lcom/google/common/base/o;->d(Z)V

    .line 26
    iget v9, p0, Lio/grpc/alts/internal/l$d;->a:I

    add-int/2addr v9, v10

    invoke-virtual {v2, v9}, Lkg/j;->K1(I)Lkg/j;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-long v11, v10

    add-long/2addr v7, v11

    .line 27
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28
    :cond_7
    :goto_6
    iget v2, p0, Lio/grpc/alts/internal/l$d;->a:I

    int-to-long v9, v2

    add-long/2addr v7, v9

    .line 29
    invoke-static {v7, v8}, Lcom/google/common/primitives/f;->d(J)I

    move-result v2

    .line 30
    invoke-interface {p1, v2}, Lkg/k;->h(I)Lkg/j;

    move-result-object p1

    .line 31
    :try_start_0
    iget v2, p0, Lio/grpc/alts/internal/l$d;->a:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lio/grpc/alts/internal/l;->c(Lkg/j;I)Lkg/j;

    move-result-object v0

    .line 32
    iget-object v2, p0, Lio/grpc/alts/internal/l$d;->b:Lio/grpc/alts/internal/p;

    iget-object v7, p0, Lio/grpc/alts/internal/l$d;->f:Lkg/j;

    invoke-interface {v2, v0, v7, v1}, Lio/grpc/alts/internal/p;->c(Lkg/j;Lkg/j;Ljava/util/List;)V

    .line 33
    invoke-virtual {v0}, Lkg/j;->t2()I

    move-result v0

    iget v1, p0, Lio/grpc/alts/internal/l$d;->a:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/a0;->a(Z)V

    .line 34
    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v0

    iget v1, p0, Lio/grpc/alts/internal/l$d;->a:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lkg/j;->L2(I)Lkg/j;

    const/4 v0, 0x0

    .line 35
    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 36
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lio/grpc/alts/internal/l$d;->a:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lio/grpc/alts/internal/l;->c(Lkg/j;I)Lkg/j;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lio/grpc/alts/internal/l$d;->b:Lio/grpc/alts/internal/p;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkg/j;

    invoke-interface {v2, v1, v7}, Lio/grpc/alts/internal/p;->a(Lkg/j;Lkg/j;)V

    .line 38
    invoke-virtual {v1}, Lkg/j;->t2()I

    move-result v1

    iget v2, p0, Lio/grpc/alts/internal/l$d;->a:I

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/common/base/a0;->a(Z)V

    .line 39
    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v1

    iget v2, p0, Lio/grpc/alts/internal/l$d;->a:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lkg/j;->L2(I)Lkg/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 40
    :cond_a
    invoke-virtual {p1}, Lkg/j;->T1()Lkg/j;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    throw v0
.end method


# virtual methods
.method d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkg/j;

    .line 2
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->e:Lkg/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 6
    iput-object v1, p0, Lio/grpc/alts/internal/l$d;->e:Lkg/j;

    .line 7
    :cond_1
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->f:Lkg/j;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 9
    iput-object v1, p0, Lio/grpc/alts/internal/l$d;->f:Lkg/j;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->b:Lio/grpc/alts/internal/p;

    invoke-interface {v0}, Lio/grpc/alts/internal/p;->destroy()V

    return-void
.end method

.method g(Lkg/j;Ljava/util/List;Lkg/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lkg/k;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/l$d;->e:Lkg/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot unprotect after destroy."

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/l$d;->a(Lkg/j;)V

    .line 3
    invoke-direct {p0, p3, p2}, Lio/grpc/alts/internal/l$d;->c(Lkg/k;Ljava/util/List;)V

    return-void
.end method
