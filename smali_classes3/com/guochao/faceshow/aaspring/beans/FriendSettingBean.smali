.class public Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;
.super Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private have:I

.field private imgUrl:Ljava/lang/String;

.field private isCheck:Z

.field private tagId:I

.field private tname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "content"
        }
        value = "tname"
    .end annotation
.end field

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->tname:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->have:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->tagId:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->type:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->isCheck:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->imgUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHave()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->have:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->tagId:I

    return v0
.end method

.method public getTname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->tname:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->type:I

    return v0
.end method

.method public isCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->isCheck:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->isCheck:Z

    return-void
.end method

.method public setHave(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->have:I

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setTagId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->tagId:I

    return-void
.end method

.method public setTname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->tname:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->tname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->have:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->tagId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->isCheck:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->imgUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
