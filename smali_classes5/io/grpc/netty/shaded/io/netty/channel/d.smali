.class public Lio/grpc/netty/shaded/io/netty/channel/d;
.super Lio/grpc/netty/shaded/io/netty/channel/g0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/d$a;
    }
.end annotation


# static fields
.field private static final g:[I

.field public static final h:Lio/grpc/netty/shaded/io/netty/channel/d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x10

    :goto_0
    const/16 v2, 0x200

    if-ge v1, v2, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    :cond_0
    :goto_1
    if-lez v2, :cond_1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    shl-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lio/grpc/netty/shaded/io/netty/channel/d;->g:[I

    const/4 v1, 0x0

    .line 5
    :goto_2
    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/d;->g:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7
    :cond_2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/d;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/d;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/d;->h:Lio/grpc/netty/shaded/io/netty/channel/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x40

    const/16 v1, 0x800

    const/high16 v2, 0x10000

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/d;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/g0;-><init>()V

    const-string v0, "minimum"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    if-lt p2, p1, :cond_3

    if-lt p3, p2, :cond_2

    .line 4
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/d;->h(I)I

    move-result v0

    .line 5
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/d;->g:[I

    aget v2, v1, v0

    if-ge v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/d;->d:I

    goto :goto_0

    .line 7
    :cond_0
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/d;->d:I

    .line 8
    :goto_0
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/channel/d;->h(I)I

    move-result p1

    .line 9
    aget v0, v1, p1

    if-le v0, p3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 10
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/d;->e:I

    goto :goto_1

    .line 11
    :cond_1
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/d;->e:I

    .line 12
    :goto_1
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/channel/d;->f:I

    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maximum: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initial: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic f(I)I
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/channel/d;->h(I)I

    move-result p0

    return p0
.end method

.method static synthetic g()[I
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/d;->g:[I

    return-object v0
.end method

.method private static h(I)I
    .locals 6

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/d;->g:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    return v1

    :cond_0
    if-ne v0, v1, :cond_1

    return v0

    :cond_1
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 2
    sget-object v3, Lio/grpc/netty/shaded/io/netty/channel/d;->g:[I

    aget v4, v3, v2

    add-int/lit8 v5, v2, 0x1

    .line 3
    aget v3, v3, v5

    if-le p0, v3, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    if-ge p0, v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_3
    if-ne p0, v4, :cond_4

    return v2

    :cond_4
    return v5
.end method


# virtual methods
.method public a()Lio/grpc/netty/shaded/io/netty/channel/v0$c;
    .locals 4

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/d$a;

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/d;->d:I

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/channel/d;->e:I

    iget v3, p0, Lio/grpc/netty/shaded/io/netty/channel/d;->f:I

    invoke-direct {v0, p0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/d$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/d;III)V

    return-object v0
.end method
