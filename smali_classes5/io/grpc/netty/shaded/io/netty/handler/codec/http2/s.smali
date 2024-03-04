.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;
    }
.end annotation


# instance fields
.field private final a:[I

.field private final b:[B

.field private final c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;

.field private final d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u;->a:[I

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u;->b:[B

    invoke-direct {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;-><init>([I[B)V

    return-void
.end method

.method private constructor <init>([I[B)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$a;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;

    .line 4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$a;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;

    .line 5
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->a:[I

    .line 6
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->b:[B

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;)[B
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->b:[B

    return-object p0
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;)[I
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->a:[I

    return-object p0
.end method

.method private d(Lkg/j;Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0xff

    if-ge v0, v4, :cond_1

    .line 2
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    and-int/2addr v4, v5

    .line 3
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->a:[I

    aget v5, v5, v4

    .line 4
    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->b:[B

    aget-byte v4, v6, v4

    shl-long/2addr v2, v4

    int-to-long v5, v5

    or-long/2addr v2, v5

    add-int/2addr v1, v4

    :goto_1
    const/16 v4, 0x8

    if-lt v1, v4, :cond_0

    add-int/lit8 v1, v1, -0x8

    shr-long v4, v2, v1

    long-to-int v5, v4

    .line 5
    invoke-virtual {p1, v5}, Lkg/j;->u2(I)Lkg/j;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    rsub-int/lit8 p2, v1, 0x8

    shl-long/2addr v2, p2

    ushr-int p2, v5, v1

    int-to-long v0, p2

    or-long/2addr v0, v2

    long-to-int p2, v0

    .line 6
    invoke-virtual {p1, p2}, Lkg/j;->u2(I)Lkg/j;

    :cond_2
    return-void
.end method

.method private f(Ljava/lang/CharSequence;)I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->b:[B

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const/4 p1, 0x3

    shr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method public c(Lkg/j;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "out"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lio/grpc/netty/shaded/io/netty/util/c;

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;

    iput-object p1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->a:Lkg/j;

    .line 5
    invoke-virtual {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->q(Lio/grpc/netty/shaded/io/netty/util/g;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->b()V

    goto :goto_2

    :goto_1
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->b()V

    .line 8
    throw p1

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->d(Lkg/j;Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method e(Ljava/lang/CharSequence;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/c;

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;->c()V

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->q(Lio/grpc/netty/shaded/io/netty/util/g;)I

    .line 5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;->b()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->f(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method
