.class final Lcom/google/protobuf/o0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/protobuf/o0$c<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/protobuf/r2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/r2<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/r2;->q(I)Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o0$b;-><init>(Lcom/google/protobuf/r2;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/o0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/o0$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/r2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/r2<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/protobuf/o0$b;->c:Z

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/o0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/o0;->a(Lcom/google/protobuf/r2;Z)Lcom/google/protobuf/r2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    .line 3
    iput-boolean v1, p0, Lcom/google/protobuf/o0$b;->c:Z

    :cond_0
    return-void
.end method

.method private i(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$c;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lcom/google/protobuf/w0;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/google/protobuf/w0;

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->g()Lcom/google/protobuf/o1;

    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/protobuf/o0$b;->e(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/o0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/r2;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_3
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->s0()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_6

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/protobuf/o0$b;->e(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    invoke-static {p1}, Lcom/google/protobuf/o0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/r2;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_4
    instance-of v2, v1, Lcom/google/protobuf/o1$a;

    if-eqz v2, :cond_5

    .line 15
    check-cast v1, Lcom/google/protobuf/o1$a;

    check-cast p1, Lcom/google/protobuf/o1;

    invoke-interface {v0, v1, p1}, Lcom/google/protobuf/o0$c;->n(Lcom/google/protobuf/o1$a;Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1$a;

    goto :goto_1

    .line 16
    :cond_5
    check-cast v1, Lcom/google/protobuf/o1;

    .line 17
    invoke-interface {v1}, Lcom/google/protobuf/o1;->toBuilder()Lcom/google/protobuf/o1$a;

    move-result-object v1

    check-cast p1, Lcom/google/protobuf/o1;

    invoke-interface {v0, v1, p1}, Lcom/google/protobuf/o0$c;->n(Lcom/google/protobuf/o1$a;Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1$a;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/google/protobuf/o1$a;->build()Lcom/google/protobuf/o1;

    move-result-object p1

    .line 19
    iget-object v1, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/r2;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    invoke-static {p1}, Lcom/google/protobuf/o0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/r2;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private static j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/google/protobuf/o1$a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/protobuf/o1$a;

    invoke-interface {p0}, Lcom/google/protobuf/o1$a;->build()Lcom/google/protobuf/o1;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static k(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->s0()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_6

    .line 2
    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 3
    instance-of p0, p1, Ljava/util/List;

    if-eqz p0, :cond_4

    .line 4
    move-object p0, p1

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/protobuf/o0$b;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_2

    if-ne p0, p1, :cond_1

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v1

    .line 9
    :cond_1
    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Repeated field should contains a List but actually contains type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_5
    invoke-static {p1}, Lcom/google/protobuf/o0$b;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    return-object p1
.end method

.method private static l(Lcom/google/protobuf/r2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>(",
            "Lcom/google/protobuf/r2<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/r2;->k()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/protobuf/r2;->j(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/o0$b;->m(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/r2;->m()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/o0$b;->m(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static m(Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$c;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/o0$b;->k(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private o(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/protobuf/o0;->d(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_0

    instance-of v0, p2, Lcom/google/protobuf/o1$a;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 5
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 7
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/o0$b;->c()V

    .line 2
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-boolean v0, p0, Lcom/google/protobuf/o0$b;->d:Z

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/google/protobuf/o1$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/protobuf/o0$b;->d:Z

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o0$b;->o(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/o0$b;->e(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1, p1, v0}, Lcom/google/protobuf/r2;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 8
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 9
    :goto_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/google/protobuf/o0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/o0;->p()Lcom/google/protobuf/o0;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/o0$b;->c:Z

    .line 4
    iget-object v1, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    .line 5
    iget-boolean v2, p0, Lcom/google/protobuf/o0$b;->d:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v1, v0}, Lcom/google/protobuf/o0;->a(Lcom/google/protobuf/r2;Z)Lcom/google/protobuf/r2;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/protobuf/o0$b;->l(Lcom/google/protobuf/r2;)V

    .line 8
    :cond_1
    new-instance v0, Lcom/google/protobuf/o0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/o0;-><init>(Lcom/google/protobuf/r2;Lcom/google/protobuf/o0$a;)V

    .line 9
    iget-boolean v1, p0, Lcom/google/protobuf/o0$b;->b:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/o0;->b(Lcom/google/protobuf/o0;Z)Z

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/o0$b;->b:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/protobuf/o0;->a(Lcom/google/protobuf/r2;Z)Lcom/google/protobuf/r2;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/r2;->p()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/o0$b;->l(Lcom/google/protobuf/r2;)V

    :goto_0
    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public e(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/o0$b;->f(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/protobuf/o0$b;->k(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method f(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/w0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/protobuf/w0;

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->g()Lcom/google/protobuf/o1;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public g(Lcom/google/protobuf/o0$c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Lcom/google/protobuf/o0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/o0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/o0$b;->c()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/google/protobuf/o0;->c(Lcom/google/protobuf/o0;)Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->k()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/o0;->c(Lcom/google/protobuf/o0;)Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/protobuf/r2;->j(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/o0$b;->i(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/o0;->c(Lcom/google/protobuf/o0;)Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/r2;->m()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/protobuf/o0$b;->i(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public n(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/o0$b;->c()V

    .line 2
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 3
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-direct {p0, p1, v3}, Lcom/google/protobuf/o0$b;->o(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    .line 7
    iget-boolean v4, p0, Lcom/google/protobuf/o0$b;->d:Z

    if-nez v4, :cond_1

    instance-of v3, v3, Lcom/google/protobuf/o1$a;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lcom/google/protobuf/o0$b;->d:Z

    goto :goto_0

    :cond_2
    move-object p2, v0

    goto :goto_3

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o0$b;->o(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    .line 10
    :goto_3
    instance-of v0, p2, Lcom/google/protobuf/w0;

    if-eqz v0, :cond_5

    .line 11
    iput-boolean v2, p0, Lcom/google/protobuf/o0$b;->b:Z

    .line 12
    :cond_5
    iget-boolean v0, p0, Lcom/google/protobuf/o0$b;->d:Z

    if-nez v0, :cond_6

    instance-of v0, p2, Lcom/google/protobuf/o1$a;

    if-eqz v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lcom/google/protobuf/o0$b;->d:Z

    .line 13
    iget-object v0, p0, Lcom/google/protobuf/o0$b;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/r2;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
