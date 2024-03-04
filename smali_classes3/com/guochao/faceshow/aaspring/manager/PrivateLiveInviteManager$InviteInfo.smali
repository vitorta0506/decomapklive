.class public Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InviteInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public from:I

.field public groupId:Ljava/lang/String;

.field public liveId:Ljava/lang/String;

.field public liveImg:Ljava/lang/String;

.field public liveType:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public privateType:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field public typeId:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userImg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo$a;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2"

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->privateType:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2"

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->privateType:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->userId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->typeId:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveImg:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->userImg:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveType:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->privateType:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->startTime:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->nickName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->groupId:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->from:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->typeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->userImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->liveType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->privateType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->startTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->groupId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/guochao/faceshow/aaspring/manager/PrivateLiveInviteManager$InviteInfo;->from:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
