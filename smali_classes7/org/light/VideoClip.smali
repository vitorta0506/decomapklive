.class public Lorg/light/VideoClip;
.super Lorg/light/ClipAsset;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/VideoClip;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public events:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field public speed:F

.field public startOffset:J

.field public volume:F

.field public volumeEffects:[Lorg/light/VolumeEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/VideoClip$1;

    invoke-direct {v0}, Lorg/light/VideoClip$1;-><init>()V

    sput-object v0, Lorg/light/VideoClip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/ClipAsset;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lorg/light/VideoClip;->speed:F

    .line 3
    iput v0, p0, Lorg/light/VideoClip;->volume:F

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/VideoClip;->events:Ljava/util/HashMap;

    .line 5
    sget v0, Lorg/light/ClipAsset;->VIDEO:I

    iput v0, p0, Lorg/light/ClipAsset;->type:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0, p1}, Lorg/light/ClipAsset;-><init>(Landroid/os/Parcel;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lorg/light/VideoClip;->speed:F

    .line 8
    iput v0, p0, Lorg/light/VideoClip;->volume:F

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/VideoClip;->events:Ljava/util/HashMap;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/VideoClip;->startOffset:J

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/VideoClip;->speed:F

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/VideoClip;->volume:F

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lorg/light/VideoClip;->events:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lorg/light/ClipAsset;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-wide v0, p0, Lorg/light/VideoClip;->startOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget p2, p0, Lorg/light/VideoClip;->speed:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    iget p2, p0, Lorg/light/VideoClip;->volume:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5
    iget-object p2, p0, Lorg/light/VideoClip;->events:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
