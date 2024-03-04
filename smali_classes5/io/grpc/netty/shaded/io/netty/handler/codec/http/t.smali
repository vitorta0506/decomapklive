.class public abstract Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;->b0()Lio/grpc/netty/shaded/io/netty/handler/codec/http/k;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static y(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x2c

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    .line 1
    invoke-static {p0, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->u(Ljava/lang/CharSequence;CI)I

    move-result p2

    if-ne p2, v1, :cond_0

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->l(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v3

    :cond_0
    const/4 v4, 0x0

    .line 3
    :cond_1
    invoke-interface {p0, v4, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lio/grpc/netty/shaded/io/netty/util/c;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->l(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v4, p2, 0x1

    .line 4
    invoke-static {p0, v2, v4}, Lio/grpc/netty/shaded/io/netty/util/c;->u(Ljava/lang/CharSequence;CI)I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v4, p2, :cond_7

    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p0, v4, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->l(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v3

    .line 7
    :cond_3
    invoke-static {p0, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->u(Ljava/lang/CharSequence;CI)I

    move-result p2

    if-ne p2, v1, :cond_4

    .line 8
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->j(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v3

    :cond_4
    const/4 v4, 0x0

    .line 9
    :cond_5
    invoke-interface {p0, v4, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lio/grpc/netty/shaded/io/netty/util/c;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->j(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v3

    :cond_6
    add-int/lit8 v4, p2, 0x1

    .line 10
    invoke-static {p0, v2, v4}, Lio/grpc/netty/shaded/io/netty/util/c;->u(Ljava/lang/CharSequence;CI)I

    move-result p2

    if-ne p2, v1, :cond_5

    .line 11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v4, p2, :cond_7

    .line 12
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p0, v4, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->j(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v3

    :cond_7
    return v0
.end method


# virtual methods
.method public B()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;-><init>()V

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e;->M(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    return-object v0
.end method

.method public F(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract G(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public H(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->I(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract I(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract J()Ljava/util/Iterator;
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
.end method

.method public K(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->L(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    return-object p1
.end method

.method public abstract L(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
.end method

.method public M(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 2

    const-string v0, "headers"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->g()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->f(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public N(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->P(Ljava/lang/String;Ljava/lang/Iterable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    return-object p1
.end method

.method public O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->Q(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    return-object p1
.end method

.method public abstract P(Ljava/lang/String;Ljava/lang/Iterable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;"
        }
    .end annotation
.end method

.method public abstract Q(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
.end method

.method public R(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->S(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public S(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->H(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 2

    const-string v0, "headers"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->f(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->f(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    return-object p1
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
.end method

.method public abstract g()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public m(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->u(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public abstract size()I
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->J()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lpg/j;->d(Ljava/lang/Class;Ljava/util/Iterator;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract u(Ljava/lang/String;)Z
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->S(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return v0

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->R(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->y(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
