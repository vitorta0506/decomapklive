.class public final Lorg/light/utils/GsonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "org.light.utils.GsonUtils"

.field private static gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lorg/light/utils/GsonUtils;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static confirmValueIsArray(Lcom/google/gson/JsonObject;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 3
    :cond_2
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 6
    invoke-virtual {p0, p1, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static getDoubleUnsafe(Lcom/google/gson/JsonArray;I)D
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public static getFloatSafe(Lcom/google/gson/JsonArray;I)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p0

    return p0
.end method

.method public static getFloatUnsafe(Lcom/google/gson/JsonArray;I)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p0

    return p0
.end method

.method public static getIntUnsafe(Lcom/google/gson/JsonArray;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    return p0
.end method

.method public static getIntUnsafe(Lcom/google/gson/JsonObject;Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    return p0
.end method

.method public static getJsonObjectUnsafe(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static getStringUnsafe(Lcom/google/gson/JsonArray;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringUnsafe(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static json2JsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static json2Obj(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static json2Obj(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static json2Obj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/light/utils/GsonUtils;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, p0, p1}, Lorg/light/utils/GsonUtils;->json2Obj(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static json2Obj(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 2
    :try_start_0
    sget-object v0, Lorg/light/utils/GsonUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static json2ObjList(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 4
    :try_start_1
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public static json2ObjList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lorg/light/utils/GsonUtils;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, p0, p1}, Lorg/light/utils/GsonUtils;->json2ObjList(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static obj2Json(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static obj2Json(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "TT;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static obj2Json(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/light/utils/GsonUtils;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, p0}, Lorg/light/utils/GsonUtils;->obj2Json(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static obj2Json(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/light/utils/GsonUtils;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, p0, p1}, Lorg/light/utils/GsonUtils;->obj2Json(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static objList2Json(Lcom/google/gson/Gson;Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static objList2Json(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/light/utils/GsonUtils;->gson:Lcom/google/gson/Gson;

    invoke-static {v0, p0}, Lorg/light/utils/GsonUtils;->objList2Json(Lcom/google/gson/Gson;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static optBoolean(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/light/utils/GsonUtils;->optBoolean(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static optBoolean(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Z
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 3
    instance-of p1, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p2
.end method

.method public static optDouble(Lcom/google/gson/JsonArray;I)D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 5
    invoke-static {p0, p1, v0, v1}, Lorg/light/utils/GsonUtils;->optDouble(Lcom/google/gson/JsonArray;ID)D

    move-result-wide p0

    return-wide p0
.end method

.method public static optDouble(Lcom/google/gson/JsonArray;ID)D
    .locals 1

    if-ltz p1, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 8
    instance-of p1, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_0
    return-wide p2
.end method

.method public static optDouble(Lcom/google/gson/JsonObject;Ljava/lang/String;)D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1
    invoke-static {p0, p1, v0, v1}, Lorg/light/utils/GsonUtils;->optDouble(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static optDouble(Lcom/google/gson/JsonObject;Ljava/lang/String;D)D
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 3
    instance-of p1, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_0
    return-wide p2
.end method

.method public static optFloat(Lcom/google/gson/JsonObject;Ljava/lang/String;)F
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1
    invoke-static {p0, p1, v0}, Lorg/light/utils/GsonUtils;->optFloat(Lcom/google/gson/JsonObject;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static optFloat(Lcom/google/gson/JsonObject;Ljava/lang/String;F)F
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 3
    instance-of p1, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p2
.end method

.method public static optInt(Lcom/google/gson/JsonArray;I)I
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0}, Lorg/light/utils/GsonUtils;->optInt(Lcom/google/gson/JsonArray;II)I

    move-result p0

    return p0
.end method

.method public static optInt(Lcom/google/gson/JsonArray;II)I
    .locals 1

    if-ltz p1, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 8
    instance-of p1, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p2
.end method

.method public static optInt(Lcom/google/gson/JsonObject;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/light/utils/GsonUtils;->optInt(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static optInt(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 3
    instance-of p1, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p2
.end method

.method public static optJsonArray(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonArray;
    .locals 1

    if-ltz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 6
    instance-of p1, p0, Lcom/google/gson/JsonArray;

    if-eqz p1, :cond_0

    .line 7
    check-cast p0, Lcom/google/gson/JsonArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static optJsonArray(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonArray;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 2
    instance-of p1, p0, Lcom/google/gson/JsonArray;

    if-eqz p1, :cond_0

    .line 3
    check-cast p0, Lcom/google/gson/JsonArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static optJsonObject(Lcom/google/gson/JsonArray;I)Lcom/google/gson/JsonObject;
    .locals 1

    if-ltz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 6
    instance-of p1, p0, Lcom/google/gson/JsonObject;

    if-eqz p1, :cond_0

    .line 7
    check-cast p0, Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static optJsonObject(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 2
    instance-of p1, p0, Lcom/google/gson/JsonObject;

    if-eqz p1, :cond_0

    .line 3
    check-cast p0, Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static optLong(Lcom/google/gson/JsonObject;Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1}, Lorg/light/utils/GsonUtils;->optLong(Lcom/google/gson/JsonObject;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static optLong(Lcom/google/gson/JsonObject;Ljava/lang/String;J)J
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 3
    instance-of p1, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_0
    return-wide p2
.end method

.method public static optString(Lcom/google/gson/JsonArray;I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 7
    instance-of p1, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static optString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, p1, v0}, Lorg/light/utils/GsonUtils;->optString(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static optString(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 3
    instance-of p1, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object p2
.end method
