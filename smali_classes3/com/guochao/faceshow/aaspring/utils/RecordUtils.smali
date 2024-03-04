.class public Lcom/guochao/faceshow/aaspring/utils/RecordUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_22007:I = 0x55f7

.field public static final TYPE_22008:I = 0x55f8

.field public static final TYPE_22009:I = 0x55f9

.field public static final TYPE_22010:I = 0x55fa

.field public static final TYPE_22011:I = 0x55fb

.field public static final TYPE_23011:I = 0x59e3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGameNameDetail(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string p0, ""

    return-object p0

    :pswitch_0
    const p1, 0x7f1205a8

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f1205a7

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f1205aa

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f1205a9

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5ba8d9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5bacc1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getItemResource(Landroid/content/Context;II)I
    .locals 1

    const p0, 0x7f08018c

    const v0, 0x7f080192

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/16 p0, 0x5dc1

    if-lt p2, p0, :cond_0

    const/16 p0, 0x5dcc

    if-gt p2, p0, :cond_0

    const p0, 0x7f08019a

    goto/16 :goto_3

    :cond_0
    const p0, 0x7f080196

    goto/16 :goto_3

    :pswitch_0
    const p0, 0x7f080195

    goto/16 :goto_3

    :pswitch_1
    const/16 p0, 0x4653

    if-eq p2, p0, :cond_2

    const/16 p0, 0x4655

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f080199

    goto/16 :goto_3

    :cond_2
    :goto_0
    const p0, 0x7f08018a

    goto :goto_3

    :pswitch_2
    const p0, 0x7f08019f

    goto :goto_3

    :pswitch_3
    const p0, 0x7f080191

    goto :goto_3

    :pswitch_4
    const/16 p0, 0x36b7

    if-eq p2, p0, :cond_4

    const/16 p0, 0x36b8

    if-ne p2, p0, :cond_3

    goto :goto_1

    :cond_3
    const p0, 0x7f08018f

    goto :goto_3

    :cond_4
    :goto_1
    const p0, 0x7f0f0281

    goto :goto_3

    :pswitch_5
    const p0, 0x7f080194

    goto :goto_3

    :pswitch_6
    const p0, 0x7f08018b

    goto :goto_3

    :pswitch_7
    const p0, 0x7f080189

    goto :goto_3

    :pswitch_8
    const p0, 0x7f080188

    goto :goto_3

    :pswitch_9
    const p0, 0x7f08018d

    goto :goto_3

    :pswitch_a
    const p0, 0x7f080190

    goto :goto_3

    :pswitch_b
    const p0, 0x7f08019c

    goto :goto_3

    :pswitch_c
    const p0, 0x7f08018e

    goto :goto_3

    :goto_2
    :pswitch_d
    const p0, 0x7f080192

    goto :goto_3

    :pswitch_e
    const p0, 0x7f080197

    goto :goto_3

    :pswitch_f
    const/16 p0, 0x55fb

    if-ne p2, p0, :cond_5

    goto :goto_2

    :cond_5
    const p0, 0x7f080193

    goto :goto_3

    :pswitch_10
    const p0, 0x7f08019b

    goto :goto_3

    :pswitch_11
    const p0, 0x7f080198

    :goto_3
    :pswitch_12
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_12
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_12
        :pswitch_4
        :pswitch_f
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1771
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private static getLuckyGiftReward(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result p1

    const/16 v0, 0x59e3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :cond_0
    :pswitch_0
    const p1, 0x7f12053c

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x55f7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getRecordInfo(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getParentType()I

    move-result v0

    const-string v1, ""

    const v2, 0x7f120699

    const/4 v3, 0x2

    const v4, 0x7f1202ec

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x5dc1

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x5dc2

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x5dc3

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x5dc4

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x5dc5

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x5dc6

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x5dc7

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x5dc8

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x5dc9

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x5dca

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x5dcb

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result p1

    const/16 v0, 0x5dcc

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const p1, 0x7f12060d

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :cond_3
    :goto_0
    const p1, 0x7f120858

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :cond_4
    :goto_1
    const p1, 0x7f12085a

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :cond_5
    :goto_2
    const p1, 0x7f120a2c

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 9
    :pswitch_0
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->getLuckyGiftReward(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 10
    :pswitch_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 11
    :pswitch_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 12
    :pswitch_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v2, 0x4651

    const v4, 0x7f1206d5

    if-ne v0, v2, :cond_6

    .line 13
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 14
    :cond_6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v2, 0x4653

    if-eq v0, v2, :cond_8

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v2, 0x4655

    if-ne v0, v2, :cond_7

    goto :goto_3

    .line 15
    :cond_7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result p1

    const/16 v0, 0x4657

    if-ne p1, v0, :cond_4f

    .line 16
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 17
    :cond_8
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRemark()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 19
    array-length v1, p1

    if-ne v1, v3, :cond_9

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object p1, p1, v6

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 21
    :cond_9
    aget-object v1, p1, v5

    const-string v2, "[0-9]+"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 22
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_b

    if-eqz v1, :cond_a

    .line 23
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    const p1, 0x7f120792

    new-array v1, v6, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :pswitch_4
    const p1, 0x7f120120

    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :pswitch_5
    const p1, 0x7f12021e

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 27
    :pswitch_6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x3a9c

    if-ne v0, v1, :cond_c

    const p1, 0x7f120162

    .line 28
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 29
    :cond_c
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x3a9a

    if-ne v0, v1, :cond_d

    .line 30
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 31
    :cond_d
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result p1

    const/16 v0, 0x3a9d

    if-ne p1, v0, :cond_e

    const p1, 0x7f1208da

    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 33
    :cond_e
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 34
    :pswitch_7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x36b1

    if-ne v0, v1, :cond_f

    const p1, 0x7f120693

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 36
    :cond_f
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x36b3

    if-ne v0, v1, :cond_10

    const p1, 0x7f120694

    .line 37
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 38
    :cond_10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x36b7

    const v3, 0x7f12064a

    if-ne v0, v1, :cond_11

    .line 39
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 40
    :cond_11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x36b8

    if-ne v0, v1, :cond_12

    .line 41
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 42
    :cond_12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x5209

    if-lt v0, v1, :cond_13

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result p1

    const/16 v0, 0x5224

    if-gt p1, v0, :cond_13

    .line 43
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :cond_13
    const p1, 0x7f1203c2

    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 45
    :pswitch_8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v2, 0x32c9

    if-ne v0, v2, :cond_14

    const v0, 0x7f12077c

    new-array v1, v6, [Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getGiftName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 47
    :cond_14
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v2, 0x32cb

    if-ne v0, v2, :cond_15

    const v0, 0x7f12077e

    new-array v1, v6, [Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getGiftName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 49
    :cond_15
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v2, 0x32cd

    if-ne v0, v2, :cond_16

    const v0, 0x7f12077d

    new-array v1, v6, [Ljava/lang/Object;

    .line 50
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getGiftName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 51
    :cond_16
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v2, 0x32cf

    if-ne v0, v2, :cond_17

    const v0, 0x7f12077f

    new-array v1, v3, [Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getGiftName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 53
    :cond_17
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v2, 0x32d1

    if-ne v0, v2, :cond_18

    const v0, 0x7f120781

    new-array v1, v3, [Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getGiftName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 55
    :cond_18
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v2, 0x32d3

    if-ne v0, v2, :cond_4f

    const v0, 0x7f120780

    new-array v1, v3, [Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getGiftName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :pswitch_9
    const p1, 0x7f120791

    .line 57
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :pswitch_a
    const p1, 0x7f12077b

    .line 58
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 59
    :pswitch_b
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_1e

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_19

    goto :goto_8

    .line 60
    :cond_19
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2713

    if-eq v0, v1, :cond_1d

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_1a

    goto :goto_7

    .line 61
    :cond_1a
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2715

    if-eq v0, v1, :cond_1c

    .line 62
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2717

    if-eq v0, v1, :cond_1c

    .line 63
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2719

    if-ne v0, v1, :cond_1b

    goto :goto_6

    .line 64
    :cond_1b
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->receiveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 65
    :cond_1c
    :goto_6
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->giveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_7
    const p1, 0x7f12069e

    .line 66
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :cond_1e
    :goto_8
    const p1, 0x7f1206a1

    .line 67
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 68
    :pswitch_c
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_25

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x232f

    if-eq v0, v1, :cond_25

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2331

    if-ne v0, v1, :cond_1f

    goto :goto_b

    .line 69
    :cond_1f
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x232a

    if-eq v0, v1, :cond_24

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2330

    if-eq v0, v1, :cond_24

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2332

    if-ne v0, v1, :cond_20

    goto :goto_a

    .line 70
    :cond_20
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x232b

    if-eq v0, v1, :cond_23

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x232d

    if-ne v0, v1, :cond_21

    goto :goto_9

    .line 71
    :cond_21
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2333

    if-lt v0, v1, :cond_22

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x2336

    if-gt v0, v1, :cond_22

    .line 72
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :cond_22
    const v0, 0x7f1208f5

    new-array v1, v6, [Ljava/lang/Object;

    .line 73
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    :cond_23
    :goto_9
    const v0, 0x7f1208f6

    new-array v1, v6, [Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 75
    :cond_24
    :goto_a
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->receiveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 76
    :cond_25
    :goto_b
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->giveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 77
    :pswitch_d
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x1f41

    if-eq v0, v1, :cond_27

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x1f45

    if-eq v0, v1, :cond_27

    .line 78
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x1f47

    if-eq v0, v1, :cond_27

    .line 79
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x1f49

    if-ne v0, v1, :cond_26

    goto :goto_c

    .line 80
    :cond_26
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->receiveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 81
    :cond_27
    :goto_c
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->giveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 82
    :pswitch_e
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x1b59

    if-eq v0, v1, :cond_29

    .line 83
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x1b5b

    if-eq v0, v1, :cond_29

    .line 84
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x1b5d

    if-ne v0, v1, :cond_28

    goto :goto_d

    .line 85
    :cond_28
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->receiveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 86
    :cond_29
    :goto_d
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->giveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 87
    :pswitch_f
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x1389

    if-eq v0, v1, :cond_43

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->isReceiveGift(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto/16 :goto_f

    .line 88
    :cond_2a
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x138a

    if-eq v0, v1, :cond_42

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->isSendGift(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_e

    .line 89
    :cond_2b
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x138b

    if-ne v0, v1, :cond_2c

    .line 90
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->giveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 91
    :cond_2c
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x138c

    if-ne v0, v1, :cond_2d

    .line 92
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->receiveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 93
    :cond_2d
    :pswitch_10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b9169

    const v2, 0x7f12049b

    if-ne v0, v1, :cond_2e

    .line 94
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 95
    :cond_2e
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b916a

    const v3, 0x7f120499

    if-ne v0, v1, :cond_2f

    .line 96
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 97
    :cond_2f
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b916b

    const v4, 0x7f12049c

    if-ne v0, v1, :cond_30

    .line 98
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 99
    :cond_30
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b916c

    const v5, 0x7f12049a

    if-ne v0, v1, :cond_31

    .line 100
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 101
    :cond_31
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b9551

    const v6, 0x7f12049d

    if-ne v0, v1, :cond_32

    .line 102
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 103
    :cond_32
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b9552

    const v7, 0x7f12049e

    if-ne v0, v1, :cond_33

    .line 104
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 105
    :cond_33
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b9939

    const v8, 0x7f1205be

    if-ne v0, v1, :cond_34

    .line 106
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 107
    :cond_34
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b993a

    const v9, 0x7f1205bc

    if-ne v0, v1, :cond_35

    .line 108
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 109
    :cond_35
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b993b

    const v10, 0x7f1205bf

    if-ne v0, v1, :cond_36

    .line 110
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 111
    :cond_36
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b993c    # 8.412E-39f

    const v11, 0x7f1205bd

    if-ne v0, v1, :cond_37

    .line 112
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 113
    :cond_37
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b9d21

    if-ne v0, v1, :cond_38

    .line 114
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 115
    :cond_38
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b9d22

    if-ne v0, v1, :cond_39

    .line 116
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 117
    :cond_39
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b9d23

    if-ne v0, v1, :cond_3a

    .line 118
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 119
    :cond_3a
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5b9d24

    if-ne v0, v1, :cond_3b

    .line 120
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 121
    :cond_3b
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5ba109

    if-ne v0, v1, :cond_3c

    .line 122
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 123
    :cond_3c
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5ba10a

    if-ne v0, v1, :cond_3d

    .line 124
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 125
    :cond_3d
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5ba4f1

    if-ne v0, v1, :cond_3e

    .line 126
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 127
    :cond_3e
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5ba4f2

    if-ne v0, v1, :cond_3f

    .line 128
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 129
    :cond_3f
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5ba4f3

    if-ne v0, v1, :cond_40

    .line 130
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 131
    :cond_40
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const v1, 0x5ba4f4

    if-ne v0, v1, :cond_41

    .line 132
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 133
    :cond_41
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->getGameNameDetail(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_13

    .line 134
    :cond_42
    :goto_e
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->giveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 135
    :cond_43
    :goto_f
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->receiveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 136
    :pswitch_11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0xbb9

    if-eq v0, v1, :cond_4e

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->isReceiveGift(I)Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_12

    .line 137
    :cond_44
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0xbba

    if-eq v0, v1, :cond_4d

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->isSendGift(I)Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_11

    .line 138
    :cond_45
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0xbbb

    if-ne v0, v1, :cond_46

    .line 139
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->receiveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 140
    :cond_46
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0xbbc

    if-ne v0, v1, :cond_47

    .line 141
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->giveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 142
    :cond_47
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x59da

    if-ne v0, v1, :cond_48

    .line 143
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->giveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 144
    :cond_48
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x55fb

    if-ne v0, v1, :cond_49

    .line 145
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->getLuckyGiftReward(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Ljava/lang/String;

    goto :goto_10

    .line 146
    :cond_49
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x59e4

    if-ne v0, v1, :cond_4a

    .line 147
    new-instance p1, Landroid/text/SpannableStringBuilder;

    const v0, 0x7f120a7f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 148
    :cond_4a
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0x59e5

    if-ne v0, v1, :cond_4b

    .line 149
    new-instance p1, Landroid/text/SpannableStringBuilder;

    const v0, 0x7f120a7c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 150
    :cond_4b
    :goto_10
    :pswitch_12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getDealType()I

    move-result v0

    const/16 v1, 0xfa1

    if-ne v0, v1, :cond_4c

    .line 151
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->giveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 152
    :cond_4c
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->receiveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 153
    :cond_4d
    :goto_11
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->giveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 154
    :cond_4e
    :goto_12
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->receiveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0

    .line 155
    :pswitch_13
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :pswitch_14
    const p1, 0x7f120169

    .line 156
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_4f
    :goto_13
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_11
        :pswitch_12
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1771
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public static getRecordTypeList(Landroid/app/Activity;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/TransactionType;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v4, 0x7f1208e3

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v5, 0x7f1208f4

    const-string v7, "IM"

    const/16 v8, 0x8

    const v9, 0x7f120551

    const/4 v10, 0x7

    const v11, 0x7f1203c0

    const/4 v12, 0x6

    const v13, 0x7f12056b

    const/4 v14, 0x5

    const v15, 0x7f1208e4

    const/4 v4, 0x1

    const/4 v3, 0x3

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v6, 0x7f120169

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {v0, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v14, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v12, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v10, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-direct {v1, v8, v7}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f12069c

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/16 v3, 0xb

    const v4, 0x7f12077b

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/16 v3, 0xc

    const v4, 0x7f120791

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/16 v3, 0xd

    const v4, 0x7f1202e9

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/16 v3, 0xe

    const v4, 0x7f1208b1

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f1202f0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x3a9a

    .line 16
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;->setChildId(I)V

    .line 17
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f120162

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x3a9c

    .line 19
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;->setChildId(I)V

    .line 20
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/16 v3, 0x10

    const v4, 0x7f12044e

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/16 v3, 0x16

    const v4, 0x7f120544

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f120a84

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x17

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f12060d

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f120856

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x18

    invoke-direct {v1, v3, v0}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    .line 26
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {v0, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v14, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v10, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-direct {v1, v8, v7}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f12069c

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/4 v3, -0x2

    const v4, 0x7f120698

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f1202ec

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f120a84

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x17

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f12060d

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f120856

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x18

    invoke-direct {v1, v3, v0}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v12, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v4, 0x7f1208da

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xf

    invoke-direct {v1, v5, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x3a9d

    .line 39
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;->setChildId(I)V

    .line 40
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v4, 0x7f1208de

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f120a84

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x17

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f12060d

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/guochao/faceshow/mine/model/TransactionType;

    const v3, 0x7f120856

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x18

    invoke-direct {v1, v3, v0}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v2
.end method

.method private static giveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getNumbers()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "@"

    if-le v0, v3, :cond_0

    const v0, 0x7f120785

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getGiftName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getNumbers()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0x7f120784

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getGiftName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v2

    .line 6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#6365FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v1, 0x22

    invoke-virtual {v0, p0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private static isReceiveGift(I)Z
    .locals 1

    const/16 v0, 0xbc1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1391

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59d9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59db

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59dd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59df

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59e1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbbd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbbf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1390

    if-eq p0, v0, :cond_1

    const/16 v0, 0x138d

    if-ne p0, v0, :cond_0

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

.method private static isSendGift(I)Z
    .locals 1

    const/16 v0, 0xbc2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1392

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59da

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59e2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59dc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59de

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59e0

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbbe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbc0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x138e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x138f

    if-ne p0, v0, :cond_0

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

.method private static receiveGift(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getNumbers()I

    move-result v0

    const v1, 0x7f120786

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getNumbers()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getGiftName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getGiftName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    .line 8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRecUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    .line 9
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#6365FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {v0, p0, v1, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static showOrderNo(Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getParentType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getParentType()I

    move-result v0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRemark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getRemark()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static showTopUpRefund(Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getParentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
