.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private leftAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

.field private pkPunishAllTime:Ljava/lang/String;

.field private pkPunishEndTime:Ljava/lang/String;

.field private pkStage:Ljava/lang/String;

.field private pkingAllTime:Ljava/lang/String;

.field private pkingEndTime:Ljava/lang/String;

.field private rightAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->leftAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    .line 4
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->rightAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkPunishAllTime:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkPunishEndTime:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkingEndTime:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkingAllTime:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkStage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->leftAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    return-object v0
.end method

.method public getPkPunishAllTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkPunishAllTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPkPunishEndTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkPunishEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPkStage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkStage:Ljava/lang/String;

    return-object v0
.end method

.method public getPkingAllTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkingAllTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPkingEndTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkingEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->rightAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public setLeftAnchorMsg(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->leftAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    return-void
.end method

.method public setPkPunishAllTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkPunishAllTime:Ljava/lang/String;

    return-void
.end method

.method public setPkPunishEndTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkPunishEndTime:Ljava/lang/String;

    return-void
.end method

.method public setPkStage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkStage:Ljava/lang/String;

    return-void
.end method

.method public setPkingAllTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkingAllTime:Ljava/lang/String;

    return-void
.end method

.method public setPkingEndTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkingEndTime:Ljava/lang/String;

    return-void
.end method

.method public setRightAnchorMsg(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->rightAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->leftAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->rightAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkPunishAllTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkPunishEndTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkingEndTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkingAllTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->pkStage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
