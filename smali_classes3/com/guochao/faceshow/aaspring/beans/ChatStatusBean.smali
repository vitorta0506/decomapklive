.class public Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private age:I

.field private appointState:I

.field private attentStatus:I

.field private attentionAppointAuthShow:I

.field private autoTransFlag:Ljava/lang/String;

.field private blackStatus:I

.field private chatNum:I

.field private chat_switch:I

.field private eachOtherStatus:I

.field private fensiNum:I

.field private imAudioAppointSwitch:I

.field private imMsgSet:I

.field private imVideoAppointSwitch:I

.field private isChat:I

.field private isFirst:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private isShowAten:I

.field private myAttentionAppointAuth:I

.field private onlineCode:I

.field private preferentialLang:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->attentStatus:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->chatNum:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isChat:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->blackStatus:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->eachOtherStatus:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imMsgSet:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isShowAten:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->chat_switch:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->age:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->fensiNum:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isFirst:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->onlineCode:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->autoTransFlag:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->preferentialLang:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->appointState:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->myAttentionAppointAuth:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->attentionAppointAuthShow:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imAudioAppointSwitch:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imVideoAppointSwitch:I

    return-void
.end method


# virtual methods
.method public checkIfCanChat()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isChat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->age:I

    return v0
.end method

.method public getAppointState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->appointState:I

    return v0
.end method

.method public getAttentStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->attentStatus:I

    return v0
.end method

.method public getAttentionAppointAuthShow()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->attentionAppointAuthShow:I

    return v0
.end method

.method public getAutoTransFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->autoTransFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getBlackStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->blackStatus:I

    return v0
.end method

.method public getChatNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->chatNum:I

    return v0
.end method

.method public getChat_switch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->chat_switch:I

    return v0
.end method

.method public getEachOtherStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->eachOtherStatus:I

    return v0
.end method

.method public getFensiNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->fensiNum:I

    return v0
.end method

.method public getImAudioAppointSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imAudioAppointSwitch:I

    return v0
.end method

.method public getImMsgSet()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imMsgSet:I

    return v0
.end method

.method public getImVideoAppointSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imVideoAppointSwitch:I

    return v0
.end method

.method public getIsChat()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isChat:I

    return v0
.end method

.method public getIsFirst()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isFirst:I

    return v0
.end method

.method public getIsShowAten()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isShowAten:I

    return v0
.end method

.method public getMyAttentionAppointAuth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->myAttentionAppointAuth:I

    return v0
.end method

.method public getOnlineCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->onlineCode:I

    return v0
.end method

.method public getPreferentialLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->preferentialLang:Ljava/lang/String;

    return-object v0
.end method

.method public isBlack()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isChat:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBlocked()Z
    .locals 3

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->attentStatus:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imMsgSet:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->age:I

    return-void
.end method

.method public setAppointState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->appointState:I

    return-void
.end method

.method public setAttentStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->attentStatus:I

    return-void
.end method

.method public setAttentionAppointAuthShow(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->attentionAppointAuthShow:I

    return-void
.end method

.method public setAutoTransFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->autoTransFlag:Ljava/lang/String;

    return-void
.end method

.method public setBlackStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->blackStatus:I

    return-void
.end method

.method public setChatNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->chatNum:I

    return-void
.end method

.method public setChat_switch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->chat_switch:I

    return-void
.end method

.method public setEachOtherStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->eachOtherStatus:I

    return-void
.end method

.method public setFensiNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->fensiNum:I

    return-void
.end method

.method public setImAudioAppointSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imAudioAppointSwitch:I

    return-void
.end method

.method public setImMsgSet(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imMsgSet:I

    return-void
.end method

.method public setImVideoAppointSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imVideoAppointSwitch:I

    return-void
.end method

.method public setIsChat(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isChat:I

    return-void
.end method

.method public setIsFirst(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isFirst:I

    return-void
.end method

.method public setIsShowAten(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isShowAten:I

    return-void
.end method

.method public setMyAttentionAppointAuth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->myAttentionAppointAuth:I

    return-void
.end method

.method public setOnlineCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->onlineCode:I

    return-void
.end method

.method public setPreferentialLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->preferentialLang:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->attentStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->chatNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isChat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->blackStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->eachOtherStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imMsgSet:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isShowAten:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->chat_switch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->age:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->fensiNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->isFirst:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->onlineCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->autoTransFlag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->preferentialLang:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->appointState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->myAttentionAppointAuth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->attentionAppointAuthShow:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imAudioAppointSwitch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->imVideoAppointSwitch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
