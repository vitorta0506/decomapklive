.class public final Lcom/google/protobuf/h3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/o1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/h3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/protobuf/h3$c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/h3$b;->a:Ljava/util/TreeMap;

    return-void
.end method

.method static synthetic a()Lcom/google/protobuf/h3$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3$b;->g()Lcom/google/protobuf/h3$b;

    move-result-object v0

    return-object v0
.end method

.method private static g()Lcom/google/protobuf/h3$b;
    .locals 1

    new-instance v0, Lcom/google/protobuf/h3$b;

    invoke-direct {v0}, Lcom/google/protobuf/h3$b;-><init>()V

    return-object v0
.end method

.method private h(I)Lcom/google/protobuf/h3$c$a;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/h3$b;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3$c$a;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/google/protobuf/h3$c;->t()Lcom/google/protobuf/h3$c$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/h3$b;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic E0([B)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/h3$b;->q([B)Lcom/google/protobuf/h3$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic I()Lcom/google/protobuf/o1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/h3$b;->e()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method public b(ILcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$b;
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h3$b;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Lcom/google/protobuf/h3$c;->u(Lcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$c$a;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field number."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic build()Lcom/google/protobuf/o1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c0(Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/h3$b;->o(Lcom/google/protobuf/o1;)Lcom/google/protobuf/h3$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/h3$b;->f()Lcom/google/protobuf/h3$b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/protobuf/h3;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h3$b;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/h3;->d()Lcom/google/protobuf/h3;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/h3$b;->a:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3$c$a;

    invoke-virtual {v2}, Lcom/google/protobuf/h3$c$a;->g()Lcom/google/protobuf/h3$c;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lcom/google/protobuf/h3;

    invoke-direct {v1, v0}, Lcom/google/protobuf/h3;-><init>(Ljava/util/TreeMap;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public e()Lcom/google/protobuf/h3;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/protobuf/h3$b;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/h3$b;->a:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3$c$a;

    .line 5
    iget-object v4, v0, Lcom/google/protobuf/h3$b;->a:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lcom/google/protobuf/h3$c$a;->h()Lcom/google/protobuf/h3$c$a;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic f0(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/h3$b;->n(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/h3$b;

    move-result-object p1

    return-object p1
.end method

.method public i(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/h3$b;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j(ILcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$b;
    .locals 1

    if-lez p1, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/h3$b;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/h3$b;->h(I)Lcom/google/protobuf/h3$c$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/h3$c$a;->j(Lcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$c$a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/h3$b;->b(ILcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$b;

    :goto_0
    return-object p0

    .line 4
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field number."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public k(ILcom/google/protobuf/p;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->a(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/WireFormat;->b(I)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/protobuf/h3$b;->h(I)Lcom/google/protobuf/h3$c$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/p;->v()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/h3$c$a;->b(I)Lcom/google/protobuf/h3$c$a;

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/protobuf/d0;->i()Lcom/google/protobuf/d0;

    move-result-object v2

    invoke-virtual {p2, v0, p1, v2}, Lcom/google/protobuf/p;->y(ILcom/google/protobuf/o1$a;Lcom/google/protobuf/f0;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/google/protobuf/h3$b;->h(I)Lcom/google/protobuf/h3$c$a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/h3$c$a;->d(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$c$a;

    return v1

    .line 8
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/protobuf/h3$b;->h(I)Lcom/google/protobuf/h3$c$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/h3$c$a;->e(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/h3$c$a;

    return v1

    .line 9
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/protobuf/h3$b;->h(I)Lcom/google/protobuf/h3$c$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/p;->w()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/h3$c$a;->c(J)Lcom/google/protobuf/h3$c$a;

    return v1

    .line 10
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/protobuf/h3$b;->h(I)Lcom/google/protobuf/h3$c$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/h3$c$a;->f(J)Lcom/google/protobuf/h3$c$a;

    return v1
.end method

.method public l(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/h3$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newCodedInput()Lcom/google/protobuf/p;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/h3$b;->m(Lcom/google/protobuf/p;)Lcom/google/protobuf/h3$b;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/p;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 5
    throw p1
.end method

.method public m(Lcom/google/protobuf/p;)Lcom/google/protobuf/h3$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/h3$b;->k(ILcom/google/protobuf/p;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method

.method public n(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/h3$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/h3$b;->m(Lcom/google/protobuf/p;)Lcom/google/protobuf/h3$b;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/google/protobuf/o1;)Lcom/google/protobuf/h3$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/h3;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/h3;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/h3$b;->p(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Lcom/google/protobuf/h3;)Lcom/google/protobuf/h3$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/protobuf/h3;->d()Lcom/google/protobuf/h3;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/h3;->a(Lcom/google/protobuf/h3;)Ljava/util/TreeMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3$c;

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/h3$b;->j(ILcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$b;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public q([B)Lcom/google/protobuf/h3$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/p;->m([B)Lcom/google/protobuf/p;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/h3$b;->m(Lcom/google/protobuf/p;)Lcom/google/protobuf/h3$b;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/p;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 5
    throw p1
.end method

.method public r(II)Lcom/google/protobuf/h3$b;
    .locals 2

    if-lez p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/h3$b;->h(I)Lcom/google/protobuf/h3$c$a;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/h3$c$a;->f(J)Lcom/google/protobuf/h3$c$a;

    return-object p0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field number."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
