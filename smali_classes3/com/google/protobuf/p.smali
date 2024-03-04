.class public abstract Lcom/google/protobuf/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/p$c;,
        Lcom/google/protobuf/p$d;,
        Lcom/google/protobuf/p$e;,
        Lcom/google/protobuf/p$b;
    }
.end annotation


# static fields
.field private static volatile f:I = 0x64


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Lcom/google/protobuf/q;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget v0, Lcom/google/protobuf/p;->f:I

    iput v0, p0, Lcom/google/protobuf/p;->b:I

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lcom/google/protobuf/p;->c:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/protobuf/p;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/p;-><init>()V

    return-void
.end method

.method public static E(ILjava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_0
    const/16 v1, 0x20

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_2

    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 2
    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_5

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4

    return p0

    :cond_4
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 4
    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 5
    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static c(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static d(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static h(Ljava/io/InputStream;)Lcom/google/protobuf/p;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/protobuf/p;->i(Ljava/io/InputStream;I)Lcom/google/protobuf/p;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/io/InputStream;I)Lcom/google/protobuf/p;
    .locals 2

    if-lez p1, :cond_1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/protobuf/u0;->d:[B

    invoke-static {p0}, Lcom/google/protobuf/p;->m([B)Lcom/google/protobuf/p;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/protobuf/p$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/protobuf/p$d;-><init>(Ljava/io/InputStream;ILcom/google/protobuf/p$a;)V

    return-object v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static j(Ljava/lang/Iterable;Z)Lcom/google/protobuf/p;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;Z)",
            "Lcom/google/protobuf/p;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v2, v4

    .line 3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    .line 5
    new-instance v0, Lcom/google/protobuf/p$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/google/protobuf/p$c;-><init>(Ljava/lang/Iterable;IZLcom/google/protobuf/p$a;)V

    return-object v0

    .line 6
    :cond_3
    new-instance p1, Lcom/google/protobuf/v0;

    invoke-direct {p1, p0}, Lcom/google/protobuf/v0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {p1}, Lcom/google/protobuf/p;->h(Ljava/io/InputStream;)Lcom/google/protobuf/p;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/p;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/p;->l(Ljava/nio/ByteBuffer;Z)Lcom/google/protobuf/p;

    move-result-object p0

    return-object p0
.end method

.method static l(Ljava/nio/ByteBuffer;Z)Lcom/google/protobuf/p;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    .line 3
    invoke-static {v0, v1, p0, p1}, Lcom/google/protobuf/p;->o([BIIZ)Lcom/google/protobuf/p;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/p$e;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/google/protobuf/p$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/protobuf/p$e;-><init>(Ljava/nio/ByteBuffer;ZLcom/google/protobuf/p$a;)V

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array v0, p1, [B

    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    const/4 v1, 0x1

    .line 8
    invoke-static {v0, p0, p1, v1}, Lcom/google/protobuf/p;->o([BIIZ)Lcom/google/protobuf/p;

    move-result-object p0

    return-object p0
.end method

.method public static m([B)Lcom/google/protobuf/p;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/p;->n([BII)Lcom/google/protobuf/p;

    move-result-object p0

    return-object p0
.end method

.method public static n([BII)Lcom/google/protobuf/p;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/p;->o([BIIZ)Lcom/google/protobuf/p;

    move-result-object p0

    return-object p0
.end method

.method static o([BIIZ)Lcom/google/protobuf/p;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/protobuf/p$b;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/p$b;-><init>([BIIZLcom/google/protobuf/p$a;)V

    .line 2
    :try_start_0
    invoke-virtual {v6, p2}, Lcom/google/protobuf/p$b;->q(I)I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract A()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o1;",
            ">(",
            "Lcom/google/protobuf/e2<",
            "TT;>;",
            "Lcom/google/protobuf/f0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract C(Lcom/google/protobuf/o1$a;Lcom/google/protobuf/f0;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract D()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract F()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract G()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract H()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract I()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract J()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract K()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract L()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract M()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract N()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final O(I)I
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/protobuf/p;->c:I

    .line 2
    iput p1, p0, Lcom/google/protobuf/p;->c:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/p;->e:Z

    return v0
.end method

.method public abstract Q(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/p;->a:I

    iget v1, p0, Lcom/google/protobuf/p;->b:I

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract p(I)V
.end method

.method public abstract q(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract r()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract s()Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract t()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract u()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract v()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract w()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract x()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract y(ILcom/google/protobuf/o1$a;Lcom/google/protobuf/f0;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract z()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
