.class final Lcom/google/protobuf/p2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/protobuf/g3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g3<",
            "**>;"
        }
    .end annotation
.end field

.field private static final c:Lcom/google/protobuf/g3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g3<",
            "**>;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/protobuf/g3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g3<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/p2;->B()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/p2;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/p2;->D(Z)Lcom/google/protobuf/g3;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/p2;->b:Lcom/google/protobuf/g3;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/p2;->D(Z)Lcom/google/protobuf/g3;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/p2;->c:Lcom/google/protobuf/g3;

    .line 4
    new-instance v0, Lcom/google/protobuf/j3;

    invoke-direct {v0}, Lcom/google/protobuf/j3;-><init>()V

    sput-object v0, Lcom/google/protobuf/p2;->d:Lcom/google/protobuf/g3;

    return-void
.end method

.method static A(ILjava/util/List;Lcom/google/protobuf/u0$e;Ljava/lang/Object;Lcom/google/protobuf/g3;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/u0$e;",
            "TUB;",
            "Lcom/google/protobuf/g3<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4
    invoke-interface {p2, v3}, Lcom/google/protobuf/u0$e;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v1, v2, :cond_1

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p0, v3, p3, p4}, Lcom/google/protobuf/p2;->M(IILjava/lang/Object;Lcom/google/protobuf/g3;)Ljava/lang/Object;

    move-result-object p3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, v0, :cond_6

    .line 7
    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_3

    .line 8
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    invoke-interface {p2, v0}, Lcom/google/protobuf/u0$e;->a(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 11
    invoke-static {p0, v0, p3, p4}, Lcom/google/protobuf/p2;->M(IILjava/lang/Object;Lcom/google/protobuf/g3;)Ljava/lang/Object;

    move-result-object p3

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    :goto_3
    return-object p3
.end method

.method private static B()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessageV3"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static C(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/protobuf/p2;->N(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DefaultEntryHolder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4
    array-length v2, v0

    if-ne v2, v1, :cond_0

    const/4 p0, 0x0

    .line 5
    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/google/protobuf/m3;->H(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to look up map field default entry holder class for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static D(Z)Lcom/google/protobuf/g3;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/protobuf/g3<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/p2;->E()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method private static E()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-class v0, Lcom/google/protobuf/k3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static F(Lcom/google/protobuf/g0;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/google/protobuf/o0$c<",
            "TFT;>;>(",
            "Lcom/google/protobuf/g0<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/protobuf/g0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/google/protobuf/o0;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g0;->d(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/protobuf/o0;->G(Lcom/google/protobuf/o0;)V

    :cond_0
    return-void
.end method

.method static G(Lcom/google/protobuf/h1;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/h1;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p3, p4}, Lcom/google/protobuf/m3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/protobuf/m3;->G(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 2
    invoke-interface {p0, v0, p2}, Lcom/google/protobuf/h1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {p1, p3, p4, p0}, Lcom/google/protobuf/m3;->X(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static H(Lcom/google/protobuf/g3;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/g3<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g3;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/g3;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/g3;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g3;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static I()Lcom/google/protobuf/g3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g3<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/p2;->b:Lcom/google/protobuf/g3;

    return-object v0
.end method

.method public static J()Lcom/google/protobuf/g3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g3<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/p2;->c:Lcom/google/protobuf/g3;

    return-object v0
.end method

.method public static K(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/p2;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessageV3 or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static L(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static M(IILjava/lang/Object;Lcom/google/protobuf/g3;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(IITUB;",
            "Lcom/google/protobuf/g3<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Lcom/google/protobuf/g3;->n()Ljava/lang/Object;

    move-result-object p2

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p3, p2, p0, v0, v1}, Lcom/google/protobuf/g3;->e(Ljava/lang/Object;IJ)V

    return-object p2
.end method

.method static N(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    const/4 v5, 0x1

    if-gt v4, v3, :cond_1

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 v3, v3, -0x20

    int-to-char p1, v3

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    const/16 v4, 0x41

    if-gt v4, v3, :cond_3

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_3

    if-nez v2, :cond_2

    if-nez p1, :cond_2

    add-int/lit8 v3, v3, 0x20

    int-to-char p1, v3

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 p1, 0x30

    if-gt p1, v3, :cond_4

    const/16 p1, 0x39

    if-gt v3, p1, :cond_4

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const/4 p1, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O()Lcom/google/protobuf/g3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g3<",
            "**>;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/p2;->d:Lcom/google/protobuf/g3;

    return-object v0
.end method

.method public static P(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->I(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static Q(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->S(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static R(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->Q(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static S(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->r(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static T(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->n(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static U(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->G(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static V(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->b(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static W(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->e(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static X(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/n2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            "Lcom/google/protobuf/n2;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->s(ILjava/util/List;Lcom/google/protobuf/n2;)V

    :cond_0
    return-void
.end method

.method public static Y(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->i(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static Z(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->P(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static a(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_1
    const/4 p2, 0x1

    .line 4
    invoke-static {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method public static a0(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->A(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method static b(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static b0(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/n2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/Writer;",
            "Lcom/google/protobuf/n2;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->a(ILjava/util/List;Lcom/google/protobuf/n2;)V

    :cond_0
    return-void
.end method

.method static c(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    mul-int v0, v0, p0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_1

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/ByteString;

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->i(Lcom/google/protobuf/ByteString;)I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static c0(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->H(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static d(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/p2;->e(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method public static d0(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->v(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static e(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/t0;

    if-eqz v2, :cond_1

    .line 3
    check-cast p0, Lcom/google/protobuf/t0;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/protobuf/t0;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->m(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->m(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public static e0(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->N(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static f(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    mul-int/lit8 p1, p1, 0x4

    .line 2
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 4
    :cond_1
    invoke-static {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->n(II)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method public static f0(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->p(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static g(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static g0(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->f(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method static h(ILjava/util/List;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    mul-int/lit8 p1, p1, 0x8

    .line 2
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_1
    const-wide/16 v0, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->p(IJ)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method public static h0(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->o(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static i(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static i0(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->w(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static j(ILjava/util/List;Lcom/google/protobuf/n2;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/protobuf/o1;",
            ">;",
            "Lcom/google/protobuf/n2;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {p0, v3, p2}, Lcom/google/protobuf/CodedOutputStream;->u(ILcom/google/protobuf/o1;Lcom/google/protobuf/n2;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method static k(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/p2;->l(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static l(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/t0;

    if-eqz v2, :cond_1

    .line 3
    check-cast p0, Lcom/google/protobuf/t0;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/protobuf/t0;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->y(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->y(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method static m(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/p2;->n(Ljava/util/List;)I

    move-result v0

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    mul-int p1, p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method static n(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/c1;

    if-eqz v2, :cond_1

    .line 3
    check-cast p0, Lcom/google/protobuf/c1;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/protobuf/c1;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->A(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->A(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method static o(ILjava/lang/Object;Lcom/google/protobuf/n2;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/x0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/x0;

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->C(ILcom/google/protobuf/x0;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    check-cast p1, Lcom/google/protobuf/o1;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->H(ILcom/google/protobuf/o1;Lcom/google/protobuf/n2;)I

    move-result p0

    return p0
.end method

.method static p(ILjava/util/List;Lcom/google/protobuf/n2;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/n2;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    mul-int p0, p0, v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/google/protobuf/x0;

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Lcom/google/protobuf/x0;

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->D(Lcom/google/protobuf/x0;)I

    move-result v2

    goto :goto_1

    .line 6
    :cond_1
    check-cast v2, Lcom/google/protobuf/o1;

    invoke-static {v2, p2}, Lcom/google/protobuf/CodedOutputStream;->J(Lcom/google/protobuf/o1;Lcom/google/protobuf/n2;)I

    move-result v2

    :goto_1
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method static q(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/p2;->r(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static r(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/t0;

    if-eqz v2, :cond_1

    .line 3
    check-cast p0, Lcom/google/protobuf/t0;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/protobuf/t0;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->S(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->S(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method static s(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/p2;->t(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static t(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/c1;

    if-eqz v2, :cond_1

    .line 3
    check-cast p0, Lcom/google/protobuf/c1;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/protobuf/c1;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->U(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->U(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method static u(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    mul-int p0, p0, v0

    .line 3
    instance-of v2, p1, Lcom/google/protobuf/z0;

    if-eqz v2, :cond_2

    .line 4
    check-cast p1, Lcom/google/protobuf/z0;

    :goto_0
    if-ge v1, v0, :cond_4

    .line 5
    invoke-interface {p1, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    instance-of v3, v2, Lcom/google/protobuf/ByteString;

    if-eqz v3, :cond_1

    .line 7
    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->i(Lcom/google/protobuf/ByteString;)I

    move-result v2

    goto :goto_1

    .line 8
    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->W(Ljava/lang/String;)I

    move-result v2

    :goto_1
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v1, v0, :cond_4

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 10
    instance-of v3, v2, Lcom/google/protobuf/ByteString;

    if-eqz v3, :cond_3

    .line 11
    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->i(Lcom/google/protobuf/ByteString;)I

    move-result v2

    goto :goto_3

    .line 12
    :cond_3
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->W(Ljava/lang/String;)I

    move-result v2

    :goto_3
    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return p0
.end method

.method static v(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/p2;->w(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static w(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/t0;

    if-eqz v2, :cond_1

    .line 3
    check-cast p0, Lcom/google/protobuf/t0;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/protobuf/t0;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method static x(ILjava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/p2;->y(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->E(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    mul-int v0, v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static y(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v2, p0, Lcom/google/protobuf/c1;

    if-eqz v2, :cond_1

    .line 3
    check-cast p0, Lcom/google/protobuf/c1;

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/protobuf/c1;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->b0(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->b0(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method static z(ILjava/util/List;Lcom/google/protobuf/u0$d;Ljava/lang/Object;Lcom/google/protobuf/g3;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/u0$d<",
            "*>;TUB;",
            "Lcom/google/protobuf/g3<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4
    invoke-interface {p2, v3}, Lcom/google/protobuf/u0$d;->a(I)Lcom/google/protobuf/u0$c;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eq v1, v2, :cond_1

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p0, v3, p3, p4}, Lcom/google/protobuf/p2;->M(IILjava/lang/Object;Lcom/google/protobuf/g3;)Ljava/lang/Object;

    move-result-object p3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, v0, :cond_6

    .line 7
    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_3

    .line 8
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    invoke-interface {p2, v0}, Lcom/google/protobuf/u0$d;->a(I)Lcom/google/protobuf/u0$c;

    move-result-object v1

    if-nez v1, :cond_5

    .line 11
    invoke-static {p0, v0, p3, p4}, Lcom/google/protobuf/p2;->M(IILjava/lang/Object;Lcom/google/protobuf/g3;)Ljava/lang/Object;

    move-result-object p3

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    :goto_3
    return-object p3
.end method
