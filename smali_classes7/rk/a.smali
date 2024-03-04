.class public Lrk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public static f()Lrk/a;
    .locals 1

    new-instance v0, Lrk/a;

    invoke-direct {v0}, Lrk/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Z)Lrk/a;
    .locals 1

    iget-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object p0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public c(Lorg/bouncycastle/util/c;)Lrk/a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-interface {p1}, Lorg/bouncycastle/util/c;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public d([B)Lrk/a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e([[B)Lrk/a;
    .locals 4

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public g(II)Lrk/a;
    .locals 1

    :goto_0
    iget-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    iget-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public h(I)Lrk/a;
    .locals 2

    const v0, 0xffff

    and-int/2addr p1, v0

    iget-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object p0
.end method

.method public i(I)Lrk/a;
    .locals 2

    iget-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lrk/a;->a:Ljava/io/ByteArrayOutputStream;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object p0
.end method

.method public j(J)Lrk/a;
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lrk/a;->i(I)Lrk/a;

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lrk/a;->i(I)Lrk/a;

    return-object p0
.end method
