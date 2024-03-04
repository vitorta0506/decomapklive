.class public Ln7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    aget-object v1, p0, v0

    .line 4
    array-length p0, p0

    const/4 v2, 0x1

    if-le p0, v2, :cond_1

    .line 5
    instance-of p0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p0, :cond_0

    .line 6
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object v1, p0, v0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u6ca1\u6709\u586b\u5199\u6cdb\u578b\u53c2\u6570"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ln7/d;->g(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0

    .line 4
    :cond_1
    :goto_0
    const-class p0, Lokhttp3/RequestBody;

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ln7/d;->f(Ljava/lang/reflect/ParameterizedType;I)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/reflect/Type;I)Ljava/lang/Class;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Ln7/d;->e(Ljava/lang/reflect/ParameterizedType;I)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of p1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz p1, :cond_1

    .line 4
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-static {p0, p1}, Ln7/d;->d(Ljava/lang/reflect/Type;I)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static e(Ljava/lang/reflect/ParameterizedType;I)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, p1

    .line 2
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_0

    .line 3
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 4
    :cond_0
    instance-of p1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz p1, :cond_1

    .line 5
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 6
    :cond_1
    instance-of p1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz p1, :cond_2

    .line 7
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-static {p0, p1}, Ln7/d;->d(Ljava/lang/reflect/Type;I)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static f(Ljava/lang/reflect/ParameterizedType;I)Ljava/lang/reflect/Type;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, p1

    .line 2
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_0

    .line 3
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    instance-of p1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz p1, :cond_1

    .line 5
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    instance-of p1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz p1, :cond_2

    .line 7
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-static {p0, p1}, Ln7/d;->d(Ljava/lang/reflect/Type;I)Ljava/lang/Class;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static g(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_0

    .line 8
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 9
    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method
