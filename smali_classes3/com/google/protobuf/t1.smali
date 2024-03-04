.class final Lcom/google/protobuf/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/n2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/n2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/o1;

.field private final b:Lcom/google/protobuf/g3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g3<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/protobuf/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/protobuf/g3;Lcom/google/protobuf/g0;Lcom/google/protobuf/o1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/g3<",
            "**>;",
            "Lcom/google/protobuf/g0<",
            "*>;",
            "Lcom/google/protobuf/o1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/t1;->b:Lcom/google/protobuf/g3;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/protobuf/g0;->e(Lcom/google/protobuf/o1;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/protobuf/t1;->c:Z

    .line 4
    iput-object p2, p0, Lcom/google/protobuf/t1;->d:Lcom/google/protobuf/g0;

    .line 5
    iput-object p3, p0, Lcom/google/protobuf/t1;->a:Lcom/google/protobuf/o1;

    return-void
.end method

.method private k(Lcom/google/protobuf/g3;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/g3<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/g3;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/protobuf/g3;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private l(Lcom/google/protobuf/g3;Lcom/google/protobuf/g0;Ljava/lang/Object;Lcom/google/protobuf/k2;Lcom/google/protobuf/f0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/o0$c<",
            "TET;>;>(",
            "Lcom/google/protobuf/g3<",
            "TUT;TUB;>;",
            "Lcom/google/protobuf/g0<",
            "TET;>;TT;",
            "Lcom/google/protobuf/k2;",
            "Lcom/google/protobuf/f0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3}, Lcom/google/protobuf/g3;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2
    invoke-virtual {p2, p3}, Lcom/google/protobuf/g0;->d(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object v8

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {p4}, Lcom/google/protobuf/k2;->F()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/g3;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v4, v8

    move-object v5, p1

    move-object v6, v7

    .line 5
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/t1;->n(Lcom/google/protobuf/k2;Lcom/google/protobuf/f0;Lcom/google/protobuf/g0;Lcom/google/protobuf/o0;Lcom/google/protobuf/g3;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/g3;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/g3;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    throw p2
.end method

.method static m(Lcom/google/protobuf/g3;Lcom/google/protobuf/g0;Lcom/google/protobuf/o1;)Lcom/google/protobuf/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/g3<",
            "**>;",
            "Lcom/google/protobuf/g0<",
            "*>;",
            "Lcom/google/protobuf/o1;",
            ")",
            "Lcom/google/protobuf/t1<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/t1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/t1;-><init>(Lcom/google/protobuf/g3;Lcom/google/protobuf/g0;Lcom/google/protobuf/o1;)V

    return-object v0
.end method

.method private n(Lcom/google/protobuf/k2;Lcom/google/protobuf/f0;Lcom/google/protobuf/g0;Lcom/google/protobuf/o0;Lcom/google/protobuf/g3;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/o0$c<",
            "TET;>;>(",
            "Lcom/google/protobuf/k2;",
            "Lcom/google/protobuf/f0;",
            "Lcom/google/protobuf/g0<",
            "TET;>;",
            "Lcom/google/protobuf/o0<",
            "TET;>;",
            "Lcom/google/protobuf/g3<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/k2;->getTag()I

    move-result v0

    .line 2
    sget v1, Lcom/google/protobuf/WireFormat;->a:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->b(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/t1;->a:Lcom/google/protobuf/o1;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->a(I)I

    move-result v0

    .line 6
    invoke-virtual {p3, p2, v1, v0}, Lcom/google/protobuf/g0;->b(Lcom/google/protobuf/f0;Lcom/google/protobuf/o1;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/google/protobuf/g0;->h(Lcom/google/protobuf/k2;Ljava/lang/Object;Lcom/google/protobuf/f0;Lcom/google/protobuf/o0;)V

    return v2

    .line 8
    :cond_0
    invoke-virtual {p5, p6, p1}, Lcom/google/protobuf/g3;->m(Ljava/lang/Object;Lcom/google/protobuf/k2;)Z

    move-result p1

    return p1

    .line 9
    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/k2;->K()Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    .line 10
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/google/protobuf/k2;->F()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-interface {p1}, Lcom/google/protobuf/k2;->getTag()I

    move-result v4

    .line 12
    sget v5, Lcom/google/protobuf/WireFormat;->c:I

    if-ne v4, v5, :cond_5

    .line 13
    invoke-interface {p1}, Lcom/google/protobuf/k2;->i()I

    move-result v0

    .line 14
    iget-object v1, p0, Lcom/google/protobuf/t1;->a:Lcom/google/protobuf/o1;

    .line 15
    invoke-virtual {p3, p2, v1, v0}, Lcom/google/protobuf/g0;->b(Lcom/google/protobuf/f0;Lcom/google/protobuf/o1;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 16
    :cond_5
    sget v5, Lcom/google/protobuf/WireFormat;->d:I

    if-ne v4, v5, :cond_7

    if-eqz v1, :cond_6

    .line 17
    invoke-virtual {p3, p1, v1, p2, p4}, Lcom/google/protobuf/g0;->h(Lcom/google/protobuf/k2;Ljava/lang/Object;Lcom/google/protobuf/f0;Lcom/google/protobuf/o0;)V

    goto :goto_0

    .line 18
    :cond_6
    invoke-interface {p1}, Lcom/google/protobuf/k2;->r()Lcom/google/protobuf/ByteString;

    move-result-object v3

    goto :goto_0

    .line 19
    :cond_7
    invoke-interface {p1}, Lcom/google/protobuf/k2;->K()Z

    move-result v4

    if-nez v4, :cond_3

    .line 20
    :goto_1
    invoke-interface {p1}, Lcom/google/protobuf/k2;->getTag()I

    move-result p1

    sget v4, Lcom/google/protobuf/WireFormat;->b:I

    if-ne p1, v4, :cond_a

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    .line 21
    invoke-virtual {p3, v3, v1, p2, p4}, Lcom/google/protobuf/g0;->i(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/f0;Lcom/google/protobuf/o0;)V

    goto :goto_2

    .line 22
    :cond_8
    invoke-virtual {p5, p6, v0, v3}, Lcom/google/protobuf/g3;->d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    :cond_9
    :goto_2
    return v2

    .line 23
    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private o(Lcom/google/protobuf/g3;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/g3<",
            "TUT;TUB;>;TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/g3;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/g3;->s(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1;->b:Lcom/google/protobuf/g3;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/p2;->H(Lcom/google/protobuf/g3;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/protobuf/t1;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/t1;->d:Lcom/google/protobuf/g0;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/p2;->F(Lcom/google/protobuf/g0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1;->b:Lcom/google/protobuf/g3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g3;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/google/protobuf/t1;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/t1;->d:Lcom/google/protobuf/g0;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/g0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/o0;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1;->b:Lcom/google/protobuf/g3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g3;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/t1;->b:Lcom/google/protobuf/g3;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/g3;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/t1;->c:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/t1;->d:Lcom/google/protobuf/g0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/t1;->d:Lcom/google/protobuf/g0;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/g0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/protobuf/o0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public d(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1;->d:Lcom/google/protobuf/g0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/o0;->E()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o0$c;

    .line 6
    invoke-interface {v2}, Lcom/google/protobuf/o0$c;->s0()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/o0$c;->isPacked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    instance-of v3, v1, Lcom/google/protobuf/w0$b;

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result v2

    check-cast v1, Lcom/google/protobuf/w0$b;

    invoke-virtual {v1}, Lcom/google/protobuf/w0$b;->a()Lcom/google/protobuf/w0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/x0;->f()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 9
    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->c(ILjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v2}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->c(ILjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/t1;->b:Lcom/google/protobuf/g3;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/t1;->o(Lcom/google/protobuf/g3;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1;->b:Lcom/google/protobuf/g3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g3;->j(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t1;->d:Lcom/google/protobuf/g0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g0;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1;->d:Lcom/google/protobuf/g0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/o0;->B()Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t1;->b:Lcom/google/protobuf/g3;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/t1;->k(Lcom/google/protobuf/g3;Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/google/protobuf/t1;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/t1;->d:Lcom/google/protobuf/g0;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/g0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/o0;->s()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t1;->a:Lcom/google/protobuf/o1;

    invoke-interface {v0}, Lcom/google/protobuf/o1;->newBuilderForType()Lcom/google/protobuf/o1$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/o1$a;->I()Lcom/google/protobuf/o1;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;Lcom/google/protobuf/k2;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/k2;",
            "Lcom/google/protobuf/f0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/protobuf/t1;->b:Lcom/google/protobuf/g3;

    iget-object v2, p0, Lcom/google/protobuf/t1;->d:Lcom/google/protobuf/g0;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/t1;->l(Lcom/google/protobuf/g3;Lcom/google/protobuf/g0;Ljava/lang/Object;Lcom/google/protobuf/k2;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method public j(Ljava/lang/Object;[BIILcom/google/protobuf/j$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/j$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->a:Lcom/google/protobuf/i3;

    .line 2
    invoke-static {}, Lcom/google/protobuf/i3;->c()Lcom/google/protobuf/i3;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/i3;->j()Lcom/google/protobuf/i3;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite;->a:Lcom/google/protobuf/i3;

    .line 5
    :cond_0
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$b;

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$b;->l()Lcom/google/protobuf/o0;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_b

    .line 7
    invoke-static {p2, p3, p5}, Lcom/google/protobuf/j;->I([BILcom/google/protobuf/j$b;)I

    move-result v4

    .line 8
    iget p3, p5, Lcom/google/protobuf/j$b;->a:I

    .line 9
    sget v3, Lcom/google/protobuf/WireFormat;->a:I

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    .line 10
    invoke-static {p3}, Lcom/google/protobuf/WireFormat;->b(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 11
    iget-object v2, p0, Lcom/google/protobuf/t1;->d:Lcom/google/protobuf/g0;

    iget-object v3, p5, Lcom/google/protobuf/j$b;->d:Lcom/google/protobuf/f0;

    iget-object v5, p0, Lcom/google/protobuf/t1;->a:Lcom/google/protobuf/o1;

    .line 12
    invoke-static {p3}, Lcom/google/protobuf/WireFormat;->a(I)I

    move-result v6

    .line 13
    invoke-virtual {v2, v3, v5, v6}, Lcom/google/protobuf/g0;->b(Lcom/google/protobuf/f0;Lcom/google/protobuf/o1;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/protobuf/GeneratedMessageLite$d;

    if-eqz v8, :cond_1

    .line 14
    invoke-static {}, Lcom/google/protobuf/g2;->a()Lcom/google/protobuf/g2;

    move-result-object p3

    .line 15
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$d;->c()Lcom/google/protobuf/o1;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 16
    invoke-virtual {p3, v2}, Lcom/google/protobuf/g2;->d(Ljava/lang/Class;)Lcom/google/protobuf/n2;

    move-result-object p3

    .line 17
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/protobuf/j;->p(Lcom/google/protobuf/n2;[BIILcom/google/protobuf/j$b;)I

    move-result p3

    .line 18
    iget-object v2, v8, Lcom/google/protobuf/GeneratedMessageLite$d;->b:Lcom/google/protobuf/GeneratedMessageLite$c;

    iget-object v3, p5, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/o0;->L(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    .line 19
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/j;->G(I[BIILcom/google/protobuf/i3;Lcom/google/protobuf/j$b;)I

    move-result p3

    :goto_1
    move-object v2, v8

    goto :goto_0

    .line 20
    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/protobuf/j;->N(I[BIILcom/google/protobuf/j$b;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_9

    .line 21
    invoke-static {p2, v4, p5}, Lcom/google/protobuf/j;->I([BILcom/google/protobuf/j$b;)I

    move-result v4

    .line 22
    iget v6, p5, Lcom/google/protobuf/j$b;->a:I

    .line 23
    invoke-static {v6}, Lcom/google/protobuf/WireFormat;->a(I)I

    move-result v7

    .line 24
    invoke-static {v6}, Lcom/google/protobuf/WireFormat;->b(I)I

    move-result v8

    if-eq v7, v5, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 25
    invoke-static {}, Lcom/google/protobuf/g2;->a()Lcom/google/protobuf/g2;

    move-result-object v6

    .line 26
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$d;->c()Lcom/google/protobuf/o1;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 27
    invoke-virtual {v6, v7}, Lcom/google/protobuf/g2;->d(Ljava/lang/Class;)Lcom/google/protobuf/n2;

    move-result-object v6

    .line 28
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/protobuf/j;->p(Lcom/google/protobuf/n2;[BIILcom/google/protobuf/j$b;)I

    move-result v4

    .line 29
    iget-object v6, v2, Lcom/google/protobuf/GeneratedMessageLite$d;->b:Lcom/google/protobuf/GeneratedMessageLite$c;

    iget-object v7, p5, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/google/protobuf/o0;->L(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v8, v5, :cond_7

    .line 30
    invoke-static {p2, v4, p5}, Lcom/google/protobuf/j;->b([BILcom/google/protobuf/j$b;)I

    move-result v4

    .line 31
    iget-object v3, p5, Lcom/google/protobuf/j$b;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/protobuf/ByteString;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    .line 32
    invoke-static {p2, v4, p5}, Lcom/google/protobuf/j;->I([BILcom/google/protobuf/j$b;)I

    move-result v4

    .line 33
    iget p3, p5, Lcom/google/protobuf/j$b;->a:I

    .line 34
    iget-object v2, p0, Lcom/google/protobuf/t1;->d:Lcom/google/protobuf/g0;

    iget-object v6, p5, Lcom/google/protobuf/j$b;->d:Lcom/google/protobuf/f0;

    iget-object v7, p0, Lcom/google/protobuf/t1;->a:Lcom/google/protobuf/o1;

    .line 35
    invoke-virtual {v2, v6, v7, p3}, Lcom/google/protobuf/g0;->b(Lcom/google/protobuf/f0;Lcom/google/protobuf/o1;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/GeneratedMessageLite$d;

    goto :goto_2

    .line 36
    :cond_7
    :goto_3
    sget v7, Lcom/google/protobuf/WireFormat;->b:I

    if-ne v6, v7, :cond_8

    goto :goto_4

    .line 37
    :cond_8
    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/protobuf/j;->N(I[BIILcom/google/protobuf/j$b;)I

    move-result v4

    goto :goto_2

    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    .line 38
    invoke-static {p3, v5}, Lcom/google/protobuf/WireFormat;->c(II)I

    move-result p3

    .line 39
    invoke-virtual {v1, p3, v3}, Lcom/google/protobuf/i3;->m(ILjava/lang/Object;)V

    :cond_a
    move p3, v4

    goto/16 :goto_0

    :cond_b
    if-ne p3, p4, :cond_c

    return-void

    .line 40
    :cond_c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method
