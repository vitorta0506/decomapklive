.class final Lio/grpc/alts/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/p;


# static fields
.field private static final e:I


# instance fields
.field private final a:Lio/grpc/alts/internal/a;

.field private final b:[B

.field private final c:[B

.field private final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/grpc/alts/internal/c;->d()I

    move-result v0

    sput v0, Lio/grpc/alts/internal/d;->e:I

    return-void
.end method

.method constructor <init>([BZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lio/grpc/alts/internal/d;->b:[B

    new-array v2, v0, [B

    .line 3
    iput-object v2, p0, Lio/grpc/alts/internal/d;->c:[B

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lio/grpc/alts/internal/d;->d:[B

    .line 5
    array-length v0, p1

    sget v3, Lio/grpc/alts/internal/d;->e:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    if-eqz p2, :cond_1

    move-object v1, v2

    .line 6
    :cond_1
    array-length p2, v1

    sub-int/2addr p2, v4

    const/16 v0, -0x80

    aput-byte v0, v1, p2

    .line 7
    new-instance p2, Lio/grpc/alts/internal/c;

    invoke-direct {p2, p1}, Lio/grpc/alts/internal/c;-><init>([B)V

    iput-object p2, p0, Lio/grpc/alts/internal/d;->a:Lio/grpc/alts/internal/a;

    return-void
.end method

.method static e()I
    .locals 1

    sget v0, Lio/grpc/alts/internal/d;->e:I

    return v0
.end method

.method static f([B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 2
    aget-byte v3, p0, v0

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    .line 3
    aget-byte v3, p0, v0

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v0, v2, :cond_2

    return-void

    .line 4
    :cond_2
    array-length v0, p0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Counter has overflowed."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private g()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/d;->c:[B

    iget-object v1, p0, Lio/grpc/alts/internal/d;->d:[B

    invoke-static {v0, v1}, Lio/grpc/alts/internal/d;->f([B[B)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/d;->d:[B

    return-object v0
.end method

.method private h()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/d;->b:[B

    iget-object v1, p0, Lio/grpc/alts/internal/d;->d:[B

    invoke-static {v0, v1}, Lio/grpc/alts/internal/d;->f([B[B)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/d;->d:[B

    return-object v0
.end method


# virtual methods
.method public a(Lkg/j;Lkg/j;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lkg/j;->t2()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/o;->d(Z)V

    .line 3
    invoke-virtual {p1}, Lkg/j;->s1()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/o;->d(Z)V

    .line 4
    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v1

    invoke-virtual {p1}, Lkg/j;->t2()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5
    invoke-virtual {p2}, Lkg/j;->s1()I

    move-result v4

    if-ne v4, v3, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Lcom/google/common/base/o;->d(Z)V

    .line 6
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v4

    invoke-virtual {p2, v4, v0}, Lkg/j;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 7
    invoke-direct {p0}, Lio/grpc/alts/internal/d;->g()[B

    move-result-object v5

    .line 8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 9
    iget-object v7, p0, Lio/grpc/alts/internal/d;->a:Lio/grpc/alts/internal/a;

    invoke-interface {v7, v1, v4, v5}, Lio/grpc/alts/internal/a;->b(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[B)V

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v6

    .line 11
    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Lkg/j;->L2(I)Lkg/j;

    .line 12
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Lkg/j;->R1(I)Lkg/j;

    .line 13
    invoke-virtual {p1}, Lkg/j;->t2()I

    move-result p1

    const/16 p2, 0x10

    if-ne p1, p2, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lcom/google/common/base/a0;->a(Z)V

    return-void
.end method

.method public b(Lkg/j;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/j;",
            "Ljava/util/List<",
            "Lkg/j;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkg/j;->s1()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 2
    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v0

    invoke-virtual {p1}, Lkg/j;->t2()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lkg/j;->n2(II)Lkg/j;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lkg/j;->L2(I)Lkg/j;

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkg/j;

    .line 5
    invoke-virtual {v0, v3}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lkg/j;->t2()I

    move-result p2

    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/google/common/base/a0;->a(Z)V

    .line 7
    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result p2

    invoke-virtual {p1}, Lkg/j;->t2()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    invoke-direct {p0}, Lio/grpc/alts/internal/d;->h()[B

    move-result-object v1

    .line 11
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 12
    iget-object v4, p0, Lio/grpc/alts/internal/d;->a:Lio/grpc/alts/internal/a;

    invoke-interface {v4, p2, v0, v1}, Lio/grpc/alts/internal/a;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[B)V

    .line 13
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    sub-int/2addr p2, v3

    .line 14
    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lkg/j;->L2(I)Lkg/j;

    .line 15
    invoke-virtual {p1}, Lkg/j;->q0()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p1}, Lcom/google/common/base/a0;->a(Z)V

    return-void
.end method

.method public c(Lkg/j;Lkg/j;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/j;",
            "Lkg/j;",
            "Ljava/util/List<",
            "Lkg/j;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v0

    invoke-virtual {p1}, Lkg/j;->t2()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lkg/j;->n2(II)Lkg/j;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lkg/j;->L2(I)Lkg/j;

    .line 3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkg/j;

    .line 4
    invoke-virtual {v0, v1}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p2}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    .line 6
    invoke-virtual {p0, p1, v0}, Lio/grpc/alts/internal/d;->a(Lkg/j;Lkg/j;)V

    return-void
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method
