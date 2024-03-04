.class public Lorg/light/AudioAsset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/AudioAsset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public duration:J

.field events:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field public fadeInDuration:J

.field public fadeOutDuration:J

.field public loopCount:I

.field public musicID:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public startOffset:J

.field public volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/AudioAsset$1;

    invoke-direct {v0}, Lorg/light/AudioAsset$1;-><init>()V

    sput-object v0, Lorg/light/AudioAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/AudioAsset;->events:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lorg/light/AudioAsset;->loopCount:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/AudioAsset;->musicID:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/AudioAsset;->fadeInDuration:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/AudioAsset;->fadeOutDuration:J

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/AudioAsset;->volume:F

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/AudioAsset;->path:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/AudioAsset;->startOffset:J

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/AudioAsset;->duration:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lorg/light/AudioAsset;->events:Ljava/util/HashMap;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/light/AudioAsset;->loopCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJFLjava/lang/String;JJLjava/util/HashMap;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJF",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/AudioAsset;->events:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lorg/light/AudioAsset;->loopCount:I

    .line 4
    iput-object p1, p0, Lorg/light/AudioAsset;->musicID:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Lorg/light/AudioAsset;->fadeInDuration:J

    .line 6
    iput-wide p4, p0, Lorg/light/AudioAsset;->fadeOutDuration:J

    .line 7
    iput p6, p0, Lorg/light/AudioAsset;->volume:F

    .line 8
    iput-object p7, p0, Lorg/light/AudioAsset;->path:Ljava/lang/String;

    .line 9
    iput-wide p8, p0, Lorg/light/AudioAsset;->startOffset:J

    .line 10
    iput-wide p10, p0, Lorg/light/AudioAsset;->duration:J

    if-eqz p12, :cond_0

    .line 11
    invoke-virtual {v0, p12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 12
    :cond_0
    iput p13, p0, Lorg/light/AudioAsset;->loopCount:I

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
    iget-object p2, p0, Lorg/light/AudioAsset;->musicID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lorg/light/AudioAsset;->fadeInDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lorg/light/AudioAsset;->fadeOutDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget p2, p0, Lorg/light/AudioAsset;->volume:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5
    iget-object p2, p0, Lorg/light/AudioAsset;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-wide v0, p0, Lorg/light/AudioAsset;->startOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget-wide v0, p0, Lorg/light/AudioAsset;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget-object p2, p0, Lorg/light/AudioAsset;->events:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 9
    iget p2, p0, Lorg/light/AudioAsset;->loopCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
