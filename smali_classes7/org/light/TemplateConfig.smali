.class public Lorg/light/TemplateConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/TemplateConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final SourceType_MultiMedia:I = 0x2

.field public static final SourceType_Photo:I = 0x1

.field public static final SourceType_Video:I


# instance fields
.field public maxClipAssetCount:I

.field public maxImageDuration:I

.field public minClipAssetCount:I

.field public minImageDuration:I

.field public minVideoDuration:I

.field public originVolume:F

.field public preferredCoverTime:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/TemplateConfig$1;

    invoke-direct {v0}, Lorg/light/TemplateConfig$1;-><init>()V

    sput-object v0, Lorg/light/TemplateConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/light/TemplateConfig;->type:I

    .line 3
    iput p2, p0, Lorg/light/TemplateConfig;->minImageDuration:I

    .line 4
    iput p3, p0, Lorg/light/TemplateConfig;->maxImageDuration:I

    .line 5
    iput p4, p0, Lorg/light/TemplateConfig;->minClipAssetCount:I

    .line 6
    iput p5, p0, Lorg/light/TemplateConfig;->maxClipAssetCount:I

    .line 7
    iput p6, p0, Lorg/light/TemplateConfig;->minVideoDuration:I

    .line 8
    iput-wide p7, p0, Lorg/light/TemplateConfig;->preferredCoverTime:J

    .line 9
    iput p9, p0, Lorg/light/TemplateConfig;->originVolume:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lorg/light/TemplateConfig;->type:I

    .line 12
    iput v0, p0, Lorg/light/TemplateConfig;->minClipAssetCount:I

    .line 13
    iput v0, p0, Lorg/light/TemplateConfig;->maxClipAssetCount:I

    .line 14
    iput v0, p0, Lorg/light/TemplateConfig;->minVideoDuration:I

    .line 15
    iput v0, p0, Lorg/light/TemplateConfig;->minImageDuration:I

    .line 16
    iput v0, p0, Lorg/light/TemplateConfig;->maxImageDuration:I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lorg/light/TemplateConfig;->preferredCoverTime:J

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lorg/light/TemplateConfig;->originVolume:F

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/TemplateConfig;->type:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/TemplateConfig;->minClipAssetCount:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/TemplateConfig;->maxClipAssetCount:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/TemplateConfig;->minVideoDuration:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/TemplateConfig;->minImageDuration:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/TemplateConfig;->maxImageDuration:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/TemplateConfig;->preferredCoverTime:J

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lorg/light/TemplateConfig;->originVolume:F

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
    iget p2, p0, Lorg/light/TemplateConfig;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lorg/light/TemplateConfig;->minClipAssetCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lorg/light/TemplateConfig;->maxClipAssetCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lorg/light/TemplateConfig;->minVideoDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lorg/light/TemplateConfig;->minImageDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lorg/light/TemplateConfig;->maxImageDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-wide v0, p0, Lorg/light/TemplateConfig;->preferredCoverTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget p2, p0, Lorg/light/TemplateConfig;->originVolume:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
