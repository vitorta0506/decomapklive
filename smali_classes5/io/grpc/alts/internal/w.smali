.class public final Lio/grpc/alts/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lio/grpc/alts/internal/o;

.field private final b:Lio/grpc/alts/internal/h0;


# direct methods
.method public constructor <init>(Lio/grpc/alts/internal/h0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/alts/internal/o;

    invoke-direct {v0}, Lio/grpc/alts/internal/o;-><init>()V

    iput-object v0, p0, Lio/grpc/alts/internal/w;->a:Lio/grpc/alts/internal/o;

    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/h0;

    iput-object p1, p0, Lio/grpc/alts/internal/w;->b:Lio/grpc/alts/internal/h0;

    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/w;->b:Lio/grpc/alts/internal/h0;

    invoke-interface {v0}, Lio/grpc/alts/internal/h0;->close()V

    return-void
.end method

.method c(Lkg/k;)Lio/grpc/alts/internal/f0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/grpc/alts/internal/w;->a:Lio/grpc/alts/internal/o;

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/w;->b:Lio/grpc/alts/internal/h0;

    invoke-interface {v0, p1}, Lio/grpc/alts/internal/h0;->d(Lkg/k;)Lio/grpc/alts/internal/f0;

    move-result-object p1

    return-object p1
.end method

.method d()Lio/grpc/alts/internal/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/w;->b:Lio/grpc/alts/internal/h0;

    invoke-interface {v0}, Lio/grpc/alts/internal/h0;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/o;->z(Z)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/w;->b:Lio/grpc/alts/internal/h0;

    invoke-interface {v0}, Lio/grpc/alts/internal/h0;->c()Lio/grpc/alts/internal/j0;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/w;->b:Lio/grpc/alts/internal/h0;

    invoke-interface {v0}, Lio/grpc/alts/internal/h0;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/o;->z(Z)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/w;->b:Lio/grpc/alts/internal/h0;

    invoke-interface {v0}, Lio/grpc/alts/internal/h0;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method f(Lkg/j;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/w;->a:Lio/grpc/alts/internal/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "protector already created"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/w;->a:Lio/grpc/alts/internal/o;

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/o;->c(Lkg/j;)[Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v6, v3, v1

    .line 4
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 6
    iget-object v8, p0, Lio/grpc/alts/internal/w;->b:Lio/grpc/alts/internal/h0;

    invoke-interface {v8, v6}, Lio/grpc/alts/internal/h0;->e(Ljava/nio/ByteBuffer;)V

    .line 7
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int/2addr v8, v7

    add-int/2addr v5, v8

    .line 8
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-ne v6, v7, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {p1, v1}, Lkg/j;->L2(I)Lkg/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v2, v0}, Lio/grpc/alts/internal/w;->a(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 12
    invoke-static {p1, v0}, Lio/grpc/alts/internal/w;->a(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v1
.end method

.method g()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/w;->b:Lio/grpc/alts/internal/h0;

    invoke-interface {v0}, Lio/grpc/alts/internal/h0;->b()Z

    move-result v0

    return v0
.end method

.method h(Lkg/j;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/w;->a:Lio/grpc/alts/internal/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "protector already created"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/w;->a:Lio/grpc/alts/internal/o;

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Lio/grpc/alts/internal/o;->b(Lkg/j;)[Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v7, v3, v1

    .line 4
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 6
    iget-object v8, p0, Lio/grpc/alts/internal/w;->b:Lio/grpc/alts/internal/h0;

    invoke-interface {v8, v7}, Lio/grpc/alts/internal/h0;->f(Ljava/nio/ByteBuffer;)Z

    move-result v8

    .line 7
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    sub-int/2addr v7, v6

    add-int/2addr v5, v7

    move v6, v8

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {p1, v1}, Lkg/j;->R1(I)Lkg/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v2, v0}, Lio/grpc/alts/internal/w;->a(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return v6

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 11
    invoke-static {p1, v0}, Lio/grpc/alts/internal/w;->a(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v1
.end method
