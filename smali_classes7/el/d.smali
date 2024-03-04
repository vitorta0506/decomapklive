.class public Lel/d;
.super Ljava/io/BufferedWriter;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:[C


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/16 p1, 0x40

    new-array p1, p1, [C

    iput-object p1, p0, Lel/d;->b:[C

    invoke-static {}, Lorg/bouncycastle/util/i;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lel/d;->a:I

    return-void
.end method

.method private a([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/a;->a([B)[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lel/d;->b:[C

    array-length v4, v3

    if-eq v2, v4, :cond_1

    add-int v4, v1, v2

    array-length v5, p1

    if-lt v4, v5, :cond_0

    goto :goto_2

    :cond_0
    aget-byte v4, p1, v4

    int-to-char v4, v4

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p0, v3, v0, v2}, Ljava/io/BufferedWriter;->write([CII)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v2, p0, Lel/d;->b:[C

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-----"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-----"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    return-void
.end method


# virtual methods
.method public b(Lel/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lel/c;->a()Lel/b;

    move-result-object p1

    invoke-virtual {p1}, Lel/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lel/d;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lel/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lel/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lel/a;

    invoke-virtual {v1}, Lel/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Lel/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    :cond_1
    invoke-virtual {p1}, Lel/b;->b()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lel/d;->a([B)V

    invoke-virtual {p1}, Lel/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lel/d;->c(Ljava/lang/String;)V

    return-void
.end method
