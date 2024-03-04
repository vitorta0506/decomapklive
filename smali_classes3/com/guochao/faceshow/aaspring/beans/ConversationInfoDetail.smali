.class public Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;
.implements Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;


# instance fields
.field private age:I

.field private avatar:Ljava/lang/String;

.field private chatType:I

.field private count:I

.field private countryFlag:Ljava/lang/String;

.field private frozen:Z

.field private gender:I

.field private isSelect:Z

.field private level:I

.field public mvpUrl:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private preferentialLang:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->age:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getChatType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->chatType:I

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->count:I

    return v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->countryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->gender:I

    return v0
.end method

.method public getIsSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->isSelect:Z

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->level:I

    return v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferentialLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->preferentialLang:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "en"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->preferentialLang:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public bridge synthetic getVipInfo()Lb8/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lp7/g;->c(Lp7/h;)Lb8/g;

    move-result-object v0

    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->frozen:Z

    return v0
.end method

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->isSelect:Z

    return v0
.end method

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->age:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setChatType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->chatType:I

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->count:I

    return-void
.end method

.method public setCountryFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->countryFlag:Ljava/lang/String;

    return-void
.end method

.method public setFrozen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->frozen:Z

    return-void
.end method

.method public setGender(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->gender:I

    return-void
.end method

.method public setIsSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->isSelect:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->level:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPreferentialLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->preferentialLang:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->isSelect:Z

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method
