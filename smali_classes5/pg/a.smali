.class public abstract Lpg/a;
.super Lio/grpc/netty/shaded/io/netty/channel/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpg/a$c;
    }
.end annotation


# static fields
.field public static final j:Lpg/a$c;

.field public static final k:Lpg/a$c;


# instance fields
.field b:Lkg/j;

.field private c:Lpg/a$c;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:B

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lpg/a$a;

    invoke-direct {v0}, Lpg/a$a;-><init>()V

    sput-object v0, Lpg/a;->j:Lpg/a$c;

    .line 2
    new-instance v0, Lpg/a$b;

    invoke-direct {v0}, Lpg/a$b;-><init>()V

    sput-object v0, Lpg/a;->k:Lpg/a$c;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/p;-><init>()V

    .line 2
    sget-object v0, Lpg/a;->j:Lpg/a$c;

    iput-object v0, p0, Lpg/a;->c:Lpg/a$c;

    const/4 v0, 0x0

    .line 3
    iput-byte v0, p0, Lpg/a;->g:B

    const/16 v0, 0x10

    .line 4
    iput v0, p0, Lpg/a;->h:I

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/l;->p()V

    return-void
.end method

.method static F(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v1

    add-int v2, v0, v1

    const v3, 0x7fffffff

    .line 3
    invoke-interface {p0, v2, v3}, Lkg/k;->c(II)I

    move-result v3

    invoke-interface {p0, v3}, Lkg/k;->l(I)Lkg/j;

    move-result-object p0

    const/4 v3, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v4

    invoke-virtual {p0, v3, p1, v4, v0}, Lkg/j;->a2(ILkg/j;II)Lkg/j;

    move-result-object v3

    .line 5
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v4

    invoke-virtual {v3, v0, p2, v4, v1}, Lkg/j;->a2(ILkg/j;II)Lkg/j;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2}, Lkg/j;->L2(I)Lkg/j;

    .line 7
    invoke-virtual {p2}, Lkg/j;->K2()I

    move-result v0

    invoke-virtual {p2, v0}, Lkg/j;->R1(I)Lkg/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 9
    throw p1
.end method

