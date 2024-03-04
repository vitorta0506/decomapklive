.class public Lorg/light/VideoOutputConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/VideoOutputConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public frameRate:F

.field public seekTolerance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/VideoOutputConfig$1;

    invoke-direct {v0}, Lorg/light/VideoOutputConfig$1;-><init>()V

    sput-object v0, Lorg/light/VideoOutputConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/light/VideoOutputConfig;->frameRate:F

    .line 3
    iput p2, p0, Lorg/light/VideoOutputConfig;->seekTolerance:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 5
    iput v0, p0, Lorg/light/VideoOutputConfig;->frameRate:F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lorg/light/VideoOutputConfig;->seekTolerance:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/VideoOutputConfig;->frameRate:F

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/light/VideoOutputConfig;->seekTolerance:I

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
    iget p2, p0, Lorg/light/VideoOutputConfig;->frameRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2
    iget p2, p0, Lorg/light/VideoOutputConfig;->seekTolerance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
