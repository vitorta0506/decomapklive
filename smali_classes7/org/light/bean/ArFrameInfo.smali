.class public Lorg/light/bean/ArFrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/bean/ArFrameInfo$Plane;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/ArFrameInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cameraModelMatrix:[F

.field public planeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/light/bean/ArFrameInfo$Plane;",
            ">;"
        }
    .end annotation
.end field

.field public projectionMatrix:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/ArFrameInfo$1;

    invoke-direct {v0}, Lorg/light/bean/ArFrameInfo$1;-><init>()V

    sput-object v0, Lorg/light/bean/ArFrameInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lorg/light/bean/ArFrameInfo;->cameraModelMatrix:[F

    new-array v0, v0, [D

    .line 3
    iput-object v0, p0, Lorg/light/bean/ArFrameInfo;->projectionMatrix:[D

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 5
    iput-object v1, p0, Lorg/light/bean/ArFrameInfo;->cameraModelMatrix:[F

    new-array v0, v0, [D

    .line 6
    iput-object v0, p0, Lorg/light/bean/ArFrameInfo;->projectionMatrix:[D

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/ArFrameInfo;->cameraModelMatrix:[F

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/ArFrameInfo;->projectionMatrix:[D

    .line 9
    sget-object v0, Lorg/light/bean/ArFrameInfo$Plane;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/light/bean/ArFrameInfo;->planeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public float2double([F)[D
    .locals 4

    .line 1
    array-length v0, p1

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget v2, p1, v1

    float-to-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public printFloatArray([F)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/light/bean/ArFrameInfo;->cameraModelMatrix:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2
    iget-object p2, p0, Lorg/light/bean/ArFrameInfo;->projectionMatrix:[D

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 3
    iget-object p2, p0, Lorg/light/bean/ArFrameInfo;->planeList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
