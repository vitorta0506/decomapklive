.class final Lcom/squareup/okhttp/internal/b$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private final c:[Ljava/io/File;

.field private final d:[Ljava/io/File;

.field private e:Z

.field private f:Lcom/squareup/okhttp/internal/b$e;

.field private g:J

.field final synthetic h:Lcom/squareup/okhttp/internal/b;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/b;Ljava/lang/String;)V
    .locals 6

    .line 2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/b$f;->h:Lcom/squareup/okhttp/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/squareup/okhttp/internal/b$f;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/squareup/okhttp/internal/b;->h(Lcom/squareup/okhttp/internal/b;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/squareup/okhttp/internal/b$f;->b:[J

    .line 5
    invoke-static {p1}, Lcom/squareup/okhttp/internal/b;->h(Lcom/squareup/okhttp/internal/b;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/b$f;->c:[Ljava/io/File;

    .line 6
    invoke-static {p1}, Lcom/squareup/okhttp/internal/b;->h(Lcom/squareup/okhttp/internal/b;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/b$f;->d:[Ljava/io/File;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/b;->h(Lcom/squareup/okhttp/internal/b;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    iget-object v2, p0, Lcom/squareup/okhttp/internal/b$f;->c:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/b;->p(Lcom/squareup/okhttp/internal/b;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Lcom/squareup/okhttp/internal/b$f;->d:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/b;->p(Lcom/squareup/okhttp/internal/b;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/b;Ljava/lang/String;Lcom/squareup/okhttp/internal/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/b$f;-><init>(Lcom/squareup/okhttp/internal/b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/b$f;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/b$f;->m([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/b$f;)[J
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/b$f;->b:[J

    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/b$f;)[Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/b$f;->c:[Ljava/io/File;

    return-object p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/b$f;)[Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/b$f;->d:[Ljava/io/File;

    return-object p0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/b$f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/b$f;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/b$f;)J
    .locals 2

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/b$f;->g:J

    return-wide v0
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/b$f;J)J
    .locals 0

    iput-wide p1, p0, Lcom/squareup/okhttp/internal/b$f;->g:J

    return-wide p1
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/b$f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/b$f;->e:Z

    return p0
.end method

.method static synthetic i(Lcom/squareup/okhttp/internal/b$f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/b$f;->e:Z

    return p1
.end method

.method static synthetic j(Lcom/squareup/okhttp/internal/b$f;)Lcom/squareup/okhttp/internal/b$e;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/b$f;->f:Lcom/squareup/okhttp/internal/b$e;

    return-object p0
.end method

.method static synthetic k(Lcom/squareup/okhttp/internal/b$f;Lcom/squareup/okhttp/internal/b$e;)Lcom/squareup/okhttp/internal/b$e;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/b$f;->f:Lcom/squareup/okhttp/internal/b$e;

    return-object p1
.end method

.method private l([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$f;->h:Lcom/squareup/okhttp/internal/b;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/b;->h(Lcom/squareup/okhttp/internal/b;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$f;->b:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :catch_0
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/b$f;->l([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/b$f;->l([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method n()Lcom/squareup/okhttp/internal/b$g;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b$f;->h:Lcom/squareup/okhttp/internal/b;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b$f;->h:Lcom/squareup/okhttp/internal/b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/b;->h(Lcom/squareup/okhttp/internal/b;)I

    move-result v0

    new-array v0, v0, [Lokio/Source;

    .line 3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$f;->b:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [J

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/b$f;->h:Lcom/squareup/okhttp/internal/b;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/b;->h(Lcom/squareup/okhttp/internal/b;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/squareup/okhttp/internal/b$f;->h:Lcom/squareup/okhttp/internal/b;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/b;->i(Lcom/squareup/okhttp/internal/b;)Lcom/squareup/okhttp/internal/io/FileSystem;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/b$f;->c:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v10, Lcom/squareup/okhttp/internal/b$g;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/b$f;->h:Lcom/squareup/okhttp/internal/b;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/b$f;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/b$f;->g:J

    const/4 v8, 0x0

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/squareup/okhttp/internal/b$g;-><init>(Lcom/squareup/okhttp/internal/b;Ljava/lang/String;J[Lokio/Source;[JLcom/squareup/okhttp/internal/b$a;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    nop

    .line 7
    :goto_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$f;->h:Lcom/squareup/okhttp/internal/b;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/b;->h(Lcom/squareup/okhttp/internal/b;)I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 8
    aget-object v1, v0, v9

    if-eqz v1, :cond_1

    .line 9
    aget-object v1, v0, v9

    invoke-static {v1}, Lcom/squareup/okhttp/internal/i;->c(Ljava/io/Closeable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method o(Lokio/BufferedSink;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b$f;->b:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    .line 2
    invoke-interface {p1, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
