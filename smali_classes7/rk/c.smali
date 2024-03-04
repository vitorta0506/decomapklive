.class public Lrk/c;
.super Lrk/j;
.source "SourceFile"


# instance fields
.field private final b:I

.field private final c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrk/k;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrk/m;",
            ">;"
        }
    .end annotation
.end field

.field private final f:J

.field private g:J

.field private h:Lrk/d;


# direct methods
.method private constructor <init>(ILjava/util/List;Ljava/util/List;JJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lrk/k;",
            ">;",
            "Ljava/util/List<",
            "Lrk/m;",
            ">;JJZ)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrk/j;-><init>(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrk/c;->g:J

    iput p1, p0, Lrk/c;->b:I

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lrk/c;->d:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lrk/c;->e:Ljava/util/List;

    iput-wide p4, p0, Lrk/c;->g:J

    iput-wide p6, p0, Lrk/c;->f:J

    iput-boolean p8, p0, Lrk/c;->c:Z

    return-void
.end method

.method public static d(Ljava/lang/Object;)Lrk/c;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lrk/c;

    if-eqz v0, :cond_0

    check-cast p0, Lrk/c;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-static {p0}, Lrk/k;->i(Ljava/lang/Object;)Lrk/k;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v3, -0x1

    if-ge v0, v1, :cond_2

    invoke-static {p0}, Lrk/m;->a(Ljava/lang/Object;)Lrk/m;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lrk/c;

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lrk/c;-><init>(ILjava/util/List;Ljava/util/List;JJZ)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unknown version for hss private key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lrk/c;->d(Ljava/lang/Object;)Lrk/c;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    throw p0

    :cond_6
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Ldl/a;->b(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lrk/c;->d(Ljava/lang/Object;)Lrk/c;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e([B[B)Lrk/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lrk/c;->d(Ljava/lang/Object;)Lrk/c;

    move-result-object p0

    invoke-static {p1}, Lrk/d;->b(Ljava/lang/Object;)Lrk/d;

    move-result-object p1

    iput-object p1, p0, Lrk/c;->h:Lrk/d;

    return-object p0
.end method

.method private static l(Lrk/c;)Lrk/c;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lrk/c;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lrk/c;->d(Ljava/lang/Object;)Lrk/c;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public b(I)Lrk/c;
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lrk/c;->k()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    iget-wide v8, p0, Lrk/c;->g:J

    add-long v10, v8, v2

    add-long/2addr v2, v8

    iput-wide v2, p0, Lrk/c;->g:J

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lrk/c;->f()Ljava/util/List;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lrk/c;->j()Ljava/util/List;

    move-result-object p1

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lrk/c;

    iget v5, p0, Lrk/c;->b:I

    const/4 v12, 0x1

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lrk/c;-><init>(ILjava/util/List;Ljava/util/List;JJZ)V

    invoke-static {p1}, Lrk/c;->l(Lrk/c;)Lrk/c;

    move-result-object p1

    invoke-virtual {p0}, Lrk/c;->m()V

    monitor-exit p0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "usageCount exceeds usages remaining in current leaf"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized c()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lrk/c;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {p0}, Lrk/c;->l(Lrk/c;)Lrk/c;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lrk/c;

    iget v1, p0, Lrk/c;->b:I

    iget v2, p1, Lrk/c;->b:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lrk/c;->c:Z

    iget-boolean v2, p1, Lrk/c;->c:Z

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-wide v1, p0, Lrk/c;->f:J

    iget-wide v3, p1, Lrk/c;->f:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    return v0

    :cond_4
    iget-wide v1, p0, Lrk/c;->g:J

    iget-wide v3, p1, Lrk/c;->g:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    return v0

    :cond_5
    iget-object v1, p0, Lrk/c;->d:Ljava/util/List;

    iget-object v2, p1, Lrk/c;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v0, p0, Lrk/c;->e:Ljava/util/List;

    iget-object p1, p1, Lrk/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method declared-synchronized f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrk/k;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrk/c;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lrk/c;->b:I

    return v0
.end method

.method public declared-synchronized getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lrk/a;->f()Lrk/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v0

    iget v1, p0, Lrk/c;->b:I

    invoke-virtual {v0, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v0

    iget-wide v1, p0, Lrk/c;->g:J

    invoke-virtual {v0, v1, v2}, Lrk/a;->j(J)Lrk/a;

    move-result-object v0

    iget-wide v1, p0, Lrk/c;->f:J

    invoke-virtual {v0, v1, v2}, Lrk/a;->j(J)Lrk/a;

    move-result-object v0

    iget-boolean v1, p0, Lrk/c;->c:Z

    invoke-virtual {v0, v1}, Lrk/a;->a(Z)Lrk/a;

    move-result-object v0

    iget-object v1, p0, Lrk/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrk/k;

    invoke-virtual {v0, v2}, Lrk/a;->c(Lorg/bouncycastle/util/c;)Lrk/a;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lrk/c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrk/m;

    invoke-virtual {v0, v2}, Lrk/a;->c(Lorg/bouncycastle/util/c;)Lrk/a;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lrk/a;->b()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Lrk/d;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lrk/d;

    iget v1, p0, Lrk/c;->b:I

    invoke-virtual {p0}, Lrk/c;->i()Lrk/k;

    move-result-object v2

    invoke-virtual {v2}, Lrk/k;->n()Lrk/l;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lrk/d;-><init>(ILrk/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lrk/c;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lrk/c;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrk/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrk/c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lrk/c;->f:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lrk/c;->g:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method i()Lrk/k;
    .locals 2

    iget-object v0, p0, Lrk/c;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrk/k;

    return-object v0
.end method

.method declared-synchronized j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrk/m;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrk/c;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()J
    .locals 4

    iget-wide v0, p0, Lrk/c;->f:J

    iget-wide v2, p0, Lrk/c;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method m()V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lrk/c;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [J

    invoke-virtual/range {p0 .. p0}, Lrk/c;->c()J

    move-result-wide v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_0
    if-ltz v6, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrk/k;

    invoke-virtual {v8}, Lrk/k;->o()Lrk/n;

    move-result-object v8

    invoke-virtual {v8}, Lrk/n;->c()I

    move-result v9

    shl-int v9, v7, v9

    sub-int/2addr v9, v7

    int-to-long v9, v9

    and-long/2addr v9, v4

    aput-wide v9, v3, v6

    invoke-virtual {v8}, Lrk/n;->c()I

    move-result v8

    ushr-long/2addr v4, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lrk/k;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lrk/k;

    iget-object v5, v0, Lrk/c;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lrk/m;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lrk/m;

    invoke-virtual/range {p0 .. p0}, Lrk/c;->i()Lrk/k;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v9, v4, v8

    invoke-virtual {v9}, Lrk/k;->h()I

    move-result v9

    sub-int/2addr v9, v7

    int-to-long v9, v9

    aget-wide v11, v3, v8

    cmp-long v13, v9, v11

    if-eqz v13, :cond_1

    invoke-virtual {v6}, Lrk/k;->o()Lrk/n;

    move-result-object v9

    invoke-virtual {v6}, Lrk/k;->m()Lrk/e;

    move-result-object v10

    aget-wide v11, v3, v8

    long-to-int v12, v11

    invoke-virtual {v6}, Lrk/k;->g()[B

    move-result-object v11

    invoke-virtual {v6}, Lrk/k;->k()[B

    move-result-object v6

    invoke-static {v9, v10, v12, v11, v6}, Lrk/h;->a(Lrk/n;Lrk/e;I[B[B)Lrk/k;

    move-result-object v6

    aput-object v6, v4, v8

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-ge v9, v2, :cond_8

    add-int/lit8 v10, v9, -0x1

    aget-object v11, v4, v10

    const/16 v12, 0x10

    new-array v13, v12, [B

    const/16 v14, 0x20

    new-array v15, v14, [B

    new-instance v12, Lrk/q;

    invoke-virtual {v11}, Lrk/k;->g()[B

    move-result-object v8

    invoke-virtual {v11}, Lrk/k;->k()[B

    move-result-object v14

    invoke-virtual {v11}, Lrk/k;->m()Lrk/e;

    move-result-object v11

    invoke-virtual {v11}, Lrk/e;->b()Lorg/bouncycastle/asn1/n;

    move-result-object v11

    invoke-static {v11}, Lrk/b;->a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;

    move-result-object v11

    invoke-direct {v12, v8, v14, v11}, Lrk/q;-><init>([B[BLorg/bouncycastle/crypto/e;)V

    aget-wide v7, v3, v10

    long-to-int v8, v7

    invoke-virtual {v12, v8}, Lrk/q;->e(I)V

    const/4 v7, -0x2

    invoke-virtual {v12, v7}, Lrk/q;->d(I)V

    const/4 v7, 0x1

    invoke-virtual {v12, v15, v7}, Lrk/q;->a([BZ)V

    const/16 v8, 0x20

    new-array v8, v8, [B

    const/4 v11, 0x0

    invoke-virtual {v12, v8, v11}, Lrk/q;->a([BZ)V

    const/16 v12, 0x10

    invoke-static {v8, v11, v13, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v2, -0x1

    if-ge v9, v8, :cond_2

    aget-wide v16, v3, v9

    aget-object v8, v4, v9

    invoke-virtual {v8}, Lrk/k;->h()I

    move-result v8

    sub-int/2addr v8, v7

    int-to-long v7, v8

    cmp-long v14, v16, v7

    if-nez v14, :cond_4

    goto :goto_3

    :cond_2
    aget-wide v7, v3, v9

    aget-object v14, v4, v9

    invoke-virtual {v14}, Lrk/k;->h()I

    move-result v14

    int-to-long v11, v14

    cmp-long v14, v7, v11

    if-nez v14, :cond_3

    :goto_3
    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :cond_4
    :goto_4
    aget-object v7, v4, v9

    invoke-virtual {v7}, Lrk/k;->g()[B

    move-result-object v7

    invoke-static {v13, v7}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result v7

    if-eqz v7, :cond_5

    aget-object v7, v4, v9

    invoke-virtual {v7}, Lrk/k;->k()[B

    move-result-object v7

    invoke-static {v15, v7}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_6

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrk/k;

    invoke-virtual {v6}, Lrk/k;->o()Lrk/n;

    move-result-object v6

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrk/k;

    invoke-virtual {v7}, Lrk/k;->m()Lrk/e;

    move-result-object v7

    aget-wide v11, v3, v9

    long-to-int v8, v11

    invoke-static {v6, v7, v8, v13, v15}, Lrk/h;->a(Lrk/n;Lrk/e;I[B[B)Lrk/k;

    move-result-object v6

    aput-object v6, v4, v9

    aget-object v6, v4, v10

    aget-object v7, v4, v9

    invoke-virtual {v7}, Lrk/k;->n()Lrk/l;

    move-result-object v7

    invoke-virtual {v7}, Lrk/l;->c()[B

    move-result-object v7

    invoke-static {v6, v7}, Lrk/h;->c(Lrk/k;[B)Lrk/m;

    move-result-object v6

    aput-object v6, v5, v10

    :goto_6
    const/4 v6, 0x1

    goto :goto_7

    :cond_6
    if-nez v11, :cond_7

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrk/k;

    invoke-virtual {v6}, Lrk/k;->o()Lrk/n;

    move-result-object v6

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrk/k;

    invoke-virtual {v7}, Lrk/k;->m()Lrk/e;

    move-result-object v7

    aget-wide v10, v3, v9

    long-to-int v8, v10

    invoke-static {v6, v7, v8, v13, v15}, Lrk/h;->a(Lrk/n;Lrk/e;I[B[B)Lrk/k;

    move-result-object v6

    aput-object v6, v4, v9

    goto :goto_6

    :cond_7
    :goto_7
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v0, v4, v5}, Lrk/c;->n([Lrk/k;[Lrk/m;)V

    :cond_9
    return-void
.end method

.method protected n([Lrk/k;[Lrk/m;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lrk/c;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lrk/c;->e:Ljava/util/List;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
