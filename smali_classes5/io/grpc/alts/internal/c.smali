.class final Lio/grpc/alts/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/a;


# instance fields
.field private final a:[B

.field private final b:[B

.field private final c:[B

.field private final d:[B

.field private e:Lio/grpc/alts/internal/a;


# direct methods
.method constructor <init>([B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lio/grpc/alts/internal/c;->b:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lio/grpc/alts/internal/c;->d:[B

    .line 4
    array-length v0, p1

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    const/16 v0, 0x20

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lio/grpc/alts/internal/c;->a:[B

    .line 6
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/c;->c:[B

    return-void
.end method

.method private static c([BI[BII)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static d()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method private static e([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "HMACSHA256"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 3
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->update(B)V

    .line 5
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0
.end method

.method private static f([B[B[B)V
    .locals 4

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    :goto_1
    if-ge v1, v2, :cond_1

    .line 2
    aget-byte v0, p1, v1

    aget-byte v3, p2, v1

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private g([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/c;->e:Lio/grpc/alts/internal/a;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/alts/internal/c;->b:[B

    .line 2
    invoke-static {p1, v3, v0, v2, v1}, Lio/grpc/alts/internal/c;->c([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/alts/internal/c;->b:[B

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-static {}, Lio/grpc/alts/internal/b;->f()I

    move-result p1

    .line 5
    iget-object v0, p0, Lio/grpc/alts/internal/c;->a:[B

    iget-object v1, p0, Lio/grpc/alts/internal/c;->b:[B

    invoke-static {v0, v1}, Lio/grpc/alts/internal/c;->e([B[B)[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 6
    new-instance v0, Lio/grpc/alts/internal/b;

    invoke-direct {v0, p1}, Lio/grpc/alts/internal/b;-><init>([B)V

    iput-object v0, p0, Lio/grpc/alts/internal/c;->e:Lio/grpc/alts/internal/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lio/grpc/alts/internal/c;->g([B)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/c;->d:[B

    iget-object v1, p0, Lio/grpc/alts/internal/c;->c:[B

    invoke-static {v0, v1, p3}, Lio/grpc/alts/internal/c;->f([B[B[B)V

    .line 3
    iget-object p3, p0, Lio/grpc/alts/internal/c;->e:Lio/grpc/alts/internal/a;

    iget-object v0, p0, Lio/grpc/alts/internal/c;->d:[B

    invoke-interface {p3, p1, p2, v0}, Lio/grpc/alts/internal/a;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[B)V

    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lio/grpc/alts/internal/c;->g([B)V

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/c;->d:[B

    iget-object v1, p0, Lio/grpc/alts/internal/c;->c:[B

    invoke-static {v0, v1, p3}, Lio/grpc/alts/internal/c;->f([B[B[B)V

    .line 3
    iget-object p3, p0, Lio/grpc/alts/internal/c;->e:Lio/grpc/alts/internal/a;

    iget-object v0, p0, Lio/grpc/alts/internal/c;->d:[B

    invoke-interface {p3, p1, p2, v0}, Lio/grpc/alts/internal/a;->b(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[B)V

    return-void
.end method
