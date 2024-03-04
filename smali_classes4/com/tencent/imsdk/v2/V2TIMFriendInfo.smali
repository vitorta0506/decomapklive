.class public Lcom/tencent/imsdk/v2/V2TIMFriendInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FRIEND_PROFILE_TYPE_KEY_CUSTOM_PREFIX:Ljava/lang/String; = "Tag_SNS_Custom_"

.field private static final FRIEND_PROFILE_TYPE_KEY_REMARK:Ljava/lang/String; = "Tag_SNS_IM_Remark"

.field public static final V2TIM_FRIEND_TYPE_BOTH:I = 0x2

.field public static final V2TIM_FRIEND_TYPE_SINGLE:I = 0x1


# instance fields
.field private friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

.field private modifyFriendProfileHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/imsdk/relationship/FriendInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/relationship/FriendInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->modifyFriendProfileHashMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getFriendAddTime()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendInfo;->getAddTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFriendCustomInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendInfo;->getFriendCustomInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getFriendGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendInfo;->getFriendGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriendRemark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendInfo;->getRemark()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getModifyFriendInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->modifyFriendProfileHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendInfo;->getUserInfo()Lcom/tencent/imsdk/relationship/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserProfile()Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendInfo;->getUserInfo()Lcom/tencent/imsdk/relationship/UserInfo;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->setUserInfo(Lcom/tencent/imsdk/relationship/UserInfo;)V

    return-object v1
.end method

.method public setFriendCustomInfo(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->modifyFriendProfileHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->modifyFriendProfileHashMap:Ljava/util/HashMap;

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Tag_SNS_Custom_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->modifyFriendProfileHashMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->modifyFriendProfileHashMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected setFriendInfo(Lcom/tencent/imsdk/relationship/FriendInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

    return-void
.end method

.method public setFriendRemark(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/FriendInfo;->setRemark(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->modifyFriendProfileHashMap:Ljava/util/HashMap;

    const-string v1, "Tag_SNS_IM_Remark"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->friendInfo:Lcom/tencent/imsdk/relationship/FriendInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendInfo;->getUserInfo()Lcom/tencent/imsdk/relationship/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/UserInfo;->setUserID(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V2TIMFriendInfo--->"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->getFriendCustomInfo()Ljava/util/HashMap;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_0

    const-string v3, "\n"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " |key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "userID:"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remark:"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->getFriendRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", groupNames:"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->getFriendGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", friendCustomInfo:"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", V2TIMUserFullInfo:"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->getUserProfile()Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMFriendInfo;->getUserProfile()Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
