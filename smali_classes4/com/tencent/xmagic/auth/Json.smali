.class public Lcom/tencent/xmagic/auth/Json;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeJson(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/util/Map;

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/xmagic/auth/Json;->makeJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object v0

    .line 9
    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 10
    check-cast p0, [Ljava/lang/Object;

    .line 11
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 12
    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 13
    aget-object v3, p0, v1

    .line 14
    invoke-static {v3}, Lcom/tencent/xmagic/auth/Json;->makeJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    .line 15
    :cond_3
    instance-of v0, p0, Ljava/lang/Iterable;

    if-nez v0, :cond_8

    if-nez p0, :cond_4

    const-string p0, "null"

    return-object p0

    .line 16
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 19
    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_6

    .line 20
    aget-object v4, v0, v1

    .line 21
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 22
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 23
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 24
    invoke-static {v4}, Lcom/tencent/xmagic/auth/Json;->makeJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v4

    .line 25
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-object v2

    :cond_7
    return-object p0

    .line 26
    :cond_8
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 27
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 28
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/tencent/xmagic/auth/Json;->makeJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    :cond_9
    return-object v0
.end method

.method public static toJson(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p0}, Lcom/tencent/xmagic/auth/Json;->makeJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    return-object p0
.end method

.method public static toJsonStr(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/xmagic/auth/Json;->toJson(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string/jumbo p0, "{}"

    :goto_0
    return-object p0
.end method
