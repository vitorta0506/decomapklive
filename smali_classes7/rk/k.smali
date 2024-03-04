.class public Lrk/k;
.super Lrk/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrk/k$a;
    }
.end annotation


# static fields
.field private static l:Lrk/k$a;

.field private static m:[Lrk/k$a;


# instance fields
.field private final b:[B

.field private final c:Lrk/n;

.field private final d:Lrk/e;

.field private final e:I

.field private final f:[B

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lrk/k$a;",
            "[B>;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:Lorg/bouncycastle/crypto/e;

.field private j:I

.field private k:Lrk/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lrk/k$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lrk/k$a;-><init>(I)V

    sput-object v0, Lrk/k;->l:Lrk/k$a;

    const/16 v2, 0x81

    new-array v2, v2, [Lrk/k$a;

    sput-object v2, Lrk/k;->m:[Lrk/k$a;

    aput-object v0, v2, v1

    const/4 v0, 0x2

    :goto_0
    sget-object v1, Lrk/k;->m:[Lrk/k$a;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lrk/k$a;

    invoke-direct {v2, v0}, Lrk/k$a;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Lrk/k;II)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrk/j;-><init>(Z)V

    iget-object v1, p1, Lrk/k;->c:Lrk/n;

    iput-object v1, p0, Lrk/k;->c:Lrk/n;

    iget-object v2, p1, Lrk/k;->d:Lrk/e;

    iput-object v2, p0, Lrk/k;->d:Lrk/e;

    iput p2, p0, Lrk/k;->j:I

    iget-object p2, p1, Lrk/k;->b:[B

    iput-object p2, p0, Lrk/k;->b:[B

    iput p3, p0, Lrk/k;->e:I

    iget-object p2, p1, Lrk/k;->f:[B

    iput-object p2, p0, Lrk/k;->f:[B

    invoke-virtual {v1}, Lrk/n;->c()I

    move-result p2

    shl-int p2, v0, p2

    iput p2, p0, Lrk/k;->h:I

    iget-object p2, p1, Lrk/k;->g:Ljava/util/Map;

    iput-object p2, p0, Lrk/k;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lrk/n;->b()Lorg/bouncycastle/asn1/n;

    move-result-object p2

    invoke-static {p2}, Lrk/b;->a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;

    move-result-object p2

    iput-object p2, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    iget-object p1, p1, Lrk/k;->k:Lrk/l;

    iput-object p1, p0, Lrk/k;->k:Lrk/l;

    return-void
.end method

.method public constructor <init>(Lrk/n;Lrk/e;I[BI[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrk/j;-><init>(Z)V

    iput-object p1, p0, Lrk/k;->c:Lrk/n;

    iput-object p2, p0, Lrk/k;->d:Lrk/e;

    iput p3, p0, Lrk/k;->j:I

    invoke-static {p4}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p2

    iput-object p2, p0, Lrk/k;->b:[B

    iput p5, p0, Lrk/k;->e:I

    invoke-static {p6}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p2

    iput-object p2, p0, Lrk/k;->f:[B

    invoke-virtual {p1}, Lrk/n;->c()I

    move-result p2

    add-int/2addr p2, v0

    shl-int p2, v0, p2

    iput p2, p0, Lrk/k;->h:I

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lrk/k;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lrk/n;->b()Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-static {p1}, Lrk/b;->a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;

    move-result-object p1

    iput-object p1, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    return-void
.end method

.method private b(I)[B
    .locals 5

    invoke-virtual {p0}, Lrk/k;->o()Lrk/n;

    move-result-object v0

    invoke-virtual {v0}, Lrk/n;->c()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lrk/k;->g()[B

    move-result-object v1

    iget-object v3, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-static {v1, v3}, Lrk/p;->a([BLorg/bouncycastle/crypto/e;)V

    iget-object v1, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-static {p1, v1}, Lrk/p;->c(ILorg/bouncycastle/crypto/e;)V

    const/16 v1, -0x7d7e

    iget-object v3, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-static {v1, v3}, Lrk/p;->b(SLorg/bouncycastle/crypto/e;)V

    invoke-virtual {p0}, Lrk/k;->m()Lrk/e;

    move-result-object v1

    invoke-virtual {p0}, Lrk/k;->g()[B

    move-result-object v3

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lrk/k;->k()[B

    move-result-object v0

    invoke-static {v1, v3, p1, v0}, Lrk/o;->d(Lrk/e;[BI[B)[B

    move-result-object p1

    iget-object v0, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-static {p1, v0}, Lrk/p;->a([BLorg/bouncycastle/crypto/e;)V

    iget-object p1, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/e;->d()I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0, p1, v2}, Lorg/bouncycastle/crypto/e;->a([BI)I

    return-object p1

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lrk/k;->d(I)[B

    move-result-object v3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lrk/k;->d(I)[B

    move-result-object v0

    invoke-virtual {p0}, Lrk/k;->g()[B

    move-result-object v1

    iget-object v4, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-static {v1, v4}, Lrk/p;->a([BLorg/bouncycastle/crypto/e;)V

    iget-object v1, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-static {p1, v1}, Lrk/p;->c(ILorg/bouncycastle/crypto/e;)V

    const/16 p1, -0x7c7d

    iget-object v1, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-static {p1, v1}, Lrk/p;->b(SLorg/bouncycastle/crypto/e;)V

    iget-object p1, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-static {v3, p1}, Lrk/p;->a([BLorg/bouncycastle/crypto/e;)V

    iget-object p1, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-static {v0, p1}, Lrk/p;->a([BLorg/bouncycastle/crypto/e;)V

    iget-object p1, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/e;->d()I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, p0, Lrk/k;->i:Lorg/bouncycastle/crypto/e;

    invoke-interface {v0, p1, v2}, Lorg/bouncycastle/crypto/e;->a([BI)I

    return-object p1
.end method

.method private e(Lrk/k$a;)[B
    .locals 3

    iget-object v0, p0, Lrk/k;->g:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lrk/k;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-static {p1}, Lrk/k$a;->a(Lrk/k$a;)I

    move-result v1

    invoke-direct {p0, v1}, Lrk/k;->b(I)[B

    move-result-object v1

    iget-object v2, p0, Lrk/k;->g:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static i(Ljava/lang/Object;)Lrk/k;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lrk/k;

    if-eqz v0, :cond_0

    check-cast p0, Lrk/k;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lrk/n;->e(I)Lrk/n;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lrk/e;->f(I)Lrk/e;

    move-result-object v3

    const/16 v0, 0x10

    new-array v5, v0, [B

    invoke-virtual {p0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-gt v0, v1, :cond_1

    new-array v7, v0, [B

    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Lrk/k;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lrk/k;-><init>(Lrk/n;Lrk/e;I[BI[B)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secret length exceeded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "secret length less than zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "expected version 0 lms private key"

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
    invoke-static {v1}, Lrk/k;->i(Ljava/lang/Object;)Lrk/k;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
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

    invoke-static {p0}, Lrk/k;->i(Ljava/lang/Object;)Lrk/k;

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

.method public static j([B[B)Lrk/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lrk/k;->i(Ljava/lang/Object;)Lrk/k;

    move-result-object p0

    invoke-static {p1}, Lrk/l;->b(Ljava/lang/Object;)Lrk/l;

    move-result-object p1

    iput-object p1, p0, Lrk/k;->k:Lrk/l;

    return-object p0
.end method


# virtual methods
.method public c(I)Lrk/k;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lrk/k;->j:I

    add-int v1, v0, p1

    iget v2, p0, Lrk/k;->e:I

    if-ge v1, v2, :cond_0

    new-instance v1, Lrk/k;

    add-int v2, v0, p1

    invoke-direct {v1, p0, v0, v2}, Lrk/k;-><init>(Lrk/k;II)V

    iget v0, p0, Lrk/k;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lrk/k;->j:I

    monitor-exit p0

    return-object v1

    :cond_0
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
.end method

.method d(I)[B
    .locals 2

    iget v0, p0, Lrk/k;->h:I

    if-ge p1, v0, :cond_1

    sget-object v0, Lrk/k;->m:[Lrk/k$a;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lrk/k$a;

    invoke-direct {v0, p1}, Lrk/k$a;-><init>(I)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lrk/k;->e(Lrk/k$a;)[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lrk/k;->b(I)[B

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lrk/k;

    iget v2, p0, Lrk/k;->j:I

    iget v3, p1, Lrk/k;->j:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lrk/k;->e:I

    iget v3, p1, Lrk/k;->e:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lrk/k;->b:[B

    iget-object v3, p1, Lrk/k;->b:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lrk/k;->c:Lrk/n;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lrk/k;->c:Lrk/n;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lrk/k;->c:Lrk/n;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    :cond_6
    iget-object v2, p0, Lrk/k;->d:Lrk/e;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lrk/k;->d:Lrk/e;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    iget-object v2, p1, Lrk/k;->d:Lrk/e;

    if-eqz v2, :cond_8

    :goto_1
    return v1

    :cond_8
    iget-object v2, p0, Lrk/k;->f:[B

    iget-object v3, p1, Lrk/k;->f:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v1, p0, Lrk/k;->k:Lrk/l;

    if-eqz v1, :cond_a

    iget-object p1, p1, Lrk/k;->k:Lrk/l;

    if-eqz p1, :cond_a

    invoke-virtual {v1, p1}, Lrk/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    return v0

    :cond_b
    :goto_2
    return v1
.end method

.method public f()Lrk/i;
    .locals 7

    invoke-virtual {p0}, Lrk/k;->o()Lrk/n;

    move-result-object v0

    invoke-virtual {v0}, Lrk/n;->c()I

    move-result v0

    invoke-virtual {p0}, Lrk/k;->h()I

    move-result v1

    invoke-virtual {p0}, Lrk/k;->l()Lrk/f;

    move-result-object v2

    const/4 v3, 0x1

    shl-int v4, v3, v0

    add-int/2addr v4, v1

    new-array v1, v0, [[B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    shl-int v6, v3, v5

    div-int v6, v4, v6

    xor-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lrk/k;->d(I)[B

    move-result-object v6

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrk/k;->o()Lrk/n;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lrk/f;->e(Lrk/n;[[B)Lrk/i;

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lrk/k;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lrk/a;->f()Lrk/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v0

    iget-object v1, p0, Lrk/k;->c:Lrk/n;

    invoke-virtual {v1}, Lrk/n;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v0

    iget-object v1, p0, Lrk/k;->d:Lrk/e;

    invoke-virtual {v1}, Lrk/e;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v0

    iget-object v1, p0, Lrk/k;->b:[B

    invoke-virtual {v0, v1}, Lrk/a;->d([B)Lrk/a;

    move-result-object v0

    iget v1, p0, Lrk/k;->j:I

    invoke-virtual {v0, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v0

    iget v1, p0, Lrk/k;->e:I

    invoke-virtual {v0, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v0

    iget-object v1, p0, Lrk/k;->f:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v0

    iget-object v1, p0, Lrk/k;->f:[B

    invoke-virtual {v0, v1}, Lrk/a;->d([B)Lrk/a;

    move-result-object v0

    invoke-virtual {v0}, Lrk/a;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized h()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lrk/k;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lrk/k;->j:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrk/k;->b:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->r([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrk/k;->c:Lrk/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrk/k;->d:Lrk/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lrk/k;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrk/k;->f:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->r([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lrk/k;->k:Lrk/l;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lrk/l;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public k()[B
    .locals 1

    iget-object v0, p0, Lrk/k;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method l()Lrk/f;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lrk/k;->j:I

    iget v1, p0, Lrk/k;->e:I

    if-ge v0, v1, :cond_0

    new-instance v1, Lrk/f;

    iget-object v2, p0, Lrk/k;->d:Lrk/e;

    iget-object v3, p0, Lrk/k;->b:[B

    iget-object v4, p0, Lrk/k;->f:[B

    invoke-direct {v1, v2, v3, v0, v4}, Lrk/f;-><init>(Lrk/e;[BI[B)V

    invoke-virtual {p0}, Lrk/k;->q()V

    monitor-exit p0

    return-object v1

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ExhaustedPrivateKeyException;

    const-string v1, "ots private key exhausted"

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/ExhaustedPrivateKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public m()Lrk/e;
    .locals 1

    iget-object v0, p0, Lrk/k;->d:Lrk/e;

    return-object v0
.end method

.method public n()Lrk/l;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrk/k;->k:Lrk/l;

    if-nez v0, :cond_0

    new-instance v0, Lrk/l;

    iget-object v1, p0, Lrk/k;->c:Lrk/n;

    iget-object v2, p0, Lrk/k;->d:Lrk/e;

    sget-object v3, Lrk/k;->l:Lrk/k$a;

    invoke-direct {p0, v3}, Lrk/k;->e(Lrk/k$a;)[B

    move-result-object v3

    iget-object v4, p0, Lrk/k;->b:[B

    invoke-direct {v0, v1, v2, v3, v4}, Lrk/l;-><init>(Lrk/n;Lrk/e;[B[B)V

    iput-object v0, p0, Lrk/k;->k:Lrk/l;

    :cond_0
    iget-object v0, p0, Lrk/k;->k:Lrk/l;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public o()Lrk/n;
    .locals 1

    iget-object v0, p0, Lrk/k;->c:Lrk/n;

    return-object v0
.end method

.method public p()J
    .locals 2

    iget v0, p0, Lrk/k;->e:I

    iget v1, p0, Lrk/k;->j:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method declared-synchronized q()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lrk/k;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrk/k;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
