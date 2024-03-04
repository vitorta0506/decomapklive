.class public Lorg/light/AudioPlaceHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/AudioPlaceHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public duration:J

.field public fadeInDuration:J

.field public fadeOutDuration:J

.field public key:Ljava/lang/String;

.field public loopCount:I

.field public musicID:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public startOffset:J

.field public volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/AudioPlaceHolder$1;

    invoke-direct {v0}, Lorg/light/AudioPlaceHolder$1;-><init>()V

    sput-object v0, Lorg/light/AudioPlaceHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lorg/light/AudioPlaceHolder;->loopCount:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/AudioPlaceHolder;->key:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/AudioPlaceHolder;->musicID:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/AudioPlaceHolder;->fadeInDuration:J

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/AudioPlaceHolder;->fadeOutDuration:J

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/AudioPlaceHolder;->volume:F

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/AudioPlaceHolder;->path:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/AudioPlaceHolder;->startOffset:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/AudioPlaceHolder;->duration:J

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/light/AudioPlaceHolder;->loopCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJFLjava/lang/String;JJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/light/AudioPlaceHolder;->key:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/light/AudioPlaceHolder;->musicID:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lorg/light/AudioPlaceHolder;->fadeInDuration:J

    .line 5
    iput-wide p5, p0, Lorg/light/AudioPlaceHolder;->fadeOutDuration:J

    .line 6
    iput p7, p0, Lorg/light/AudioPlaceHolder;->volume:F

    .line 7
    iput-object p8, p0, Lorg/light/AudioPlaceHolder;->path:Ljava/lang/String;

    .line 8
    iput-wide p9, p0, Lorg/light/AudioPlaceHolder;->startOffset:J

    .line 9
    iput-wide p11, p0, Lorg/light/AudioPlaceHolder;->duration:J

    .line 10
    iput p13, p0, Lorg/light/AudioPlaceHolder;->loopCount:I

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
    iget-object p2, p0, Lorg/light/AudioPlaceHolder;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lorg/light/AudioPlaceHolder;->musicID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-wide v0, p0, Lorg/light/AudioPlaceHolder;->fadeInDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget-wide v0, p0, Lorg/light/AudioPlaceHolder;->fadeOutDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget p2, p0, Lorg/light/AudioPlaceHolder;->volume:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    iget-object p2, p0, Lorg/light/AudioPlaceHolder;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-wide v0, p0, Lorg/light/AudioPlaceHolder;->startOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget-wide v0, p0, Lorg/light/AudioPlaceHolder;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    iget p2, p0, Lorg/light/AudioPlaceHolder;->loopCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
