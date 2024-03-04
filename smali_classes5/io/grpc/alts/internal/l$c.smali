.class final Lio/grpc/alts/internal/l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lio/grpc/alts/internal/p;


# direct methods
.method constructor <init>(ILio/grpc/alts/internal/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p2}, Lio/grpc/alts/internal/p;->d()I

    move-result v0

    iput v0, p0, Lio/grpc/alts/internal/l$c;->b:I

    add-int/lit8 p1, p1, -0x8

    sub-int/2addr p1, v0

    .line 3
    iput p1, p0, Lio/grpc/alts/internal/l$c;->a:I

    .line 4
    iput-object p2, p0, Lio/grpc/alts/internal/l$c;->c:Lio/grpc/alts/internal/p;

    return-void
.end method

.method private b(Ljava/util/List;Lkg/k;)Lkg/j;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkg/j;",
            ">;",
            "Lkg/k;",
            ")",
            "Lkg/j;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkg/j;

    .line 2
    invoke-virtual {v6}, Lkg/j;->P1()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    cmp-long v7, v4, v2

    if-lez v7, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/o;->d(Z)V

    .line 4
    iget v2, v1, Lio/grpc/alts/internal/l$c;->a:I

    int-to-long v7, v2

    div-long v7, v4, v7

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    int-to-long v11, v2

    .line 5
    rem-long v11, v4, v11

    long-to-int v3, v11

    if-nez v3, :cond_2

    sub-long/2addr v7, v9

    goto :goto_2

    :cond_2
    move v2, v3

    .line 6
    :goto_2
    iget v3, v1, Lio/grpc/alts/internal/l$c;->b:I

    add-int/lit8 v3, v3, 0x8

    int-to-long v11, v3

    mul-long v11, v11, v7

    add-long/2addr v11, v4

    .line 7
    invoke-static {v11, v12}, Lcom/google/common/primitives/f;->d(J)I

    move-result v3

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Lkg/k;->h(I)Lkg/j;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    int-to-long v11, v4

    cmp-long v13, v11, v7

    if-gez v13, :cond_7

    sub-long v13, v7, v9

    cmp-long v15, v11, v13

    if-nez v15, :cond_3

    move v11, v2

    goto :goto_4

    .line 8
    :cond_3
    :try_start_0
    iget v11, v1, Lio/grpc/alts/internal/l$c;->a:I

    :goto_4
    add-int/lit8 v12, v11, 0x4

    .line 9
    iget v13, v1, Lio/grpc/alts/internal/l$c;->b:I

    add-int/2addr v12, v13

    invoke-virtual {v3, v12}, Lkg/j;->F2(I)Lkg/j;

    const/4 v12, 0x6

    .line 10
    invoke-virtual {v3, v12}, Lkg/j;->F2(I)Lkg/j;

    .line 11
    iget v12, v1, Lio/grpc/alts/internal/l$c;->b:I

    add-int/2addr v12, v11

    invoke-static {v3, v12}, Lio/grpc/alts/internal/l;->c(Lkg/j;I)Lkg/j;

    move-result-object v12

    .line 12
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-lez v11, :cond_5

    move-object/from16 v14, p1

    .line 13
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkg/j;

    .line 14
    invoke-virtual {v15}, Lkg/j;->P1()I

    move-result v0

    if-gt v0, v11, :cond_4

    .line 15
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v15}, Lkg/j;->P1()I

    move-result v0

    sub-int/2addr v11, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 17
    :cond_4
    invoke-virtual {v15, v11}, Lkg/j;->K1(I)Lkg/j;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v14, p1

    .line 18
    iget-object v0, v1, Lio/grpc/alts/internal/l$c;->c:Lio/grpc/alts/internal/p;

    invoke-interface {v0, v12, v13}, Lio/grpc/alts/internal/p;->b(Lkg/j;Ljava/util/List;)V

    .line 19
    invoke-virtual {v12}, Lkg/j;->q0()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/a0;->a(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 20
    :cond_7
    invoke-virtual {v3, v6}, Lkg/j;->R1(I)Lkg/j;

    .line 21
    invoke-virtual {v3}, Lkg/j;->F()I

    move-result v0

    invoke-virtual {v3, v0}, Lkg/j;->L2(I)Lkg/j;

    .line 22
    invoke-virtual {v3}, Lkg/j;->T1()Lkg/j;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    throw v0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/alts/internal/l$c;->c:Lio/grpc/alts/internal/p;

    return-void
.end method

.method c(Ljava/util/List;Lio/grpc/alts/internal/f0$a;Lkg/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkg/j;",
            ">;",
            "Lio/grpc/alts/internal/f0$a<",
            "Lkg/j;",
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
    iget-object v0, p0, Lio/grpc/alts/internal/l$c;->c:Lio/grpc/alts/internal/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot protectFlush after destroy."

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p3}, Lio/grpc/alts/internal/l$c;->b(Ljava/util/List;Lkg/k;)Lkg/j;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkg/j;

    .line 4
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 5
    invoke-interface {p2, p3}, Lio/grpc/alts/internal/f0$a;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkg/j;

    .line 7
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    goto :goto_2

    .line 8
    :cond_3
    throw p2
.end method
