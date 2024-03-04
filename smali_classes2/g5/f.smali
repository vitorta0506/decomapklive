.class public abstract Lg5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lg5/f;->a:Ljava/util/WeakHashMap;

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lg5/f;->b:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private I(Ljava/util/ArrayList;Ljava/lang/Object;Lg5/a;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Lg5/a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lg5/b;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Lg5/b;

    invoke-virtual {p0}, Lg5/f;->p()Lg5/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg5/b;->h(Lg5/c;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lg5/f;->Y()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/google/api/client/util/h;->e(Ljava/lang/Class;)Lcom/google/api/client/util/h;

    move-result-object v2

    .line 6
    const-class v3, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    move-object v7, p2

    check-cast v7, Ljava/util/Map;

    const/4 v6, 0x0

    .line 9
    invoke-static {v1}, Lcom/google/api/client/util/g0;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    move-object v5, p0

    move-object v9, p1

    move-object v10, p3

    .line 10
    invoke-direct/range {v5 .. v10}, Lg5/f;->T(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lg5/a;)V

    return-void

    .line 11
    :cond_1
    :goto_0
    sget-object v1, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lg5/f;->v()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lg5/f;->w()Lcom/google/api/client/json/JsonToken;

    .line 14
    invoke-virtual {v2, v0}, Lcom/google/api/client/util/h;->b(Ljava/lang/String;)Lcom/google/api/client/util/m;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1}, Lcom/google/api/client/util/m;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/google/api/client/util/m;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "final array/object fields are not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/google/api/client/util/m;->b()Ljava/lang/reflect/Field;

    move-result-object v5

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 19
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v1}, Lcom/google/api/client/util/m;->d()Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v10, 0x1

    move-object v4, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    .line 21
    invoke-direct/range {v4 .. v10}, Lg5/f;->U(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lg5/a;Z)Ljava/lang/Object;

    move-result-object v4

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    invoke-virtual {v1, p2, v4}, Lcom/google/api/client/util/m;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    .line 24
    move-object v1, p2

    check-cast v1, Lcom/google/api/client/util/GenericData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    .line 25
    invoke-direct/range {v4 .. v10}, Lg5/f;->U(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lg5/a;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    goto :goto_2

    .line 26
    :cond_5
    invoke-virtual {p0}, Lg5/f;->V()Lg5/f;

    .line 27
    :goto_2
    invoke-virtual {p0}, Lg5/f;->w()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_6
    return-void
.end method

.method private P(Ljava/lang/reflect/Field;Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lg5/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lg5/a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg5/f;->Y()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 2
    :goto_0
    sget-object v1, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    move-object v7, p5

    .line 3
    invoke-direct/range {v2 .. v8}, Lg5/f;->U(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lg5/a;Z)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lg5/f;->w()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private T(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lg5/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lg5/a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg5/f;->Y()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 2
    :goto_0
    sget-object v1, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lg5/f;->v()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lg5/f;->w()Lcom/google/api/client/json/JsonToken;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    .line 5
    invoke-direct/range {v1 .. v7}, Lg5/f;->U(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lg5/a;Z)Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lg5/f;->w()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final U(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lg5/a;Z)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Lg5/a;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v8, p1

    move-object/from16 v0, p3

    .line 1
    const-class v1, Ljava/lang/Double;

    const-class v2, Ljava/lang/Float;

    move-object v3, p2

    invoke-static {v0, p2}, Lcom/google/api/client/util/j;->k(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 2
    instance-of v4, v3, Ljava/lang/Class;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 3
    :goto_0
    instance-of v6, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_1

    .line 4
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/google/api/client/util/g0;->g(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v4

    .line 5
    :cond_1
    const-class v6, Ljava/lang/Void;

    if-ne v4, v6, :cond_2

    .line 6
    invoke-virtual {p0}, Lg5/f;->V()Lg5/f;

    return-object v5

    .line 7
    :cond_2
    invoke-virtual {p0}, Lg5/f;->j()Lcom/google/api/client/json/JsonToken;

    move-result-object v6

    .line 8
    :try_start_0
    sget-object v7, Lg5/f$a;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v7, v7, v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v7, :pswitch_data_0

    move-object v11, p0

    .line 9
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_18

    :pswitch_0
    if-eqz v4, :cond_3

    .line 10
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v9, 0x1

    :cond_4
    const-string v1, "primitive number field but found a JSON null"

    .line 11
    invoke-static {v9, v1}, Lcom/google/api/client/util/z;->b(ZLjava/lang/Object;)V

    if-eqz v4, :cond_6

    .line 12
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x600

    if-eqz v1, :cond_6

    .line 13
    const-class v1, Ljava/util/Collection;

    invoke-static {v4, v1}, Lcom/google/api/client/util/g0;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    invoke-static {v3}, Lcom/google/api/client/util/j;->g(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/j;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 15
    :cond_5
    const-class v1, Ljava/util/Map;

    invoke-static {v4, v1}, Lcom/google/api/client/util/g0;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16
    invoke-static {v4}, Lcom/google/api/client/util/j;->h(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/j;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 17
    :cond_6
    invoke-static {v0, v3}, Lcom/google/api/client/util/g0;->f(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/j;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 18
    :pswitch_1
    invoke-virtual {p0}, Lg5/f;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 19
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_7

    if-eq v4, v2, :cond_7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v4, v2, :cond_7

    if-ne v4, v1, :cond_8

    :cond_7
    const-string v1, "nan"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "-infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    if-eqz v4, :cond_9

    .line 21
    const-class v0, Ljava/lang/Number;

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v8, :cond_a

    const-class v0, Lg5/h;

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v9, 0x1

    :cond_a
    const-string v0, "number field formatted as a JSON string must use the @JsonString annotation"

    .line 24
    invoke-static {v9, v0}, Lcom/google/api/client/util/z;->b(ZLjava/lang/Object;)V

    .line 25
    :cond_b
    invoke-virtual {p0}, Lg5/f;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/api/client/util/j;->j(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    if-eqz v8, :cond_c

    .line 26
    const-class v0, Lg5/h;

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    const/4 v9, 0x1

    :cond_d
    const-string v0, "number type formatted as a JSON number cannot use @JsonString annotation"

    .line 28
    invoke-static {v9, v0}, Lcom/google/api/client/util/z;->b(ZLjava/lang/Object;)V

    if-eqz v4, :cond_1c

    .line 29
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_7

    .line 30
    :cond_e
    const-class v0, Ljava/math/BigInteger;

    if-ne v4, v0, :cond_f

    .line 31
    invoke-virtual {p0}, Lg5/f;->a()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_f
    if-eq v4, v1, :cond_1b

    .line 32
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_10

    goto/16 :goto_6

    .line 33
    :cond_10
    const-class v0, Ljava/lang/Long;

    if-eq v4, v0, :cond_1a

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_11

    goto :goto_5

    :cond_11
    if-eq v4, v2, :cond_19

    .line 34
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_12

    goto :goto_4

    .line 35
    :cond_12
    const-class v0, Ljava/lang/Integer;

    if-eq v4, v0, :cond_18

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_13

    goto :goto_3

    .line 36
    :cond_13
    const-class v0, Ljava/lang/Short;

    if-eq v4, v0, :cond_17

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_14

    goto :goto_2

    .line 37
    :cond_14
    const-class v0, Ljava/lang/Byte;

    if-eq v4, v0, :cond_16

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_15

    goto :goto_1

    .line 38
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected numeric type but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_16
    :goto_1
    invoke-virtual {p0}, Lg5/f;->c()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 40
    :cond_17
    :goto_2
    invoke-virtual {p0}, Lg5/f;->t()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 41
    :cond_18
    :goto_3
    invoke-virtual {p0}, Lg5/f;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 42
    :cond_19
    :goto_4
    invoke-virtual {p0}, Lg5/f;->q()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 43
    :cond_1a
    :goto_5
    invoke-virtual {p0}, Lg5/f;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1b
    :goto_6
    invoke-virtual {p0}, Lg5/f;->o()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 45
    :cond_1c
    :goto_7
    invoke-virtual {p0}, Lg5/f;->k()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :pswitch_3
    if-eqz v3, :cond_1e

    .line 46
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v4, v0, :cond_1e

    if-eqz v4, :cond_1d

    const-class v0, Ljava/lang/Boolean;

    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_8

    :cond_1d
    const/4 v0, 0x0

    goto :goto_9

    :cond_1e
    :goto_8
    const/4 v0, 0x1

    :goto_9
    const-string v1, "expected type Boolean or boolean but got %s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v3, v2, v9

    .line 48
    invoke-static {v0, v1, v2}, Lcom/google/api/client/util/z;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_TRUE:Lcom/google/api/client/json/JsonToken;

    if-ne v6, v0, :cond_1f

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_1f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_a
    return-object v0

    .line 50
    :pswitch_4
    invoke-static {v3}, Lcom/google/api/client/util/g0;->j(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v3, :cond_21

    if-nez v7, :cond_21

    if-eqz v4, :cond_20

    .line 51
    const-class v1, Ljava/util/Collection;

    .line 52
    invoke-static {v4, v1}, Lcom/google/api/client/util/g0;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_b

    :cond_20
    const/4 v1, 0x0

    goto :goto_c

    :cond_21
    :goto_b
    const/4 v1, 0x1

    :goto_c
    const-string v2, "expected collection or array type but got %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v9

    .line 53
    invoke-static {v1, v2, v6}, Lcom/google/api/client/util/z;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-static {v3}, Lcom/google/api/client/util/j;->g(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v9

    if-eqz v7, :cond_22

    .line 55
    invoke-static {v3}, Lcom/google/api/client/util/g0;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    goto :goto_d

    :cond_22
    if-eqz v4, :cond_23

    .line 56
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 57
    invoke-static {v3}, Lcom/google/api/client/util/g0;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 58
    :cond_23
    :goto_d
    invoke-static {v0, v5}, Lcom/google/api/client/util/j;->k(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    .line 59
    invoke-direct/range {v1 .. v6}, Lg5/f;->P(Ljava/lang/reflect/Field;Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lg5/a;)V

    if-eqz v7, :cond_24

    .line 60
    invoke-static {v0, v10}, Lcom/google/api/client/util/g0;->f(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/api/client/util/g0;->o(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_24
    return-object v9

    .line 61
    :pswitch_5
    invoke-static {v3}, Lcom/google/api/client/util/g0;->j(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x1

    goto :goto_e

    :cond_25
    const/4 v1, 0x0

    :goto_e
    const-string v2, "expected object or map type but got %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v9

    .line 62
    invoke-static {v1, v2, v6}, Lcom/google/api/client/util/z;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p6, :cond_26

    .line 63
    invoke-static {v4}, Lg5/f;->d(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_f

    :cond_26
    move-object v1, v5

    :goto_f
    if-eqz v4, :cond_27

    .line 64
    const-class v2, Ljava/util/Map;

    invoke-static {v4, v2}, Lcom/google/api/client/util/g0;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    goto :goto_10

    :cond_27
    const/4 v2, 0x0

    :goto_10
    if-eqz v1, :cond_28

    .line 65
    new-instance v6, Lg5/b;

    invoke-direct {v6}, Lg5/b;-><init>()V

    :goto_11
    move-object v7, v6

    goto :goto_13

    :cond_28
    if-nez v2, :cond_2a

    if-nez v4, :cond_29

    goto :goto_12

    .line 66
    :cond_29
    invoke-static {v4}, Lcom/google/api/client/util/g0;->m(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_11

    .line 67
    :cond_2a
    :goto_12
    invoke-static {v4}, Lcom/google/api/client/util/j;->h(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v6

    goto :goto_11

    .line 68
    :goto_13
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v3, :cond_2b

    .line 69
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    if-eqz v2, :cond_2d

    .line 70
    const-class v2, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 71
    const-class v2, Ljava/util/Map;

    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 73
    invoke-static {v3}, Lcom/google/api/client/util/g0;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v4, v2

    goto :goto_14

    :cond_2c
    move-object v4, v5

    :goto_14
    if-eqz v4, :cond_2d

    .line 74
    move-object v3, v7

    check-cast v3, Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    .line 75
    invoke-direct/range {v1 .. v6}, Lg5/f;->T(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lg5/a;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v7

    :cond_2d
    move-object v11, p0

    move-object/from16 v2, p5

    .line 76
    :try_start_3
    invoke-direct {p0, v0, v7, v2}, Lg5/f;->I(Ljava/util/ArrayList;Ljava/lang/Object;Lg5/a;)V

    if-eqz v3, :cond_2e

    .line 77
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2e
    if-nez v1, :cond_2f

    return-object v7

    .line 78
    :cond_2f
    move-object v2, v7

    check-cast v2, Lg5/b;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_30

    const/4 v3, 0x1

    goto :goto_15

    :cond_30
    const/4 v3, 0x0

    :goto_15
    const-string v4, "No value specified for @JsonPolymorphicTypeMap field"

    .line 79
    invoke-static {v3, v4}, Lcom/google/api/client/util/z;->b(ZLjava/lang/Object;)V

    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    const-class v3, Lg5/g;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lg5/g;

    .line 82
    invoke-interface {v1}, Lg5/g;->typeDefinitions()[Lg5/g$a;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_32

    aget-object v6, v1, v4

    .line 83
    invoke-interface {v6}, Lg5/g$a;->key()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_31

    .line 84
    invoke-interface {v6}, Lg5/g$a;->ref()Ljava/lang/Class;

    move-result-object v1

    move-object v3, v1

    goto :goto_17

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_32
    move-object v3, v5

    :goto_17
    if-eqz v3, :cond_33

    const/4 v9, 0x1

    .line 85
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No TypeDef annotation found with key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/google/api/client/util/z;->b(ZLjava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lg5/f;->p()Lg5/c;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v7}, Lg5/c;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg5/c;->e(Ljava/lang/String;)Lg5/f;

    move-result-object v1

    .line 88
    invoke-direct {v1}, Lg5/f;->X()Lcom/google/api/client/json/JsonToken;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object/from16 v4, p3

    .line 89
    invoke-direct/range {v1 .. v7}, Lg5/f;->U(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lg5/a;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 90
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected JSON node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_19

    :catch_1
    move-exception v0

    move-object v11, p0

    .line 91
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {p0}, Lg5/f;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    const-string v3, "key "

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    if-eqz v8, :cond_36

    if-eqz v2, :cond_35

    const-string v2, ", "

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    const-string v2, "field "

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    :cond_36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private X()Lcom/google/api/client/json/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg5/f;->j()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lg5/f;->w()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "no JSON input found"

    .line 3
    invoke-static {v1, v2}, Lcom/google/api/client/util/z;->b(ZLjava/lang/Object;)V

    return-object v0
.end method

.method private Y()Lcom/google/api/client/json/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg5/f;->X()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 2
    sget-object v1, Lg5/f$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lg5/f;->w()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lg5/f;->w()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    invoke-static {v2, v0}, Lcom/google/api/client/util/z;->b(ZLjava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lg5/f;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    sget-object v2, Lg5/f;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    sget-object v0, Lg5/f;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    .line 5
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/google/api/client/util/h;->e(Ljava/lang/Class;)Lcom/google/api/client/util/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/util/h;->c()Ljava/util/Collection;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/util/m;

    .line 7
    invoke-virtual {v2}, Lcom/google/api/client/util/m;->b()Ljava/lang/reflect/Field;

    move-result-object v2

    .line 8
    const-class v3, Lg5/g;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lg5/g;

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v6, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p0, v7, v5

    .line 10
    invoke-static {v0, v6, v7}, Lcom/google/api/client/util/z;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/j;->e(Ljava/lang/reflect/Type;)Z

    move-result v0

    const-string v6, "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v5

    .line 12
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v4

    .line 13
    invoke-static {v0, v6, v7}, Lcom/google/api/client/util/z;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-interface {v3}, Lg5/g;->typeDefinitions()[Lg5/g$a;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/google/api/client/util/b0;->a()Ljava/util/HashSet;

    move-result-object v3

    .line 16
    array-length v6, v0

    if-lez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    const-string v7, "@JsonPolymorphicTypeMap must have at least one @TypeDef"

    invoke-static {v6, v7}, Lcom/google/api/client/util/z;->b(ZLjava/lang/Object;)V

    .line 17
    array-length v6, v0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    aget-object v8, v0, v7

    .line 18
    invoke-interface {v8}, Lg5/g$a;->key()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Class contains two @TypeDef annotations with identical key: %s"

    new-array v11, v4, [Ljava/lang/Object;

    .line 19
    invoke-interface {v8}, Lg5/g$a;->key()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v5

    .line 20
    invoke-static {v9, v10, v11}, Lcom/google/api/client/util/z;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    move-object v0, v2

    goto :goto_0

    .line 21
    :cond_6
    sget-object v1, Lg5/f;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    sget-object p0, Lg5/f;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p0

    sget-object v0, Lg5/f;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/Class;Lg5/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lg5/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lg5/f;->F(Ljava/lang/reflect/Type;ZLg5/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public C(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lg5/f;->F(Ljava/lang/reflect/Type;ZLg5/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public F(Ljava/lang/reflect/Type;ZLg5/a;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lg5/f;->X()Lcom/google/api/client/json/JsonToken;

    :cond_0
    const/4 v1, 0x0

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lg5/f;->U(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lg5/a;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lg5/f;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lg5/f;->close()V

    .line 5
    :cond_2
    throw p1
.end method

.method public final K(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg5/f;->L(Ljava/lang/Class;Lg5/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final L(Ljava/lang/Class;Lg5/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lg5/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lg5/f;->A(Ljava/lang/Class;Lg5/a;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lg5/f;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lg5/f;->close()V

    .line 3
    throw p1
.end method

.method public final M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lg5/f;->N(Ljava/lang/Class;Ljava/lang/Class;Lg5/a;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final N(Ljava/lang/Class;Ljava/lang/Class;Lg5/a;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lg5/a;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/api/client/util/j;->g(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lg5/f;->R(Ljava/util/Collection;Ljava/lang/Class;Lg5/a;)V

    return-object p1
.end method

.method public final R(Ljava/util/Collection;Ljava/lang/Class;Lg5/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "-TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lg5/a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lg5/f;->P(Ljava/lang/reflect/Field;Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lg5/a;)V

    return-void
.end method

.method public abstract V()Lg5/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final W(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg5/f;->Y()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 2
    :goto_0
    sget-object v1, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lg5/f;->v()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lg5/f;->w()Lcom/google/api/client/json/JsonToken;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lg5/f;->V()Lg5/f;

    .line 7
    invoke-virtual {p0}, Lg5/f;->w()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract a()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j()Lcom/google/api/client/json/JsonToken;
.end method

.method public abstract k()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract o()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract p()Lg5/c;
.end method

.method public abstract q()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract r()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract s()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract t()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract v()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract w()Lcom/google/api/client/json/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final y(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg5/f;->A(Ljava/lang/Class;Lg5/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
