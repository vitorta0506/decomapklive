.class public final Lcom/tencent/bugly/proguard/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    .line 3
    iput p2, p0, Lcom/tencent/bugly/proguard/h;->b:I

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/h;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 49
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    const/16 v1, 0xa

    if-eqz v0, :cond_1

    .line 50
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 51
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 52
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const/16 p1, 0x54

    goto :goto_0

    :cond_2
    const/16 p1, 0x46

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 53
    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 54
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 55
    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 56
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 57
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 58
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 59
    :cond_6
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 60
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 61
    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 62
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 63
    :cond_8
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 64
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_6

    .line 65
    :cond_9
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 66
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_6

    .line 67
    :cond_a
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b

    .line 68
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_6

    .line 69
    :cond_b
    instance-of v0, p1, Lcom/tencent/bugly/proguard/k;

    if-eqz v0, :cond_c

    .line 70
    check-cast p1, Lcom/tencent/bugly/proguard/k;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/k;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_6

    .line 71
    :cond_c
    instance-of v0, p1, [B

    if-eqz v0, :cond_d

    .line 72
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a([BLjava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_6

    .line 73
    :cond_d
    instance-of v0, p1, [Z

    if-eqz v0, :cond_e

    .line 74
    check-cast p1, [Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_6

    .line 75
    :cond_e
    instance-of v0, p1, [S

    const/16 v2, 0x5d

    const-string v3, ", []\n"

    const/4 v4, 0x0

    const-string v5, ", [\n"

    const/4 v6, 0x0

    if-eqz v0, :cond_11

    .line 76
    check-cast p1, [S

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    array-length p2, p1

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_f
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p2, v0, v3}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_1
    if-ge v4, v0, :cond_10

    aget-short v3, p1, v4

    invoke-direct {p2, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_10
    invoke-direct {p0, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 77
    :cond_11
    instance-of v0, p1, [I

    if-eqz v0, :cond_14

    .line 78
    check-cast p1, [I

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    array-length p2, p1

    if-nez p2, :cond_12

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_12
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p2, v0, v3}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_2
    if-ge v4, v0, :cond_13

    aget v3, p1, v4

    invoke-direct {p2, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_13
    invoke-direct {p0, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 79
    :cond_14
    instance-of v0, p1, [J

    if-eqz v0, :cond_17

    .line 80
    check-cast p1, [J

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    array-length p2, p1

    if-nez p2, :cond_15

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_15
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p2, v0, v3}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_3
    if-ge v4, v0, :cond_16

    aget-wide v7, p1, v4

    invoke-direct {p2, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_16
    invoke-direct {p0, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 81
    :cond_17
    instance-of v0, p1, [F

    if-eqz v0, :cond_1a

    .line 82
    check-cast p1, [F

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    array-length p2, p1

    if-nez p2, :cond_18

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_18
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p2, v0, v3}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_4
    if-ge v4, v0, :cond_19

    aget v3, p1, v4

    invoke-direct {p2, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_19
    invoke-direct {p0, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 83
    :cond_1a
    instance-of v0, p1, [D

    if-eqz v0, :cond_1d

    .line 84
    check-cast p1, [D

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    array-length p2, p1

    if-nez p2, :cond_1b

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1b
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p2, v0, v3}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_5
    if-ge v4, v0, :cond_1c

    aget-wide v7, p1, v4

    invoke-direct {p2, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_1c
    invoke-direct {p0, v6}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 85
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 86
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    :goto_6
    return-object p0

    .line 87
    :cond_1e
    new-instance p1, Lcom/tencent/bugly/proguard/b;

    const-string/jumbo p2, "write object error: unsupport type."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/h;"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 41
    :cond_0
    array-length p2, p1

    if-nez p2, :cond_1

    .line 42
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 43
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 45
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    .line 46
    invoke-direct {p2, v3, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x5d

    .line 47
    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(BLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 0

    .line 6
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 0

    .line 10
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 0

    .line 12
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 13
    iget-object p3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a(Lcom/tencent/bugly/proguard/k;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 2

    .line 88
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    :cond_0
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/StringBuilder;I)V

    :goto_0
    const/16 p1, 0x7d

    const/4 p2, 0x0

    .line 91
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 0

    .line 14
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/h;"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 28
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 29
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", {}\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 30
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", {\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 32
    new-instance v0, Lcom/tencent/bugly/proguard/h;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 33
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/16 v4, 0x28

    .line 34
    invoke-direct {p2, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    const/16 v1, 0x29

    .line 37
    invoke-direct {p2, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 p1, 0x7d

    .line 38
    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a(SLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 0

    .line 8
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 p1, 0x54

    goto :goto_0

    :cond_0
    const/16 p1, 0x46

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final a([BLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .locals 5

    .line 17
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 19
    :cond_0
    array-length p2, p1

    if-nez p2, :cond_1

    .line 20
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", []\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 21
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 23
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge v1, v0, :cond_2

    aget-byte v4, p1, v1

    .line 24
    invoke-direct {p2, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x5d

    .line 25
    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method