.method static G(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lpg/c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lpg/c;

    invoke-static {p0, p1, p2}, Lpg/a;->H(Lio/grpc/netty/shaded/io/netty/channel/m;Lpg/c;I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static H(Lio/grpc/netty/shaded/io/netty/channel/m;Lpg/c;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Lpg/c;->g(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private w(Lio/grpc/netty/shaded/io/netty/channel/m;Z)V
    .locals 4

    .line 1
    invoke-static {}, Lpg/c;->u()Lpg/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lpg/a;->v(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/util/List;)V
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lpg/a;->b:Lkg/j;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 5
    iput-object v1, p0, Lpg/a;->b:Lkg/j;

    .line 6
    :cond_0
    invoke-virtual {v0}, Lpg/c;->size()I

    move-result v1

    .line 7
    invoke-static {p1, v0, v1}, Lpg/a;->H(Lio/grpc/netty/shaded/io/netty/channel/m;Lpg/c;I)V

    if-lez v1, :cond_1

    .line 8
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->k()Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->n0()Lio/grpc/netty/shaded/io/netty/channel/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Lpg/c;->x()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lpg/c;->x()V

    .line 11
    throw p1

    :catchall_1
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    :try_start_2
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;

    invoke-direct {v3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    .line 13
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :goto_0
    :try_start_3
    iget-object v3, p0, Lpg/a;->b:Lkg/j;

    if-eqz v3, :cond_3

    .line 15
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 16
    iput-object v1, p0, Lpg/a;->b:Lkg/j;

    .line 17
    :cond_3
    invoke-virtual {v0}, Lpg/c;->size()I

    move-result v1

    .line 18
    invoke-static {p1, v0, v1}, Lpg/a;->H(Lio/grpc/netty/shaded/io/netty/channel/m;Lpg/c;I)V

    if-lez v1, :cond_4

    .line 19
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->k()Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_4
    if-eqz p2, :cond_5

    .line 20
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->n0()Lio/grpc/netty/shaded/io/netty/channel/m;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21
    :cond_5
    invoke-virtual {v0}, Lpg/c;->x()V

    .line 22
    throw v2

    :catchall_2
    move-exception p1

    .line 23
    invoke-virtual {v0}, Lpg/c;->x()V

    .line 24
    throw p1
.end method


# virtual methods
.method protected final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpg/a;->b:Lkg/j;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lpg/a;->e:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lpg/a;->b:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->c0()Lkg/j;

    :cond_0
    return-void
.end method

.method public final E(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lpg/a;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x2

    .line 2
    iput-byte p1, p0, Lpg/a;->g:B

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lpg/a;->b:Lkg/j;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lpg/a;->b:Lkg/j;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lpg/a;->i:I

    .line 6
    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 8
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->k()Lio/grpc/netty/shaded/io/netty/channel/m;

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lpg/a;->I(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method protected I(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected J()Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lpg/a;->b:Lkg/j;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lkg/s0;->d:Lkg/j;

    return-object v0
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lpg/a;->d:Z

    return v0
.end method

.method public L(Lpg/a$c;)V
    .locals 1

    const-string v0, "cumulator"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpg/a$c;

    iput-object p1, p0, Lpg/a;->c:Lpg/a$c;

    return-void
.end method

.method public X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lng/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lpg/a;->w(Lio/grpc/netty/shaded/io/netty/channel/m;Z)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/p;->X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    return-void
.end method

.method public Z(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lpg/a;->i:I

    .line 2
    invoke-virtual {p0}, Lpg/a;->B()V

    .line 3
    iget-boolean v1, p0, Lpg/a;->f:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 5
    :cond_0
    iput-boolean v0, p0, Lpg/a;->f:Z

    .line 6
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->k()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public h(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lkg/j;

    if-eqz v0, :cond_7

    .line 2
    invoke-static {}, Lpg/c;->u()Lpg/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    :try_start_0
    iget-object v4, p0, Lpg/a;->b:Lkg/j;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lpg/a;->e:Z

    .line 4
    iget-object v4, p0, Lpg/a;->c:Lpg/a$c;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v5

    iget-boolean v6, p0, Lpg/a;->e:Z

    if-eqz v6, :cond_1

    sget-object v6, Lkg/s0;->d:Lkg/j;

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lpg/a;->b:Lkg/j;

    :goto_1
    check-cast p2, Lkg/j;

    invoke-interface {v4, v5, v6, p2}, Lpg/a$c;->a(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;

    move-result-object p2

    iput-object p2, p0, Lpg/a;->b:Lkg/j;

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lpg/a;->u(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object p2, p0, Lpg/a;->b:Lkg/j;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lkg/j;->j1()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iput v3, p0, Lpg/a;->i:I

    .line 8
    iget-object p2, p0, Lpg/a;->b:Lkg/j;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 9
    iput-object v1, p0, Lpg/a;->b:Lkg/j;

    goto :goto_2

    .line 10
    :cond_2
    iget p2, p0, Lpg/a;->i:I

    add-int/2addr p2, v2

    iput p2, p0, Lpg/a;->i:I

    iget v1, p0, Lpg/a;->h:I

    if-lt p2, v1, :cond_3

    .line 11
    iput v3, p0, Lpg/a;->i:I

    .line 12
    invoke-virtual {p0}, Lpg/a;->B()V

    .line 13
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lpg/c;->size()I

    move-result p2

    .line 14
    iget-boolean v1, p0, Lpg/a;->f:Z

    invoke-virtual {v0}, Lpg/c;->n()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lpg/a;->f:Z

    .line 15
    invoke-static {p1, v0, p2}, Lpg/a;->H(Lio/grpc/netty/shaded/io/netty/channel/m;Lpg/c;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-virtual {v0}, Lpg/c;->x()V

    goto :goto_6

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lpg/c;->x()V

    .line 17
    throw p1

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 18
    :try_start_2
    new-instance v4, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;

    invoke-direct {v4, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception p2

    .line 19
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    :goto_3
    :try_start_3
    iget-object v4, p0, Lpg/a;->b:Lkg/j;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lkg/j;->j1()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 21
    :cond_4
    iput v3, p0, Lpg/a;->i:I

    .line 22
    iget-object v2, p0, Lpg/a;->b:Lkg/j;

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 23
    iput-object v1, p0, Lpg/a;->b:Lkg/j;

    goto :goto_5

    .line 24
    :cond_5
    :goto_4
    iget v1, p0, Lpg/a;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lpg/a;->i:I

    iget v2, p0, Lpg/a;->h:I

    if-lt v1, v2, :cond_6

    .line 25
    iput v3, p0, Lpg/a;->i:I

    .line 26
    invoke-virtual {p0}, Lpg/a;->B()V

    .line 27
    :cond_6
    :goto_5
    invoke-virtual {v0}, Lpg/c;->size()I

    move-result v1

    .line 28
    iget-boolean v2, p0, Lpg/a;->f:Z

    invoke-virtual {v0}, Lpg/c;->n()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lpg/a;->f:Z

    .line 29
    invoke-static {p1, v0, v1}, Lpg/a;->H(Lio/grpc/netty/shaded/io/netty/channel/m;Lpg/c;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 30
    invoke-virtual {v0}, Lpg/c;->x()V

    .line 31
    throw p2

    :catchall_2
    move-exception p1

    .line 32
    invoke-virtual {v0}, Lpg/c;->x()V

    .line 33
    throw p1

    .line 34
    :cond_7
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_6
    return-void
.end method

.method protected s()I
    .locals 1

    invoke-virtual {p0}, Lpg/a;->J()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v0

    return v0
.end method

.method public t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lpg/a;->w(Lio/grpc/netty/shaded/io/netty/channel/m;Z)V

    return-void
.end method

.method protected u(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lkg/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lkg/j;->j1()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    invoke-static {p1, p3, v0}, Lpg/a;->G(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/util/List;I)V

    .line 4
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->f0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lpg/a;->z(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V

    .line 8
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->f0()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 12
    invoke-virtual {p0}, Lpg/a;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_4
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->l(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".decode() did not read anything but decoded a message."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;

    invoke-direct {p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 16
    throw p1
.end method

.method v(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpg/a;->b:Lkg/j;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lpg/a;->u(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->f0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lpg/a;->b:Lkg/j;

    if-nez v0, :cond_0

    sget-object v0, Lkg/s0;->d:Lkg/j;

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lpg/a;->y(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lkg/s0;->d:Lkg/j;

    invoke-virtual {p0, p1, v0, p2}, Lpg/a;->y(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract x(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lkg/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected y(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lkg/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lkg/j;->j1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lpg/a;->z(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method final z(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lkg/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-byte v0, p0, Lpg/a;->g:B

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lpg/a;->x(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-byte p2, p0, Lpg/a;->g:B

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput-byte v2, p0, Lpg/a;->g:B

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p3, p2}, Lpg/a;->G(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/util/List;I)V

    .line 6
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 7
    invoke-virtual {p0, p1}, Lpg/a;->E(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 8
    iget-byte v3, p0, Lpg/a;->g:B

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 9
    :goto_1
    iput-byte v2, p0, Lpg/a;->g:B

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, v0}, Lpg/a;->G(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/util/List;I)V

    .line 11
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 12
    invoke-virtual {p0, p1}, Lpg/a;->E(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 13
    :cond_3
    throw p2
.end method
