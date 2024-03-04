.class public Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static fillCustomFiled(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "3"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_1
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 3
    :pswitch_6
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->mvpUrl:Ljava/lang/String;

    goto :goto_1

    .line 4
    :pswitch_7
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setFrozen(Z)V

    goto :goto_1

    .line 5
    :pswitch_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    if-nez p1, :cond_7

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 7
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressHeadType(I)V

    goto :goto_1

    .line 8
    :pswitch_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    if-nez p1, :cond_8

    .line 9
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 10
    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setIsVip(I)V

    goto :goto_1

    .line 11
    :pswitch_a
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setAge(I)V

    goto :goto_1

    .line 12
    :pswitch_b
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setGender(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static from(Lcom/guochao/faceshow/aaspring/beans/IM_User;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;
    .locals 2

    .line 71
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setAvatar(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setCountryFlag(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getSex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setGender(I)V

    .line 75
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNick_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setNickName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUser_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserId(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getAge()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setAge(I)V

    return-object v0
.end method

.method public static from(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->from(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;Lcom/tencent/imsdk/v2/V2TIMConversation;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;Lcom/tencent/imsdk/v2/V2TIMConversation;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;
    .locals 11
    .param p1    # Lcom/tencent/imsdk/v2/V2TIMConversation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, ":"

    const-string v1, "other"

    .line 1
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->getFaceUrl()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getFaceUrl()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setAvatar(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getShowName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setNickName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->getUserID()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getGender()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setGender(I)V

    .line 9
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getCustomInfo()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->convertMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v3, "clogo"

    .line 10
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setCountryFlag(Ljava/lang/String;)V

    :cond_3
    const-string v3, "chatSet"

    .line 12
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 13
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "onlyFriend"

    .line 14
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setChatType(I)V

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 15
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 16
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, ";"

    .line 18
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    .line 19
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_9

    .line 20
    aget-object v6, v1, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 21
    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_8

    const-string v7, ""

    .line 22
    aget-object v9, v6, v3

    .line 23
    array-length v10, v6

    if-le v10, v8, :cond_6

    const/4 v8, 0x1

    .line 24
    :goto_1
    array-length v10, v6

    if-ge v8, v10, :cond_7

    .line 25
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 26
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v6, v8

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 27
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v6, v8

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 28
    :cond_6
    aget-object v7, v6, v4

    .line 29
    :cond_7
    invoke-static {v2, v9, v7}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->fillCustomFiled(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    const/4 v3, 0x1

    goto :goto_3

    :catch_0
    nop

    :goto_3
    if-nez v3, :cond_e

    :try_start_1
    const-string v0, "gender"

    .line 30
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setGender(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const-string v0, "headType"

    .line 32
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    if-nez v1, :cond_a

    .line 35
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 36
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 37
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressHeadType(I)V

    :cond_b
    const-string v0, "vipMsg"

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    if-nez v1, :cond_c

    .line 41
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 42
    :cond_c
    :try_start_2
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setIsVip(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    nop

    :cond_d
    :goto_5
    const-string v0, "age"

    .line 43
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 44
    :try_start_3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setAge(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    nop

    :cond_e
    :goto_6
    const-string v0, "leavel"

    .line 45
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 46
    :try_start_4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setLevel(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    nop

    :cond_f
    :goto_7
    const-string v0, "headF"

    .line 47
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 48
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    if-nez v1, :cond_10

    .line 50
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 51
    :cond_10
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressHead(Ljava/lang/String;)V

    :cond_11
    const-string v0, "vAddr"

    .line 52
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 53
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 54
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    if-nez v0, :cond_12

    .line 55
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 56
    :cond_12
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setHostCertificationUrl(Ljava/lang/String;)V

    .line 57
    :cond_13
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getLevel()I

    move-result p1

    if-eqz p1, :cond_14

    .line 58
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getLevel()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setLevel(I)V

    :cond_14
    return-object v2
.end method

.method public static from(Lp7/h;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;
    .locals 3

    .line 59
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;-><init>()V

    .line 60
    invoke-interface {p0}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setAvatar(Ljava/lang/String;)V

    .line 61
    invoke-interface {p0}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setCountryFlag(Ljava/lang/String;)V

    .line 62
    invoke-interface {p0}, Lp7/h;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setNickName(Ljava/lang/String;)V

    .line 63
    invoke-interface {p0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserId(Ljava/lang/String;)V

    .line 64
    invoke-interface {p0}, Lp7/b;->getAge()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setAge(I)V

    .line 65
    invoke-interface {p0}, Lp7/e;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setLevel(I)V

    .line 66
    invoke-interface {p0}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v1

    .line 67
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    if-eqz v2, :cond_0

    .line 68
    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 69
    :cond_0
    invoke-interface {p0}, Lp7/h;->getGender()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setGender(I)V

    return-object v0
.end method
