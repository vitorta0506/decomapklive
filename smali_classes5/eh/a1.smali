.class final Leh/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/a1$b;,
        Leh/a1$c;
    }
.end annotation


# direct methods
.method static synthetic a(Ljava/lang/Object;)Lcom/google/protobuf/Value;
    .locals 0

    invoke-static {p0}, Leh/a1;->b(Ljava/lang/Object;)Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Object;)Lcom/google/protobuf/Value;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/protobuf/Value;->newBuilder()Lcom/google/protobuf/Value$c;

    move-result-object v0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/google/protobuf/NullValue;->NULL_VALUE:Lcom/google/protobuf/NullValue;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Value$c;->n0(Lcom/google/protobuf/NullValue;)Lcom/google/protobuf/Value$c;

    goto/16 :goto_2

    .line 3
    :cond_0
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 4
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/Value$c;->q0(D)Lcom/google/protobuf/Value$c;

    goto/16 :goto_2

    .line 5
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Value$c;->r0(Ljava/lang/String;)Lcom/google/protobuf/Value$c;

    goto :goto_2

    .line 7
    :cond_2
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 8
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Value$c;->k0(Z)Lcom/google/protobuf/Value$c;

    goto :goto_2

    .line 9
    :cond_3
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 10
    invoke-static {}, Lcom/google/protobuf/Struct;->newBuilder()Lcom/google/protobuf/Struct$b;

    move-result-object v1

    .line 11
    check-cast p0, Ljava/util/Map;

    .line 12
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Leh/a1;->b(Ljava/lang/Object;)Lcom/google/protobuf/Value;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/protobuf/Struct$b;->k0(Ljava/lang/String;Lcom/google/protobuf/Value;)Lcom/google/protobuf/Struct$b;

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Value$c;->s0(Lcom/google/protobuf/Struct$b;)Lcom/google/protobuf/Value$c;

    goto :goto_2

    .line 15
    :cond_5
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_7

    .line 16
    invoke-static {}, Lcom/google/protobuf/ListValue;->newBuilder()Lcom/google/protobuf/ListValue$b;

    move-result-object v1

    .line 17
    check-cast p0, Ljava/util/List;

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 19
    invoke-static {v2}, Leh/a1;->b(Ljava/lang/Object;)Lcom/google/protobuf/Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ListValue$b;->X(Lcom/google/protobuf/Value;)Lcom/google/protobuf/ListValue$b;

    goto :goto_1

    .line 20
    :cond_6
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Value$c;->m0(Lcom/google/protobuf/ListValue$b;)Lcom/google/protobuf/Value$c;

    .line 21
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/Value$c;->X()Lcom/google/protobuf/Value;

    move-result-object p0

    return-object p0
.end method
