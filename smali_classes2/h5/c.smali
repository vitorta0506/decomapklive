.class Lh5/c;
.super Lg5/f;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/gson/stream/JsonReader;

.field private final d:Lh5/a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/api/client/json/JsonToken;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lh5/a;Lcom/google/gson/stream/JsonReader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg5/f;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh5/c;->e:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lh5/c;->d:Lh5/a;

    .line 4
    iput-object p2, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    return-void
.end method

.method private Z()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_INT:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Token is not a number"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public V()Lg5/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lh5/c$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    const-string v0, "}"

    .line 4
    iput-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    const-string v0, "]"

    .line 7
    iput-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public a()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lh5/c;->Z()V

    .line 2
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lh5/c;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public c()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lh5/c;->Z()V

    .line 2
    iget-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lh5/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh5/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public j()Lcom/google/api/client/json/JsonToken;
    .locals 1

    iget-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    return-object v0
.end method

.method public k()Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lh5/c;->Z()V

    .line 2
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lh5/c;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public o()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lh5/c;->Z()V

    .line 2
    iget-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public p()Lg5/c;
    .locals 1

    iget-object v0, p0, Lh5/c;->d:Lh5/a;

    return-object v0
.end method

.method public q()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lh5/c;->Z()V

    .line 2
    iget-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public r()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lh5/c;->Z()V

    .line 2
    iget-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public s()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lh5/c;->Z()V

    .line 2
    iget-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lh5/c;->Z()V

    .line 2
    iget-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public w()Lcom/google/api/client/json/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    sget-object v3, Lh5/c$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 4
    iget-object v0, p0, Lh5/c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 6
    iget-object v0, p0, Lh5/c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    .line 9
    :goto_1
    sget-object v3, Lh5/c$a;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 10
    iput-object v1, p0, Lh5/c;->g:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    goto/16 :goto_3

    .line 12
    :pswitch_0
    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    .line 14
    iget-object v0, p0, Lh5/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lh5/c;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 15
    :pswitch_1
    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    const/16 v1, 0x2e

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_INT:Lcom/google/api/client/json/JsonToken;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/google/api/client/json/JsonToken;

    :goto_2
    iput-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    goto/16 :goto_3

    .line 17
    :pswitch_2
    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_STRING:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    :pswitch_3
    const-string v0, "null"

    .line 19
    iput-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_NULL:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    .line 21
    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_3

    .line 22
    :pswitch_4
    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "true"

    .line 23
    iput-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_TRUE:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    :cond_4
    const-string v0, "false"

    .line 25
    iput-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_FALSE:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    :pswitch_5
    const-string v0, "}"

    .line 27
    iput-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    .line 29
    iget-object v0, p0, Lh5/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    goto :goto_3

    :pswitch_6
    const-string v0, "{"

    .line 31
    iput-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/google/api/client/json/JsonToken;->START_OBJECT:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    goto :goto_3

    :pswitch_7
    const-string v0, "]"

    .line 33
    iput-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    .line 35
    iget-object v0, p0, Lh5/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lh5/c;->c:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto :goto_3

    :pswitch_8
    const-string v0, "["

    .line 37
    iput-object v0, p0, Lh5/c;->g:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/google/api/client/json/JsonToken;->START_ARRAY:Lcom/google/api/client/json/JsonToken;

    iput-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    .line 39
    :goto_3
    iget-object v0, p0, Lh5/c;->f:Lcom/google/api/client/json/JsonToken;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
