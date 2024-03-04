.class final Lig/n;
.super Lig/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/n$b;
    }
.end annotation


# static fields
.field private static final c:[Lio/grpc/netty/shaded/io/netty/util/c;


# instance fields
.field private final a:[Lio/grpc/netty/shaded/io/netty/util/c;

.field private final b:[Lio/grpc/netty/shaded/io/netty/util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lio/grpc/netty/shaded/io/netty/util/c;

    sput-object v0, Lig/n;->c:[Lio/grpc/netty/shaded/io/netty/util/c;

    return-void
.end method

.method private constructor <init>([Lio/grpc/netty/shaded/io/netty/util/c;[[B)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lig/a;-><init>()V

    .line 2
    array-length v0, p2

    new-array v0, v0, [Lio/grpc/netty/shaded/io/netty/util/c;

    iput-object v0, p0, Lig/n;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lig/n;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    new-instance v3, Lio/grpc/netty/shaded/io/netty/util/c;

    aget-object v4, p2, v1

    invoke-direct {v3, v4, v0}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>([BZ)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lig/n;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    return-void
.end method

.method static synthetic m(Lig/n;)[Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 0

    iget-object p0, p0, Lig/n;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    return-object p0
.end method

.method static synthetic n(Lig/n;)[Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 0

    iget-object p0, p0, Lig/n;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    return-object p0
.end method

.method static u([[BLio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;)Lig/n;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lio/grpc/netty/shaded/io/netty/util/c;

    .line 1
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->AUTHORITY:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 2
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PATH:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->METHOD:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 4
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    const/4 p1, 0x5

    aput-object p3, v0, p1

    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->SCHEME:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 5
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    const/4 p1, 0x7

    aput-object p4, v0, p1

    sget-object p1, Lig/m0;->g:Lio/grpc/netty/shaded/io/netty/util/c;

    const/16 p2, 0x8

    aput-object p1, v0, p2

    sget-object p1, Lig/m0;->h:Lio/grpc/netty/shaded/io/netty/util/c;

    const/16 p2, 0x9

    aput-object p1, v0, p2

    sget-object p1, Lig/m0;->i:Lio/grpc/netty/shaded/io/netty/util/c;

    const/16 p2, 0xa

    aput-object p1, v0, p2

    sget-object p1, Lig/m0;->j:Lio/grpc/netty/shaded/io/netty/util/c;

    const/16 p2, 0xb

    aput-object p1, v0, p2

    sget-object p1, Lig/m0;->k:Lio/grpc/netty/shaded/io/netty/util/c;

    const/16 p2, 0xc

    aput-object p1, v0, p2

    const/16 p1, 0xd

    aput-object p5, v0, p1

    .line 6
    new-instance p1, Lig/n;

    invoke-direct {p1, v0, p0}, Lig/n;-><init>([Lio/grpc/netty/shaded/io/netty/util/c;[[B)V

    return-object p1
.end method


# virtual methods
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

    new-instance v0, Lig/n$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lig/n$b;-><init>(Lig/n;Lig/n$a;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lig/n;->a:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v0, v0

    iget-object v1, p0, Lig/n;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v1, v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public t()Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object v0, p0, Lig/n;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lig/n;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lig/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lig/n;->iterator()Ljava/util/Iterator;

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
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
