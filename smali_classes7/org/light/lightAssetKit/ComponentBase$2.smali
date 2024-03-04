.class final Lorg/light/lightAssetKit/ComponentBase$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/lightAssetKit/ComponentBase;->gson()Lcom/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Ljava/lang/Enum<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Enum;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonSerializationContext;",
            ")",
            "Lcom/google/gson/JsonElement;"
        }
    .end annotation

    .line 2
    instance-of p3, p2, Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    check-cast p2, Ljava/lang/Class;

    :try_start_0
    const-string p3, "name"

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 8
    :cond_0
    new-instance p3, Ljava/lang/NoSuchFieldException;

    const-string v1, ""

    invoke-direct {p3, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string p3, "value"

    .line 9
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 10
    new-instance p3, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p3

    :catch_1
    :cond_1
    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3}, Lorg/light/lightAssetKit/ComponentBase$2;->serialize(Ljava/lang/Enum;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
