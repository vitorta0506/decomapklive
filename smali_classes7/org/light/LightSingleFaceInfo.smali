.class public Lorg/light/LightSingleFaceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/LightSingleFaceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public faceDirection:Lorg/light/LightFaceDirection;

.field public h:F

.field public w:F

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/LightSingleFaceInfo$1;

    invoke-direct {v0}, Lorg/light/LightSingleFaceInfo$1;-><init>()V

    sput-object v0, Lorg/light/LightSingleFaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IFFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/LightSingleFaceInfo;->x:F

    .line 3
    iput v0, p0, Lorg/light/LightSingleFaceInfo;->y:F

    .line 4
    iput v0, p0, Lorg/light/LightSingleFaceInfo;->w:F

    .line 5
    iput v0, p0, Lorg/light/LightSingleFaceInfo;->h:F

    .line 6
    invoke-static {}, Lorg/light/LightFaceDirection;->values()[Lorg/light/LightFaceDirection;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/light/LightSingleFaceInfo;->faceDirection:Lorg/light/LightFaceDirection;

    .line 7
    iput p2, p0, Lorg/light/LightSingleFaceInfo;->x:F

    .line 8
    iput p3, p0, Lorg/light/LightSingleFaceInfo;->y:F

    .line 9
    iput p4, p0, Lorg/light/LightSingleFaceInfo;->w:F

    .line 10
    iput p5, p0, Lorg/light/LightSingleFaceInfo;->h:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lorg/light/LightSingleFaceInfo;->x:F

    .line 13
    iput v0, p0, Lorg/light/LightSingleFaceInfo;->y:F

    .line 14
    iput v0, p0, Lorg/light/LightSingleFaceInfo;->w:F

    .line 15
    iput v0, p0, Lorg/light/LightSingleFaceInfo;->h:F

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/LightSingleFaceInfo;->x:F

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/LightSingleFaceInfo;->y:F

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/LightSingleFaceInfo;->w:F

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/LightSingleFaceInfo;->h:F

    .line 20
    invoke-static {}, Lorg/light/LightFaceDirection;->values()[Lorg/light/LightFaceDirection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/light/LightSingleFaceInfo;->faceDirection:Lorg/light/LightFaceDirection;

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
    iget p2, p0, Lorg/light/LightSingleFaceInfo;->x:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2
    iget p2, p0, Lorg/light/LightSingleFaceInfo;->y:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget p2, p0, Lorg/light/LightSingleFaceInfo;->w:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    iget p2, p0, Lorg/light/LightSingleFaceInfo;->h:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5
    iget-object p2, p0, Lorg/light/LightSingleFaceInfo;->faceDirection:Lorg/light/LightFaceDirection;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
