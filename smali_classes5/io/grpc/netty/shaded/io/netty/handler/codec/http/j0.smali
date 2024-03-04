.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Ljava/util/regex/Pattern;

.field public static final h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

.field public static final i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "(\\S+)/(\\d+)\\.(\\d+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->g:Ljava/util/regex/Pattern;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    const-string v2, "HTTP"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    const-string v8, "HTTP"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "protocolName"

    .line 13
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid character in protocolName"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "majorVersion"

    .line 18
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    const-string v0, "minorVersion"

    .line 19
    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 20
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->a:Ljava/lang/String;

    .line 21
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->b:I

    .line 22
    iput p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->c:I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->d:Ljava/lang/String;

    .line 24
    iput-boolean p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->e:Z

    if-eqz p5, :cond_2

    .line 25
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->f:[B

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->f:[B

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "text"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->a:Ljava/lang/String;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->b:I

    const/4 v2, 0x3

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->c:I

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->d:Ljava/lang/String;

    .line 9
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->e:Z

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->f:[B

    return-void

    .line 11
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid version format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static h(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;
    .locals 2

    const-string v0, "text"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->i(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;-><init>(Ljava/lang/String;Z)V

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "text is empty (possibly HTTP/0.9)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static i(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;
    .locals 1

    const-string v0, "HTTP/1.1"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    return-object p0

    :cond_0
    const-string v0, "HTTP/1.0"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->d()I

    move-result v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->d()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->e()I

    move-result v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->e()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method b(Lkg/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->f:[B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->d:Ljava/lang/String;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0, v1}, Lkg/j;->D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Lkg/j;->A2([B)Lkg/j;

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->e:Z

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->e()I

    move-result v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->e()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->d()I

    move-result v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->d()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->d()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->e()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
