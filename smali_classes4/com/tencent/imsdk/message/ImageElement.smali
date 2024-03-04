.class public Lcom/tencent/imsdk/message/ImageElement;
.super Lcom/tencent/imsdk/message/MessageBaseElement;
.source "SourceFile"


# instance fields
.field private compressType:I

.field private imageFormat:I

.field private largeImageFileSize:I

.field private largeImageHeight:I

.field private largeImageUUID:Ljava/lang/String;

.field private largeImageUrl:Ljava/lang/String;

.field private largeImageWidth:I

.field private originImageFilePath:Ljava/lang/String;

.field private originImageFileSize:I

.field private originImageHeight:I

.field private originImageUUID:Ljava/lang/String;

.field private originImageUrl:Ljava/lang/String;

.field private originImageWidth:I

.field private thumbImageFileSize:I

.field private thumbImageHeight:I

.field private thumbImageUUID:Ljava/lang/String;

.field private thumbImageUrl:Ljava/lang/String;

.field private thumbImageWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/message/MessageBaseElement;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/message/MessageBaseElement;->setElementType(I)V

    return-void
.end method


# virtual methods
.method public getCompressType()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/ImageElement;->compressType:I

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/ImageElement;->imageFormat:I

    return v0
.end method

.method public getLargeImageFileSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/ImageElement;->largeImageFileSize:I

    return v0
.end method

.method public getLargeImageHeight()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/ImageElement;->largeImageHeight:I

    return v0
.end method

.method public getLargeImageUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->largeImageUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->largeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeImageWidth()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/ImageElement;->largeImageWidth:I

    return v0
.end method

.method public getOriginImageFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginImageFileSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageFileSize:I

    return v0
.end method

.method public getOriginImageHeight()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageHeight:I

    return v0
.end method

.method public getOriginImageUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginImageWidth()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageWidth:I

    return v0
.end method

.method public getThumbImageFileSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/ImageElement;->thumbImageFileSize:I

    return v0
.end method

.method public getThumbImageHeight()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/ImageElement;->thumbImageHeight:I

    return v0
.end method

.method public getThumbImageUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->thumbImageUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->thumbImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbImageWidth()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/message/ImageElement;->thumbImageWidth:I

    return v0
.end method

.method public setOriginImageFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageFilePath:Ljava/lang/String;

    return-void
.end method

.method public update(Lcom/tencent/imsdk/message/MessageBaseElement;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/imsdk/message/MessageBaseElement;->elementType:I

    iget v1, p1, Lcom/tencent/imsdk/message/MessageBaseElement;->elementType:I

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p1, Lcom/tencent/imsdk/message/ImageElement;

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageFilePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/imsdk/message/ImageElement;->originImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, p1, Lcom/tencent/imsdk/message/ImageElement;->imageFormat:I

    iput v0, p0, Lcom/tencent/imsdk/message/ImageElement;->imageFormat:I

    .line 5
    iget v0, p1, Lcom/tencent/imsdk/message/ImageElement;->compressType:I

    iput v0, p0, Lcom/tencent/imsdk/message/ImageElement;->compressType:I

    .line 6
    iget-object v0, p1, Lcom/tencent/imsdk/message/ImageElement;->originImageUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageUUID:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/tencent/imsdk/message/ImageElement;->originImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageUrl:Ljava/lang/String;

    .line 8
    iget v0, p1, Lcom/tencent/imsdk/message/ImageElement;->originImageFileSize:I

    iput v0, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageFileSize:I

    .line 9
    iget v0, p1, Lcom/tencent/imsdk/message/ImageElement;->originImageWidth:I

    iput v0, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageWidth:I

    .line 10
    iget v0, p1, Lcom/tencent/imsdk/message/ImageElement;->originImageHeight:I

    iput v0, p0, Lcom/tencent/imsdk/message/ImageElement;->originImageHeight:I

    .line 11
    iget-object v0, p1, Lcom/tencent/imsdk/message/ImageElement;->thumbImageUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->thumbImageUUID:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/tencent/imsdk/message/ImageElement;->thumbImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->thumbImageUrl:Ljava/lang/String;

    .line 13
    iget v0, p1, Lcom/tencent/imsdk/message/ImageElement;->thumbImageFileSize:I

    iput v0, p0, Lcom/tencent/imsdk/message/ImageElement;->thumbImageFileSize:I

    .line 14
    iget v0, p1, Lcom/tencent/imsdk/message/ImageElement;->thumbImageWidth:I

    iput v0, p0, Lcom/tencent/imsdk/message/ImageElement;->thumbImageWidth:I

    .line 15
    iget v0, p1, Lcom/tencent/imsdk/message/ImageElement;->thumbImageHeight:I

    iput v0, p0, Lcom/tencent/imsdk/message/ImageElement;->thumbImageHeight:I

    .line 16
    iget-object v0, p1, Lcom/tencent/imsdk/message/ImageElement;->largeImageUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->largeImageUUID:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/tencent/imsdk/message/ImageElement;->largeImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/imsdk/message/ImageElement;->largeImageUrl:Ljava/lang/String;

    .line 18
    iget v0, p1, Lcom/tencent/imsdk/message/ImageElement;->largeImageFileSize:I

    iput v0, p0, Lcom/tencent/imsdk/message/ImageElement;->largeImageFileSize:I

    .line 19
    iget v0, p1, Lcom/tencent/imsdk/message/ImageElement;->largeImageWidth:I

    iput v0, p0, Lcom/tencent/imsdk/message/ImageElement;->largeImageWidth:I

    .line 20
    iget p1, p1, Lcom/tencent/imsdk/message/ImageElement;->largeImageHeight:I

    iput p1, p0, Lcom/tencent/imsdk/message/ImageElement;->largeImageHeight:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
