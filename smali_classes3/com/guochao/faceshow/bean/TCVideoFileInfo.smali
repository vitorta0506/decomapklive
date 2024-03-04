.class public Lcom/guochao/faceshow/bean/TCVideoFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/bean/TCVideoFileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private duration:J

.field private fileName:Ljava/lang/String;

.field private isSelected:Z

.field private mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

.field private mUri:Landroid/net/Uri;

.field private thumbPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/bean/TCVideoFileInfo$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/TCVideoFileInfo$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->isSelected:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->isSelected:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->fileName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->thumbPath:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->isSelected:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->duration:J

    .line 12
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mUri:Landroid/net/Uri;

    .line 13
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    iput-object p1, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    return-void
.end method

.method public constructor <init>(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->isSelected:Z

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->getDisplayUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->isSelected:Z

    return v0
.end method

.method public setDuration(J)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setDuration(J)V

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->isSelected:Z

    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setThumbnailPath(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->thumbPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->isSelected:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    iget-wide v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/bean/TCVideoFileInfo;->mBean:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
