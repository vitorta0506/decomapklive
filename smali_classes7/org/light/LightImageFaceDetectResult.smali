.class public Lorg/light/LightImageFaceDetectResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/LightImageFaceDetectResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public faceInfoArray:[Lorg/light/LightSingleFaceInfo;

.field public msg:Ljava/lang/String;

.field public type:Lorg/light/LightFaceResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/LightImageFaceDetectResult$1;

    invoke-direct {v0}, Lorg/light/LightImageFaceDetectResult$1;-><init>()V

    sput-object v0, Lorg/light/LightImageFaceDetectResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lorg/light/LightSingleFaceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/LightSingleFaceInfo;

    iput-object v0, p0, Lorg/light/LightImageFaceDetectResult;->faceInfoArray:[Lorg/light/LightSingleFaceInfo;

    .line 7
    invoke-static {}, Lorg/light/LightFaceResultType;->values()[Lorg/light/LightFaceResultType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/light/LightImageFaceDetectResult;->type:Lorg/light/LightFaceResultType;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/light/LightImageFaceDetectResult;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Lorg/light/LightSingleFaceInfo;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/light/LightImageFaceDetectResult;->faceInfoArray:[Lorg/light/LightSingleFaceInfo;

    .line 3
    invoke-static {}, Lorg/light/LightFaceResultType;->values()[Lorg/light/LightFaceResultType;

    move-result-object p1

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/light/LightImageFaceDetectResult;->type:Lorg/light/LightFaceResultType;

    .line 4
    iput-object p3, p0, Lorg/light/LightImageFaceDetectResult;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/LightImageFaceDetectResult;->faceInfoArray:[Lorg/light/LightSingleFaceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2
    iget-object p2, p0, Lorg/light/LightImageFaceDetectResult;->type:Lorg/light/LightFaceResultType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lorg/light/LightImageFaceDetectResult;->msg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
