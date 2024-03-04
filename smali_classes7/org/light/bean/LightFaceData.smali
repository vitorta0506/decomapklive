.class public Lorg/light/bean/LightFaceData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/LightFaceData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cameraSize:[I

.field public imageByteBuffer:Ljava/nio/ByteBuffer;

.field public imageData:[B

.field public imageSize:[I

.field public mLightFaceFeatureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/light/bean/LightFaceFeature;",
            ">;"
        }
    .end annotation
.end field

.field public renderSize:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/LightFaceData$1;

    invoke-direct {v0}, Lorg/light/bean/LightFaceData$1;-><init>()V

    sput-object v0, Lorg/light/bean/LightFaceData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lorg/light/bean/LightFaceData;->imageSize:[I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lorg/light/bean/LightFaceData;->cameraSize:[I

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Lorg/light/bean/LightFaceData;->renderSize:[I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/bean/LightFaceData;->mLightFaceFeatureList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 16
    iput-object v1, p0, Lorg/light/bean/LightFaceData;->imageSize:[I

    new-array v1, v0, [I

    .line 17
    iput-object v1, p0, Lorg/light/bean/LightFaceData;->cameraSize:[I

    new-array v0, v0, [I

    .line 18
    iput-object v0, p0, Lorg/light/bean/LightFaceData;->renderSize:[I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/bean/LightFaceData;->mLightFaceFeatureList:Ljava/util/List;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceData;->imageData:[B

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceData;->imageSize:[I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceData;->cameraSize:[I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightFaceData;->renderSize:[I

    .line 24
    sget-object v0, Lorg/light/bean/LightFaceFeature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/light/bean/LightFaceData;->mLightFaceFeatureList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([I[I[I)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lorg/light/bean/LightFaceData;->imageSize:[I

    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lorg/light/bean/LightFaceData;->cameraSize:[I

    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Lorg/light/bean/LightFaceData;->renderSize:[I

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/bean/LightFaceData;->mLightFaceFeatureList:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lorg/light/bean/LightFaceData;->imageSize:[I

    .line 12
    iput-object p2, p0, Lorg/light/bean/LightFaceData;->cameraSize:[I

    .line 13
    iput-object p3, p0, Lorg/light/bean/LightFaceData;->renderSize:[I

    .line 14
    invoke-virtual {p0}, Lorg/light/bean/LightFaceData;->revertFaceFeaturePoint()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public revertFaceFeaturePoint()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/light/bean/LightFaceData;->imageSize:[I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/light/bean/LightFaceData;->mLightFaceFeatureList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/light/bean/LightFaceData;->imageSize:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 3
    iget-object v2, p0, Lorg/light/bean/LightFaceData;->mLightFaceFeatureList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/light/bean/LightFaceFeature;

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    .line 4
    :goto_0
    iget-object v5, v3, Lorg/light/bean/LightFaceFeature;->facePoints:[F

    array-length v6, v5

    if-ge v4, v6, :cond_3

    int-to-float v6, v0

    .line 5
    aget v7, v5, v4

    sub-float/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    .line 6
    :goto_1
    iget-object v5, v3, Lorg/light/bean/LightFaceFeature;->faceFeaturePoints:[F

    array-length v6, v5

    if-ge v4, v6, :cond_4

    int-to-float v6, v0

    .line 7
    aget v7, v5, v4

    sub-float/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    .line 8
    :goto_2
    iget-object v5, v3, Lorg/light/bean/LightFaceFeature;->faceFeature256Points:[F

    array-length v6, v5

    if-ge v4, v6, :cond_1

    int-to-float v6, v0

    .line 9
    aget v7, v5, v4

    sub-float/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/light/bean/LightFaceData;->imageData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2
    iget-object p2, p0, Lorg/light/bean/LightFaceData;->imageSize:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3
    iget-object p2, p0, Lorg/light/bean/LightFaceData;->cameraSize:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4
    iget-object p2, p0, Lorg/light/bean/LightFaceData;->renderSize:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5
    iget-object p2, p0, Lorg/light/bean/LightFaceData;->mLightFaceFeatureList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
