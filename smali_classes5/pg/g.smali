.class public Lpg/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpg/g$b;,
        Lpg/g$e;,
        Lpg/g$c;,
        Lpg/g$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T::",
        "Lpg/i<",
        "TK;TV;TT;>;>",
        "Ljava/lang/Object;",
        "Lpg/i<",
        "TK;TV;TT;>;"
    }
.end annotation


# instance fields
.field private final a:[Lpg/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lpg/g$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected final b:Lpg/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final c:B

.field private final d:Lpg/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/o<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final e:Lpg/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g$d<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final f:Lio/grpc/netty/shaded/io/netty/util/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/l<",
            "TK;>;"
        }
    .end annotation
.end field

.field g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lpg/g;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/util/l;Lpg/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/l<",
            "TK;>;",
            "Lpg/o<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lpg/g$d;->a:Lpg/g$d;

    invoke-direct {p0, p1, p2, v0}, Lpg/g;-><init>(Lio/grpc/netty/shaded/io/netty/util/l;Lpg/o;Lpg/g$d;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/util/l;Lpg/o;Lpg/g$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/l<",
            "TK;>;",
            "Lpg/o<",
            "TV;>;",
            "Lpg/g$d<",
            "TK;>;)V"
        }
    .end annotation

    const/16 v0, 0x10

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lpg/g;-><init>(Lio/grpc/netty/shaded/io/netty/util/l;Lpg/o;Lpg/g$d;I)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/util/l;Lpg/o;Lpg/g$d;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/l<",
            "TK;>;",
            "Lpg/o<",
            "TV;>;",
            "Lpg/g$d<",
            "TK;>;I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "valueConverter"

    .line 4
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpg/o;

    iput-object p2, p0, Lpg/g;->d:Lpg/o;

    const-string p2, "nameValidator"

    .line 5
    invoke-static {p3, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpg/g$d;

    iput-object p2, p0, Lpg/g;->e:Lpg/g$d;

    const-string p2, "nameHashingStrategy"

    .line 6
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/l;

    iput-object p1, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    const/16 p1, 0x80

    .line 7
    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->b(I)I

    move-result p1

    new-array p1, p1, [Lpg/g$b;

    iput-object p1, p0, Lpg/g;->a:[Lpg/g$b;

    .line 8
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lpg/g;->c:B

    .line 9
    new-instance p1, Lpg/g$b;

    invoke-direct {p1}, Lpg/g$b;-><init>()V

    iput-object p1, p0, Lpg/g;->b:Lpg/g$b;

    return-void
.end method

.method private H(I)I
    .locals 1

    iget-byte v0, p0, Lpg/g;->c:B

    and-int/2addr p1, v0

    return p1
.end method

.method private K(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpg/g;->a:[Lpg/g$b;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, v0, Lpg/g$b;->d:Lpg/g$b;

    :goto_0
    if-eqz v2, :cond_2

    .line 3
    iget v3, v2, Lpg/g$b;->a:I

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    iget-object v4, v2, Lpg/g$b;->b:Ljava/lang/Object;

    invoke-interface {v3, p3, v4}, Lio/grpc/netty/shaded/io/netty/util/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v1, v2, Lpg/g$b;->c:Ljava/lang/Object;

    .line 5
    iget-object v3, v2, Lpg/g$b;->d:Lpg/g$b;

    iput-object v3, v0, Lpg/g$b;->d:Lpg/g$b;

    .line 6
    invoke-virtual {v2}, Lpg/g$b;->b()V

    .line 7
    iget v2, p0, Lpg/g;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lpg/g;->g:I

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 8
    :goto_1
    iget-object v2, v0, Lpg/g$b;->d:Lpg/g$b;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lpg/g;->a:[Lpg/g$b;

    aget-object v0, v0, p2

    .line 10
    iget v2, v0, Lpg/g$b;->a:I

    if-ne v2, p1, :cond_4

    iget-object p1, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    iget-object v2, v0, Lpg/g$b;->b:Ljava/lang/Object;

    invoke-interface {p1, p3, v2}, Lio/grpc/netty/shaded/io/netty/util/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v1, :cond_3

    .line 11
    iget-object p1, v0, Lpg/g$b;->c:Ljava/lang/Object;

    move-object v1, p1

    .line 12
    :cond_3
    iget-object p1, p0, Lpg/g;->a:[Lpg/g$b;

    iget-object p3, v0, Lpg/g$b;->d:Lpg/g$b;

    aput-object p3, p1, p2

    .line 13
    invoke-virtual {v0}, Lpg/g$b;->b()V

    .line 14
    iget p1, p0, Lpg/g;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lpg/g;->g:I

    :cond_4
    return-object v1
.end method

.method private Q()Lpg/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method static synthetic c(Lpg/g;)Lio/grpc/netty/shaded/io/netty/util/l;
    .locals 0

    iget-object p0, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    return-object p0
.end method

.method static synthetic d(Lpg/g;)[Lpg/g$b;
    .locals 0

    iget-object p0, p0, Lpg/g;->a:[Lpg/g$b;

    return-object p0
.end method

.method static synthetic f(Lpg/g;I)I
    .locals 0

    invoke-direct {p0, p1}, Lpg/g;->H(I)I

    move-result p0

    return p0
.end method

.method private m(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpg/g;->a:[Lpg/g$b;

    aget-object v1, v0, p2

    invoke-virtual {p0, p1, p3, p4, v1}, Lpg/g;->J(ILjava/lang/Object;Ljava/lang/Object;Lpg/g$b;)Lpg/g$b;

    move-result-object p1

    aput-object p1, v0, p2

    .line 2
    iget p1, p0, Lpg/g;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lpg/g;->g:I

    return-void
.end method


# virtual methods
.method public final B(Lpg/i;Lio/grpc/netty/shaded/io/netty/util/l;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/i<",
            "TK;TV;*>;",
            "Lio/grpc/netty/shaded/io/netty/util/l<",
            "TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lpg/i;->size()I

    move-result v0

    invoke-virtual {p0}, Lpg/g;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lpg/g;->I()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3
    invoke-interface {p1, v3}, Lpg/i;->d0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 4
    invoke-virtual {p0, v3}, Lpg/g;->d0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    return v2

    :cond_3
    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 7
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Lio/grpc/netty/shaded/io/netty/util/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public F(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/l;->b(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lpg/g;->H(I)I

    move-result v1

    const-string v2, "name"

    invoke-static {p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lpg/g;->K(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final G(Lio/grpc/netty/shaded/io/netty/util/l;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/l<",
            "TV;>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lpg/g;->I()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, -0x3d4d51cb

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v3, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    invoke-interface {v3, v2}, Lio/grpc/netty/shaded/io/netty/util/l;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3
    invoke-virtual {p0, v2}, Lpg/g;->d0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lio/grpc/netty/shaded/io/netty/util/l;->b(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public I()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lpg/g;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lpg/g;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 4
    iget-object v1, p0, Lpg/g;->b:Lpg/g$b;

    iget-object v1, v1, Lpg/g$b;->f:Lpg/g$b;

    .line 5
    :goto_0
    iget-object v2, p0, Lpg/g;->b:Lpg/g$b;

    if-eq v1, v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lpg/g$b;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, v1, Lpg/g$b;->f:Lpg/g$b;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected J(ILjava/lang/Object;Ljava/lang/Object;Lpg/g$b;)Lpg/g$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Lpg/g$b<",
            "TK;TV;>;)",
            "Lpg/g$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v6, Lpg/g$b;

    iget-object v5, p0, Lpg/g;->b:Lpg/g$b;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lpg/g$b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lpg/g$b;Lpg/g$b;)V

    return-object v6
.end method

.method L(Lpg/g$b;Lpg/g$b;)Lpg/g$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/g$b<",
            "TK;TV;>;",
            "Lpg/g$b<",
            "TK;TV;>;)",
            "Lpg/g$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p1, Lpg/g$b;->a:I

    invoke-direct {p0, v0}, Lpg/g;->H(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lpg/g;->a:[Lpg/g$b;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 3
    iget-object p2, p1, Lpg/g$b;->d:Lpg/g$b;

    aput-object p2, v1, v0

    .line 4
    aget-object p2, v1, v0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_2

    .line 5
    iget-object p2, v2, Lpg/g$b;->d:Lpg/g$b;

    :goto_0
    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_1

    .line 6
    iget-object v0, p2, Lpg/g$b;->d:Lpg/g$b;

    move-object v2, p2

    move-object p2, v0

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p1, Lpg/g$b;->d:Lpg/g$b;

    iput-object p2, v2, Lpg/g$b;->d:Lpg/g$b;

    move-object p2, v2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p1, Lpg/g$b;->d:Lpg/g$b;

    iput-object v0, p2, Lpg/g$b;->d:Lpg/g$b;

    .line 9
    :goto_1
    invoke-virtual {p1}, Lpg/g$b;->b()V

    .line 10
    iget p1, p0, Lpg/g;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lpg/g;->g:I

    return-object p2
.end method

.method public M(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpg/g;->e:Lpg/g$d;

    invoke-interface {v0, p1}, Lpg/g$d;->a(Ljava/lang/Object;)V

    const-string v0, "value"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/l;->b(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-direct {p0, v0}, Lpg/g;->H(I)I

    move-result v1

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lpg/g;->K(IILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0, v0, v1, p1, p2}, Lpg/g;->m(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lpg/g;->Q()Lpg/i;

    move-result-object p1

    return-object p1
.end method

.method public N(Lpg/i;)Lpg/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/i<",
            "+TK;+TV;*>;)TT;"
        }
    .end annotation

    if-eq p1, p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lpg/g;->x()Lpg/i;

    .line 2
    invoke-virtual {p0, p1}, Lpg/g;->n(Lpg/i;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lpg/g;->Q()Lpg/i;

    move-result-object p1

    return-object p1
.end method

.method public O(Ljava/lang/Object;Ljava/lang/Iterable;)Lpg/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpg/g;->e:Lpg/g$d;

    invoke-interface {v0, p1}, Lpg/g$d;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/l;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lpg/g;->H(I)I

    move-result v1

    .line 4
    invoke-direct {p0, v0, v1, p1}, Lpg/g;->K(IILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v3, p0, Lpg/g;->d:Lpg/o;

    invoke-interface {v3, v2}, Lpg/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lpg/g;->m(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-direct {p0}, Lpg/g;->Q()Lpg/i;

    move-result-object p1

    return-object p1
.end method

.method public P(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string v0, "value"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lpg/g;->d:Lpg/o;

    invoke-interface {v0, p2}, Lpg/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "convertedValue"

    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lpg/g;->M(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    move-result-object p1

    return-object p1
.end method

.method protected R()Lpg/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpg/o<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lpg/g;->d:Lpg/o;

    return-object v0
.end method

.method public S(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lpg/g$e;

    invoke-direct {v0, p0, p1}, Lpg/g$e;-><init>(Lpg/g;Ljava/lang/Object;)V

    return-object v0
.end method

.method public Z0(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpg/g;->e:Lpg/g$d;

    invoke-interface {v0, p1}, Lpg/g$d;->a(Ljava/lang/Object;)V

    const-string v0, "value"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/l;->b(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-direct {p0, v0}, Lpg/g;->H(I)I

    move-result v1

    .line 5
    invoke-direct {p0, v0, v1, p1, p2}, Lpg/g;->m(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lpg/g;->Q()Lpg/i;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lpg/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d0(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3
    iget-object v1, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    invoke-interface {v1, p1}, Lio/grpc/netty/shaded/io/netty/util/l;->b(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-direct {p0, v1}, Lpg/g;->H(I)I

    move-result v2

    .line 5
    iget-object v3, p0, Lpg/g;->a:[Lpg/g$b;

    aget-object v2, v3, v2

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    iget v3, v2, Lpg/g$b;->a:I

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    iget-object v4, v2, Lpg/g$b;->b:Ljava/lang/Object;

    invoke-interface {v3, p1, v4}, Lio/grpc/netty/shaded/io/netty/util/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lpg/g$b;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object v2, v2, Lpg/g$b;->d:Lpg/g$b;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lpg/i;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lpg/i;

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/l;->a:Lio/grpc/netty/shaded/io/netty/util/l;

    invoke-virtual {p0, p1, v0}, Lpg/g;->B(Lpg/i;Lio/grpc/netty/shaded/io/netty/util/l;)Z

    move-result p1

    return p1
.end method

.method public g(Lpg/i;)Lpg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/i<",
            "+TK;+TV;*>;)TT;"
        }
    .end annotation

    if-eq p1, p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lpg/g;->n(Lpg/i;)V

    .line 2
    invoke-direct {p0}, Lpg/g;->Q()Lpg/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "can\'t add to itself."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/l;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lpg/g;->H(I)I

    move-result v1

    .line 4
    iget-object v2, p0, Lpg/g;->a:[Lpg/g$b;

    aget-object v1, v2, v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    iget v3, v1, Lpg/g$b;->a:I

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    iget-object v4, v1, Lpg/g$b;->b:Ljava/lang/Object;

    invoke-interface {v3, p1, v4}, Lio/grpc/netty/shaded/io/netty/util/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v2, v1, Lpg/g$b;->c:Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v1, v1, Lpg/g$b;->d:Lpg/g$b;

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/l;->a:Lio/grpc/netty/shaded/io/netty/util/l;

    invoke-virtual {p0, v0}, Lpg/g;->G(Lio/grpc/netty/shaded/io/netty/util/l;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpg/g;->b:Lpg/g$b;

    iget-object v1, v0, Lpg/g$b;->f:Lpg/g$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lpg/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpg/g$c;-><init>(Lpg/g;Lpg/g$a;)V

    return-object v0
.end method

.method protected n(Lpg/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/i<",
            "+TK;+TV;*>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lpg/g;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lpg/g;

    .line 3
    iget-object v0, p1, Lpg/g;->b:Lpg/g$b;

    iget-object v0, v0, Lpg/g$b;->f:Lpg/g$b;

    .line 4
    iget-object v1, p1, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    iget-object v2, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lpg/g;->e:Lpg/g$d;

    iget-object v2, p0, Lpg/g;->e:Lpg/g$d;

    if-ne v1, v2, :cond_0

    .line 5
    :goto_0
    iget-object v1, p1, Lpg/g;->b:Lpg/g$b;

    if-eq v0, v1, :cond_2

    .line 6
    iget v1, v0, Lpg/g$b;->a:I

    invoke-direct {p0, v1}, Lpg/g;->H(I)I

    move-result v2

    iget-object v3, v0, Lpg/g$b;->b:Ljava/lang/Object;

    iget-object v4, v0, Lpg/g$b;->c:Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v3, v4}, Lpg/g;->m(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v0, v0, Lpg/g$b;->f:Lpg/g$b;

    goto :goto_0

    .line 8
    :cond_0
    :goto_1
    iget-object v1, p1, Lpg/g;->b:Lpg/g$b;

    if-eq v0, v1, :cond_2

    .line 9
    iget-object v1, v0, Lpg/g$b;->b:Ljava/lang/Object;

    iget-object v2, v0, Lpg/g$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lpg/g;->Z0(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    .line 10
    iget-object v0, v0, Lpg/g$b;->f:Lpg/g$b;

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p1}, Lpg/i;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lpg/g;->Z0(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    goto :goto_2

    :cond_2
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lpg/g;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lpg/g;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lpg/g;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0}, Lpg/g;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lpg/j;->d(Ljava/lang/Class;Ljava/util/Iterator;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lpg/g;->d:Lpg/o;

    const-string v1, "value"

    invoke-static {p2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Lpg/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lpg/g;->Z0(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    move-result-object p1

    return-object p1
.end method

.method public x()Lpg/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpg/g;->a:[Lpg/g$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lpg/g;->b:Lpg/g$b;

    iput-object v0, v0, Lpg/g$b;->f:Lpg/g$b;

    iput-object v0, v0, Lpg/g$b;->e:Lpg/g$b;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lpg/g;->g:I

    .line 4
    invoke-direct {p0}, Lpg/g;->Q()Lpg/i;

    move-result-object v0

    return-object v0
.end method

.method public final y(Ljava/lang/Object;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/util/l;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lio/grpc/netty/shaded/io/netty/util/l<",
            "-TV;>;)Z"
        }
    .end annotation

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/l;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lpg/g;->H(I)I

    move-result v1

    .line 4
    iget-object v2, p0, Lpg/g;->a:[Lpg/g$b;

    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    iget v2, v1, Lpg/g$b;->a:I

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    iget-object v3, v1, Lpg/g$b;->b:Ljava/lang/Object;

    invoke-interface {v2, p1, v3}, Lio/grpc/netty/shaded/io/netty/util/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lpg/g$b;->c:Ljava/lang/Object;

    invoke-interface {p3, p2, v2}, Lio/grpc/netty/shaded/io/netty/util/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    iget-object v1, v1, Lpg/g$b;->d:Lpg/g$b;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public z()Lpg/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpg/g<",
            "TK;TV;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lpg/g;

    iget-object v1, p0, Lpg/g;->f:Lio/grpc/netty/shaded/io/netty/util/l;

    iget-object v2, p0, Lpg/g;->d:Lpg/o;

    iget-object v3, p0, Lpg/g;->e:Lpg/g$d;

    iget-object v4, p0, Lpg/g;->a:[Lpg/g$b;

    array-length v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lpg/g;-><init>(Lio/grpc/netty/shaded/io/netty/util/l;Lpg/o;Lpg/g$d;I)V

    .line 2
    invoke-virtual {v0, p0}, Lpg/g;->n(Lpg/i;)V

    return-object v0
.end method
