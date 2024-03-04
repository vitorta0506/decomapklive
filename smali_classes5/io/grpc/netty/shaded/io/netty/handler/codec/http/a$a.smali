.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;
.super Lpg/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg/g<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/util/l;Lpg/o;Lpg/g$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/l<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lpg/o<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lpg/g$d<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lpg/g;-><init>(Lio/grpc/netty/shaded/io/netty/util/l;Lpg/o;Lpg/g$d;)V

    return-void
.end method

.method static synthetic a0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;)Lpg/o;
    .locals 0

    invoke-virtual {p0}, Lpg/g;->R()Lpg/o;

    move-result-object p0

    return-object p0
.end method

.method private e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lpg/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->k0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->p0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lpg/g;->M(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lpg/g;->Z0(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    :goto_1
    return-object p0
.end method

.method private static k0(Ljava/lang/CharSequence;)Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->n0:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private m0()Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$b;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;

    return-object v0
.end method

.method private static n0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 2
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    return-object v0
.end method

.method private static varargs o0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c<",
            "TT;>;[TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    array-length v1, p1

    if-lez v1, :cond_1

    .line 3
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    aget-object v3, p1, v2

    invoke-interface {p0, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    aget-object p1, p1, v1

    invoke-interface {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    return-object v0
.end method

.method private static p0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2c

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private s0()Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$a;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic N(Lpg/i;)Lpg/i;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->u0(Lpg/i;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic O(Ljava/lang/Object;Ljava/lang/Iterable;)Lpg/i;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->v0(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->w0(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic S(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->y0(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Z0(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    move-result-object p1

    return-object p1
.end method

.method public b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;
    .locals 1

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->m0()Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    move-result-object p1

    return-object p1
.end method

.method public c0(Lpg/i;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/i<",
            "+",
            "Ljava/lang/CharSequence;",
            "+",
            "Ljava/lang/CharSequence;",
            "*>;)",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;"
        }
    .end annotation

    if-eq p1, p0, :cond_3

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lpg/g;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lpg/g;->n(Lpg/i;)V

    goto :goto_2

    .line 4
    :cond_0
    invoke-interface {p1}, Lpg/i;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lpg/i;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    goto :goto_1

    :cond_2
    :goto_2
    return-object p0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "can\'t add to itself."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic d0(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->q0(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public f0(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;
    .locals 3

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->s0()Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->o0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->e0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Lpg/i;)Lpg/i;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->c0(Lpg/i;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    move-result-object p1

    return-object p1
.end method

.method public q0(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
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
    invoke-super {p0, p1}, Lpg/g;->d0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->k0(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->o(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CombinedHttpHeaders should only have one value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->f0(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    move-result-object p1

    return-object p1
.end method

.method public u0(Lpg/i;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/i<",
            "+",
            "Ljava/lang/CharSequence;",
            "+",
            "Ljava/lang/CharSequence;",
            "*>;)",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lpg/g;->x()Lpg/i;

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->c0(Lpg/i;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;

    move-result-object p1

    return-object p1
.end method

.method public v0(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->s0()Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;

    move-result-object v0

    invoke-static {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->n0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lpg/g;->M(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    return-object p0
.end method

.method public w0(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;
    .locals 3

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->s0()Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->o0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a$c;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lpg/g;->M(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    return-object p0
.end method

.method public y0(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lpg/g;->S(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a$a;->k0(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->o(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CombinedHttpHeaders should only have one value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method
