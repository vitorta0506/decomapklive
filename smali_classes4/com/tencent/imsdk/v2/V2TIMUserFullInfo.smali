.class public Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;
.super Lcom/tencent/imsdk/v2/V2TIMUserInfo;
.source "SourceFile"


# static fields
.field public static final PROFILE_TYPE_KEY_ALLOWTYPE:Ljava/lang/String; = "Tag_Profile_IM_AllowType"

.field public static final PROFILE_TYPE_KEY_CUSTOM_PREFIX:Ljava/lang/String; = "Tag_Profile_Custom_"

.field public static final PROFILE_TYPE_KEY_FACEURL:Ljava/lang/String; = "Tag_Profile_IM_Image"

.field public static final PROFILE_TYPE_KEY_GENDER:Ljava/lang/String; = "Tag_Profile_IM_Gender"

.field public static final PROFILE_TYPE_KEY_NICK:Ljava/lang/String; = "Tag_Profile_IM_Nick"

.field public static final PROFILE_TYPE_KEY_SELF_SIGNATURE:Ljava/lang/String; = "Tag_Profile_IM_SelfSignature"

.field public static final V2TIM_FRIEND_ALLOW_ANY:I = 0x0

.field public static final V2TIM_FRIEND_DENY_ANY:I = 0x2

.field public static final V2TIM_FRIEND_NEED_CONFIRM:I = 0x1

.field public static final V2TIM_GENDER_FEMALE:I = 0x2

.field public static final V2TIM_GENDER_MALE:I = 0x1

.field public static final V2TIM_GENDER_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowType()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getAllowType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method public getCustomInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getCustomUserInfoString()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getGender()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getLevel()I

    move-result v0

    return v0
.end method

.method public getRole()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getRole()I

    move-result v0

    return v0
.end method

.method public getSelfSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/UserInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAllowType(I)V
    .locals 3

    const-string v0, "Tag_Profile_IM_AllowType"

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/relationship/UserInfo;->setAllowType(I)V

    .line 2
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "AllowType_Type_AllowAny"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {p1, v1}, Lcom/tencent/imsdk/relationship/UserInfo;->setAllowType(I)V

    .line 4
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "AllowType_Type_DenyAny"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "AllowType_Type_NeedConfirm"

    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {p1, v2}, Lcom/tencent/imsdk/relationship/UserInfo;->setAllowType(I)V

    .line 6
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {p1, v2}, Lcom/tencent/imsdk/relationship/UserInfo;->setAllowType(I)V

    .line 8
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setCustomInfo(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Tag_Profile_Custom_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

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

    :cond_2
    :goto_1
    return-void
.end method

.method public setFaceUrl(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->setFaceUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setGender(I)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "Tag_Profile_IM_Gender"

    if-ne v0, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/relationship/UserInfo;->setGender(I)V

    .line 2
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    const-string v0, "Gender_Type_Male"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/relationship/UserInfo;->setGender(I)V

    .line 4
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    const-string v0, "Gender_Type_Female"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/relationship/UserInfo;->setGender(I)V

    .line 6
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    const-string v0, "Gender_Type_Unknown"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setLevel(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/UserInfo;->setLevel(I)V

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Tag_Profile_IM_Level"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->setNickName(Ljava/lang/String;)V

    return-void
.end method

.method public setRole(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/UserInfo;->setRole(I)V

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Tag_Profile_IM_Role"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSelfSignature(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->userInfo:Lcom/tencent/imsdk/relationship/UserInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/relationship/UserInfo;->setSignature(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    new-array p1, v1, [B

    goto :goto_0

    :cond_0
    new-array p1, v1, [B

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->modifyParams:Ljava/util/HashMap;

    const-string v1, "Tag_Profile_IM_SelfSignature"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V2TIMUserFullInfo--->"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getCustomInfo()Ljava/util/HashMap;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_0

    const-string v3, "\n"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nickName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gender:"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", faceUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->getFaceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selfSignature:"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getSelfSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allowType:"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getAllowType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", customInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
