.class public Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean$FileType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createTime:J

.field private duration:J

.field private fileName:Ljava/lang/String;

.field private fileType:I
    .annotation build Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean$FileType;
    .end annotation
.end field

.field private height:I

.field private mUri:Landroid/net/Uri;

.field private path:Ljava/lang/String;

.field private selectPosition:I

.field private selectable:Z

.field private selected:Z

.field private thumbnailPath:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean$FileType;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->fileType:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->path:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->createTime:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->selected:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->width:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->height:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->duration:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->fileType:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->thumbnailPath:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->selectable:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->selectPosition:I

    .line 14
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->mUri:Landroid/net/Uri;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)I
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->createTime:J

    iget-wide v3, p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->createTime:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    const/4 v0, -0x1

    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->compareTo(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->path:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->path:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->createTime:J

    return-wide v0
.end method

.method public getDisplayUri()Landroid/net/Uri;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->duration:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()I
    .locals 1
    .annotation build Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean$FileType;
    .end annotation

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->fileType:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->height:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectPosition()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->selectPosition:I

    return v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->path:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->selectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->selected:Z

    return v0
.end method

.method public setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->createTime:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->duration:J

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileType(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean$FileType;
        .end annotation
    .end param

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->fileType:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->height:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->path:Ljava/lang/String;

    return-void
.end method

.method public setSelectPosition(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->selectPosition:I

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->selectable:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->selected:Z

    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->thumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->selected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->fileType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->selectable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->selectPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
