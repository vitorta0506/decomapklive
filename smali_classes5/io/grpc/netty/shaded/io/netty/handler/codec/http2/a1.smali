.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;
    }
.end annotation


# instance fields
.field private final a:[Lio/grpc/netty/shaded/io/netty/util/c;

.field private final b:[Lio/grpc/netty/shaded/io/netty/util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;

    return-void
.end method

.method private varargs constructor <init>(Z[Lio/grpc/netty/shaded/io/netty/util/c;[Lio/grpc/netty/shaded/io/netty/util/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p3

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->z([Lio/grpc/netty/shaded/io/netty/util/c;[Lio/grpc/netty/shaded/io/netty/util/c;)V

    .line 4
    :cond_0
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    .line 5
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->u()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method static synthetic c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;)[Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    return-object p0
.end method

.method static synthetic d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;)[Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    return-object p0
.end method

.method private m(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 6

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->s(Ljava/lang/CharSequence;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    aget-object v4, v4, v3

    .line 4
    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/util/c;->hashCode()I

    move-result v5

    if-ne v5, v0, :cond_0

    invoke-virtual {v4, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    add-int/lit8 v3, v3, 0x1

    aget-object p1, p1, v3

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 7
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    aget-object v3, v3, v2

    .line 8
    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/util/c;->hashCode()I

    move-result v4

    if-ne v4, v0, :cond_2

    invoke-virtual {v3, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    add-int/lit8 v2, v2, 0x1

    aget-object p1, p1, v2

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private static u()Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pseudoHeaders and otherHeaders must be arrays of [name, value] pairs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs x(ZLio/grpc/netty/shaded/io/netty/util/c;[Lio/grpc/netty/shaded/io/netty/util/c;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;
    .locals 4

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/grpc/netty/shaded/io/netty/util/c;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 2
    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, p0, v1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;-><init>(Z[Lio/grpc/netty/shaded/io/netty/util/c;[Lio/grpc/netty/shaded/io/netty/util/c;)V

    return-object v0
.end method

.method private static varargs z([Lio/grpc/netty/shaded/io/netty/util/c;[Lio/grpc/netty/shaded/io/netty/util/c;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 2
    aget-object v2, p0, v1

    const-string v3, "pseudoHeaders"

    invoke-static {v2, v1, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->i(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 3
    :cond_0
    array-length p0, p1

    sub-int/2addr p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, p0, :cond_4

    .line 4
    aget-object v4, p1, v2

    .line 5
    sget-object v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i;->i:Lpg/g$d;

    invoke-interface {v5, v4}, Lpg/g$d;->a(Ljava/lang/Object;)V

    const/16 v5, 0x3a

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/util/c;->v()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v1}, Lio/grpc/netty/shaded/io/netty/util/c;->d(I)B

    move-result v6

    if-eq v6, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/util/c;->v()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4, v1}, Lio/grpc/netty/shaded/io/netty/util/c;->d(I)B

    move-result v4

    if-eq v4, v5, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "otherHeaders name at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is a pseudo header that appears after non-pseudo headers."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v4, v2, 0x1

    .line 9
    aget-object v5, p1, v4

    const-string v6, "otherHeaders"

    invoke-static {v5, v4, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->i(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic K0(Ljava/lang/Object;J)Lpg/i;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->y(Ljava/lang/CharSequence;J)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Z0(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d0(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->n(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->m(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1$a;)V

    return-object v0
.end method

.method public n(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->s(Ljava/lang/CharSequence;)I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 4
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    aget-object v5, v5, v4

    .line 5
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/util/c;->hashCode()I

    move-result v6

    if-ne v6, v0, :cond_0

    invoke-virtual {v5, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    add-int/lit8 v6, v4, 0x1

    aget-object v5, v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ge v3, v2, :cond_3

    .line 8
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    aget-object v4, v4, v3

    .line 9
    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/util/c;->hashCode()I

    move-result v5

    if-ne v5, v0, :cond_2

    invoke-virtual {v4, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v0, v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public t()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a1;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/CharSequence;J)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
