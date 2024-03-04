.class public Lcom/tencent/imsdk/relationship/UserInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final USERINFO_ALLOWTYPE_ALLOWANY:I = 0x0

.field public static final USERINFO_ALLOWTYPE_DENYANY:I = 0x2

.field public static final USERINFO_ALLOWTYPE_NEEDCONFIRM:I = 0x1

.field public static final USERINFO_ALLOWTYPE_TYPE_ALLOWANY:Ljava/lang/String; = "AllowType_Type_AllowAny"

.field public static final USERINFO_ALLOWTYPE_TYPE_DENYANY:Ljava/lang/String; = "AllowType_Type_DenyAny"

.field public static final USERINFO_ALLOWTYPE_TYPE_NEEDCONFIRM:Ljava/lang/String; = "AllowType_Type_NeedConfirm"

.field public static final USERINFO_GENDER_FEMALE:I = 0x2

.field public static final USERINFO_GENDER_MALE:I = 0x1

.field public static final USERINFO_GENDER_TYPE_FEMALE:Ljava/lang/String; = "Gender_Type_Female"

.field public static final USERINFO_GENDER_TYPE_MALE:Ljava/lang/String; = "Gender_Type_Male"

.field public static final USERINFO_GENDER_TYPE_UNKNOWN:Ljava/lang/String; = "Gender_Type_Unknown"

.field public static final USERINFO_GENDER_UNKNOWN:I = 0x0

.field public static final USERINFO_KEY_ALLOWTYPE:Ljava/lang/String; = "Tag_Profile_IM_AllowType"

.field public static final USERINFO_KEY_BIRTHDAY:Ljava/lang/String; = "Tag_Profile_IM_BirthDay"

.field public static final USERINFO_KEY_CUSTOM_PREFIX:Ljava/lang/String; = "Tag_Profile_Custom_"

.field public static final USERINFO_KEY_FACEURL:Ljava/lang/String; = "Tag_Profile_IM_Image"

.field public static final USERINFO_KEY_GENDER:Ljava/lang/String; = "Tag_Profile_IM_Gender"

.field public static final USERINFO_KEY_LEVEL:Ljava/lang/String; = "Tag_Profile_IM_Level"

.field public static final USERINFO_KEY_NICK:Ljava/lang/String; = "Tag_Profile_IM_Nick"

.field public static final USERINFO_KEY_ROLE:Ljava/lang/String; = "Tag_Profile_IM_Role"

.field public static final USERINFO_KEY_SELF_SIGNATURE:Ljava/lang/String; = "Tag_Profile_IM_SelfSignature"

.field public static final USER_NOT_RECEIVE_MESSAGE_NATIVE:I = 0x2

.field public static final USER_RECEIVE_MESSAGE_NATIVE:I = 0x1

.field public static final USER_RECEIVE_NOT_NOTIFY_MESSAGE_NATIVE:I = 0x3


# instance fields
.field private allowType:I

.field private birthday:J

.field private customUserInfoNumber:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private customUserInfoString:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private faceUrl:Ljava/lang/String;

.field private gender:I

.field private language:J

.field private level:I

.field private location:Ljava/lang/String;

.field private nicknameBytes:[B

.field private role:I

.field private signatureBytes:[B

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->customUserInfoString:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->customUserInfoNumber:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected addCustomUserInfoBytes(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->customUserInfoString:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addCustomUserInfoNumber(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->customUserInfoNumber:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAllowType()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->allowType:I

    return v0
.end method

.method public getBirthday()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->birthday:J

    return-wide v0
.end method

.method public getCustomUserInfoNumber()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->customUserInfoNumber:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCustomUserInfoString()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->customUserInfoString:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->faceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->gender:I

    return v0
.end method

.method public getLanguage()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->language:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->level:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->nicknameBytes:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getRole()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->role:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->signatureBytes:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/relationship/UserInfo;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setAllowType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/relationship/UserInfo;->allowType:I

    return-void
.end method

.method public setBirthday(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/relationship/UserInfo;->birthday:J

    return-void
.end method

.method public setFaceUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/relationship/UserInfo;->faceUrl:Ljava/lang/String;

    return-void
.end method

.method public setGender(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/relationship/UserInfo;->gender:I

    return-void
.end method

.method public setLanguage(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/relationship/UserInfo;->language:J

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/relationship/UserInfo;->level:I

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/relationship/UserInfo;->location:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/imsdk/relationship/UserInfo;->nicknameBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRole(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/relationship/UserInfo;->role:I

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/imsdk/relationship/UserInfo;->signatureBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/relationship/UserInfo;->userID:Ljava/lang/String;

    return-void
.end method
