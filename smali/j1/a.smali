.class public Lj1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/b;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    const-string/jumbo v0, "\u4eac"

    const-string/jumbo v1, "\u6d25"

    const-string/jumbo v2, "\u5180"

    const-string/jumbo v3, "\u664b"

    const-string/jumbo v4, "\u8499"

    const-string/jumbo v5, "\u8fbd"

    const-string/jumbo v6, "\u5409"

    const-string/jumbo v7, "\u9ed1"

    const-string/jumbo v8, "\u6caa"

    const-string/jumbo v9, "\u82cf"

    const-string/jumbo v10, "\u6d59"

    const-string/jumbo v11, "\u7696"

    const-string/jumbo v12, "\u95fd"

    const-string/jumbo v13, "\u8d63"

    const-string/jumbo v14, "\u9c81"

    const-string/jumbo v15, "\u8c6b"

    const-string/jumbo v16, "\u9102"

    const-string/jumbo v17, "\u6e58"

    const-string/jumbo v18, "\u7ca4"

    const-string/jumbo v19, "\u6842"

    const-string/jumbo v20, "\u743c"

    const-string/jumbo v21, "\u6e1d"

    const-string/jumbo v22, "\u5ddd"

    const-string/jumbo v23, "\u8d35"

    const-string/jumbo v24, "\u4e91"

    const-string/jumbo v25, "\u85cf"

    const-string/jumbo v26, "\u9655"

    const-string/jumbo v27, "\u7518"

    const-string/jumbo v28, "\u9752"

    const-string/jumbo v29, "\u5b81"

    const-string/jumbo v30, "\u65b0"

    filled-new-array/range {v0 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj1/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    sget-object v2, Lj1/a;->a:[Ljava/lang/String;

    array-length v2, v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 2
    sget-object v3, Lj1/a;->a:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public b(I)Ljava/util/List;
    .locals 16
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    move/from16 v3, p1

    if-ne v3, v2, :cond_0

    const/4 v3, 0x0

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lj1/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v1, "\u9ed1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v1, "\u9c81"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v1, "\u9752"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v1, "\u9655"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v1, "\u95fd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v1, "\u9102"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v1, "\u8fbd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v1, "\u8d63"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v1, "\u8d35"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v1, "\u8c6b"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v1, "\u85cf"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v1, "\u8499"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v1, "\u82cf"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v1, "\u7ca4"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v1, "\u7696"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v1, "\u7518"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v1, "\u743c"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v1, "\u6e58"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v1, "\u6e1d"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v1, "\u6d59"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v1, "\u6d25"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v1, "\u6caa"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v1, "\u6842"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_17
    const-string/jumbo v1, "\u664b"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_18
    const-string/jumbo v1, "\u65b0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_19
    const-string/jumbo v1, "\u5ddd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1a
    const-string/jumbo v1, "\u5b81"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1b
    const-string/jumbo v1, "\u5409"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1c
    const-string/jumbo v1, "\u5180"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1d
    const-string/jumbo v1, "\u4eac"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1e
    const-string/jumbo v4, "\u4e91"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_0

    :cond_1f
    :goto_1
    const-string v2, "G"

    const-string v3, "Y"

    const/16 v4, 0x5a

    const/16 v5, 0x53

    const/16 v6, 0x4e

    const/16 v7, 0x44

    const/16 v8, 0x4b

    const/16 v9, 0x50

    const/16 v10, 0x48

    const-string v11, "R"

    const/16 v12, 0x4d

    const-string v13, "O"

    const-string v14, "I"

    const/16 v15, 0x41

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_19

    :goto_2
    :pswitch_0
    const/16 v1, 0x56

    if-gt v15, v1, :cond_20

    .line 4
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_2

    .line 5
    :cond_20
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_3
    :pswitch_1
    if-gt v15, v8, :cond_21

    .line 8
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_3

    .line 9
    :cond_21
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "V"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_4
    :pswitch_2
    const/16 v1, 0x55

    if-gt v15, v1, :cond_22

    .line 11
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_4

    .line 12
    :cond_22
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_5
    :pswitch_3
    const/16 v1, 0x4a

    if-gt v15, v1, :cond_23

    .line 14
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_5

    .line 15
    :cond_23
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_6
    :pswitch_4
    if-gt v15, v12, :cond_24

    .line 16
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_6

    .line 17
    :cond_24
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_7
    :pswitch_5
    if-gt v15, v6, :cond_25

    .line 18
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_7

    .line 19
    :cond_25
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_8
    :pswitch_6
    if-gt v15, v4, :cond_26

    .line 20
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_8

    .line 21
    :cond_26
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_9
    :pswitch_7
    if-gt v15, v5, :cond_27

    .line 23
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_9

    .line 24
    :cond_27
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 25
    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_a
    :pswitch_8
    if-gt v15, v9, :cond_28

    .line 26
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_a

    .line 27
    :cond_28
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 28
    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_b
    :pswitch_9
    if-gt v15, v6, :cond_29

    .line 29
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_b

    .line 30
    :cond_29
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "U"

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_c
    :pswitch_a
    if-gt v15, v7, :cond_2a

    .line 33
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_c

    :cond_2a
    const-string v1, "D"

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, "E"

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_d
    :pswitch_b
    const/16 v1, 0x4c

    if-gt v15, v1, :cond_2b

    .line 36
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_d

    .line 37
    :cond_2b
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_e
    :pswitch_c
    if-gt v15, v10, :cond_35

    .line 38
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_e

    :goto_f
    :pswitch_d
    if-gt v15, v7, :cond_2c

    .line 39
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_f

    .line 40
    :cond_2c
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_10
    :pswitch_e
    if-gt v15, v9, :cond_2d

    .line 41
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_10

    .line 42
    :cond_2d
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_11
    :pswitch_f
    if-gt v15, v12, :cond_2e

    .line 45
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_11

    .line 46
    :cond_2e
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_12
    :pswitch_10
    const/16 v1, 0x52

    if-gt v15, v1, :cond_2f

    .line 48
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_12

    .line 49
    :cond_2f
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_13
    :pswitch_11
    if-gt v15, v4, :cond_30

    .line 51
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_13

    .line 52
    :cond_30
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :goto_14
    :pswitch_12
    const/16 v1, 0x45

    if-gt v15, v1, :cond_35

    .line 55
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_14

    :goto_15
    :pswitch_13
    if-gt v15, v8, :cond_31

    .line 56
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_15

    .line 57
    :cond_31
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_19

    :goto_16
    :pswitch_14
    if-gt v15, v10, :cond_32

    .line 58
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_16

    :cond_32
    const-string v1, "J"

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "S"

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "T"

    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :goto_17
    :pswitch_15
    if-gt v15, v12, :cond_33

    .line 63
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_17

    .line 64
    :cond_33
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :pswitch_16
    const-string v1, "A-V"

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    if-gt v15, v5, :cond_34

    .line 67
    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    goto :goto_18

    :cond_34
    const-string v1, "B"

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_35
    :goto_19
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4e91 -> :sswitch_1e
        0x4eac -> :sswitch_1d
        0x5180 -> :sswitch_1c
        0x5409 -> :sswitch_1b
        0x5b81 -> :sswitch_1a
        0x5ddd -> :sswitch_19
        0x65b0 -> :sswitch_18
        0x664b -> :sswitch_17
        0x6842 -> :sswitch_16
        0x6caa -> :sswitch_15
        0x6d25 -> :sswitch_14
        0x6d59 -> :sswitch_13
        0x6e1d -> :sswitch_12
        0x6e58 -> :sswitch_11
        0x743c -> :sswitch_10
        0x7518 -> :sswitch_f
        0x7696 -> :sswitch_e
        0x7ca4 -> :sswitch_d
        0x82cf -> :sswitch_c
        0x8499 -> :sswitch_b
        0x85cf -> :sswitch_a
        0x8c6b -> :sswitch_9
        0x8d35 -> :sswitch_8
        0x8d63 -> :sswitch_7
        0x8fbd -> :sswitch_6
        0x9102 -> :sswitch_5
        0x95fd -> :sswitch_4
        0x9655 -> :sswitch_3
        0x9752 -> :sswitch_2
        0x9c81 -> :sswitch_1
        0x9ed1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_12
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_13
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public c(ILjava/lang/Object;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lj1/a;->b(I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public d(IILjava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lj1/a;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(II)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
