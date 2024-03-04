.class public Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/bean/UserBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserMvpInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_MVP:I = 0x1


# instance fields
.field public dmSwitch:I

.field public giftSwitch:I

.field public mvp:I

.field private mvpLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level"
    .end annotation
.end field

.field public mvpUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpLevel:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpLevel:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvp:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpLevel:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->dmSwitch:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->giftSwitch:I

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpLevel:I

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMvpLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvp:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpLevel:I

    return v0
.end method

.method public setMvpLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpLevel:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->dmSwitch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->giftSwitch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
