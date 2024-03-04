.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DressBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arFileUrl:Ljava/lang/String;

.field private arFileUrlV2:Ljava/lang/String;

.field private arThumbMd5:Ljava/lang/String;

.field private arThumbnailImage:Ljava/lang/String;

.field private defaultRuleId:J

.field private dressMallRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;",
            ">;"
        }
    .end annotation
.end field

.field private fileUrl:Ljava/lang/String;

.field private fileUrlV2:Ljava/lang/String;

.field private isRelate:I

.field private isVip:I

.field private mallId:J

.field private name:Ljava/lang/String;

.field private priority:Ljava/lang/String;

.field private tagType:I

.field private thumbMd5:Ljava/lang/String;

.field private thumbnailImage:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->mallId:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->fileUrlV2:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arFileUrlV2:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->fileUrl:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arFileUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->thumbnailImage:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arThumbnailImage:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->priority:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->thumbMd5:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arThumbMd5:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->isVip:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->tagType:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->isRelate:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->defaultRuleId:J

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->dressMallRuleList:Ljava/util/List;

    .line 19
    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getArFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getArFileUrlV2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arFileUrlV2:Ljava/lang/String;

    return-object v0
.end method

.method public getArThumbMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arThumbMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getArThumbnailImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arThumbnailImage:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultRuleId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->defaultRuleId:J

    return-wide v0
.end method

.method public getDressMallRuleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->dressMallRuleList:Ljava/util/List;

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUrlV2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->fileUrlV2:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRelate()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->isRelate:I

    return v0
.end method

.method public getIsVip()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->isVip:I

    return v0
.end method

.method public getMallId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->mallId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public getTagType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->tagType:I

    return v0
.end method

.method public getThumbMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->thumbMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->thumbnailImage:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->type:I

    return v0
.end method

.method public setArFileUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arFileUrl:Ljava/lang/String;

    return-void
.end method

.method public setArFileUrlV2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arFileUrlV2:Ljava/lang/String;

    return-void
.end method

.method public setArThumbMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arThumbMd5:Ljava/lang/String;

    return-void
.end method

.method public setArThumbnailImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arThumbnailImage:Ljava/lang/String;

    return-void
.end method

.method public setDefaultRuleId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->defaultRuleId:J

    return-void
.end method

.method public setDressMallRuleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->dressMallRuleList:Ljava/util/List;

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileUrlV2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->fileUrlV2:Ljava/lang/String;

    return-void
.end method

.method public setIsRelate(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->isRelate:I

    return-void
.end method

.method public setIsVip(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->isVip:I

    return-void
.end method

.method public setMallId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->mallId:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->priority:Ljava/lang/String;

    return-void
.end method

.method public setTagType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->tagType:I

    return-void
.end method

.method public setThumbMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->thumbMd5:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->thumbnailImage:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->mallId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->fileUrlV2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arFileUrlV2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->fileUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arFileUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->thumbnailImage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arThumbnailImage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->priority:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->thumbMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->arThumbMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->isVip:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->tagType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->isRelate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->defaultRuleId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->dressMallRuleList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 17
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
