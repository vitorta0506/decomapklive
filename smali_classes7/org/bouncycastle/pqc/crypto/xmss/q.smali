.class public final Lorg/bouncycastle/pqc/crypto/xmss/q;
.super Lorg/bouncycastle/pqc/crypto/xmss/o;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/q$b;
    }
.end annotation


# instance fields
.field private final c:Lorg/bouncycastle/pqc/crypto/xmss/p;

.field private final d:[B

.field private final e:[B

.field private final f:[B

.field private final g:[B

.field private volatile h:J

.field private volatile i:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

.field private volatile j:Z


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)V
    .locals 8

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->a(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)Lorg/bouncycastle/pqc/crypto/xmss/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/p;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/o;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->a(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)Lorg/bouncycastle/pqc/crypto/xmss/p;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->c:Lorg/bouncycastle/pqc/crypto/xmss/p;

    const-string v0, "params == null"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/p;->f()I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->b(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->c(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)Lorg/bouncycastle/pqc/crypto/xmss/u;

    move-result-object v2

    const-string v4, "xmss == null"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/p;->a()I

    move-result v2

    add-int/lit8 v3, v2, 0x7

    div-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/x;->a([BII)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->h:J

    iget-wide v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->h:J

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/x;->l(IJ)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/2addr v3, v4

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->d:[B

    add-int/2addr v3, v0

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->e:[B

    add-int/2addr v3, v0

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->f:[B

    add-int/2addr v3, v0

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->g:[B

    add-int/2addr v3, v0

    array-length v0, v1

    sub-int/2addr v0, v3

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v0

    :try_start_0
    const-class v1, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->c(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)Lorg/bouncycastle/pqc/crypto/xmss/u;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/u;->g()Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->withWOTSDigest(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->d(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->h:J

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->e(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)[B

    move-result-object v7

    if-eqz v7, :cond_3

    array-length v1, v7

    if-ne v1, v0, :cond_2

    iput-object v7, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->d:[B

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->d:[B

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->f(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v2, v1

    if-ne v2, v0, :cond_4

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->e:[B

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->e:[B

    :goto_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->g(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)[B

    move-result-object v6

    if-eqz v6, :cond_7

    array-length v1, v6

    if-ne v1, v0, :cond_6

    iput-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->f:[B

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->f:[B

    :goto_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->h(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)[B

    move-result-object v1

    if-eqz v1, :cond_9

    array-length v2, v1

    if-ne v2, v0, :cond_8

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->g:[B

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of root needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->g:[B

    :goto_3
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->i(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    move-result-object v0

    if-eqz v0, :cond_a

    :goto_4
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    goto :goto_5

    :cond_a
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->d(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)J

    move-result-wide v0

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/p;->a()I

    move-result v2

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->l(IJ)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->d(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)J

    move-result-wide v4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/p;J[B[B)V

    goto :goto_4

    :cond_b
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->j(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;-><init>(J)V

    goto :goto_4

    :goto_5
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->j(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_d

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->j(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)J

    move-result-wide v0

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->getMaxIndex()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxIndex set but not reflected in state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_6
    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/q$b;Lorg/bouncycastle/pqc/crypto/xmss/q$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/q;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/q$b;)V

    return-void
.end method


# virtual methods
.method public c(I)Lorg/bouncycastle/pqc/crypto/xmss/q;
    .locals 7

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    monitor-enter p0

    int-to-long v0, p1

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->f()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->c:Lorg/bouncycastle/pqc/crypto/xmss/p;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/p;)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->d:[B

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->r([B)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->e:[B

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->q([B)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->f:[B

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->o([B)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->g:[B

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->p([B)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->m(J)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->d()J

    move-result-wide v5

    add-long/2addr v5, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v5, v0

    invoke-direct {v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;J)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->l(Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->k()Lorg/bouncycastle/pqc/crypto/xmss/q;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->g()Lorg/bouncycastle/pqc/crypto/xmss/q;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "usageCount exceeds usages remaining"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot ask for a shard with 0 keys"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->h:J

    return-wide v0
.end method

.method public e()Lorg/bouncycastle/pqc/crypto/xmss/p;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->c:Lorg/bouncycastle/pqc/crypto/xmss/p;

    return-object v0
.end method

.method public f()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->getMaxIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method g()Lorg/bouncycastle/pqc/crypto/xmss/q;
    .locals 14

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->d()J

    move-result-wide v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->getMaxIndex()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    cmp-long v7, v0, v2

    if-gez v7, :cond_0

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->c:Lorg/bouncycastle/pqc/crypto/xmss/p;

    iget-wide v10, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->h:J

    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->f:[B

    iget-object v13, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->d:[B

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->updateState(Lorg/bouncycastle/pqc/crypto/xmss/p;J[B[B)V

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->h:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->h:J

    :goto_0
    iput-boolean v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->j:Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->getMaxIndex()J

    move-result-wide v0

    add-long/2addr v0, v5

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->h:J

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->getMaxIndex()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->h()[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()[B
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->c:Lorg/bouncycastle/pqc/crypto/xmss/p;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/p;->f()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->c:Lorg/bouncycastle/pqc/crypto/xmss/p;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/p;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int v2, v1, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    new-array v2, v2, [B

    const/4 v3, 0x0

    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->h:J

    invoke-static {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->q(JI)[B

    move-result-object v4

    invoke-static {v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/x;->e([B[BI)V

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->d:[B

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->e([B[BI)V

    add-int/2addr v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->e:[B

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->e([B[BI)V

    add-int/2addr v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->f:[B

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->e([B[BI)V

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->g:[B

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->e([B[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;->i:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/x;->p(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/a;->j([B[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error serializing bds state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
