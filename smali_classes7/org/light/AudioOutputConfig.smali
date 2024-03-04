.class public Lorg/light/AudioOutputConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/AudioOutputConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public channels:I

.field public sampleCount:I

.field public sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/AudioOutputConfig$1;

    invoke-direct {v0}, Lorg/light/AudioOutputConfig$1;-><init>()V

    sput-object v0, Lorg/light/AudioOutputConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    .line 2
    iput v0, p0, Lorg/light/AudioOutputConfig;->sampleRate:I

    const/16 v0, 0x400

    .line 3
    iput v0, p0, Lorg/light/AudioOutputConfig;->sampleCount:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lorg/light/AudioOutputConfig;->channels:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    .line 6
    iput v0, p0, Lorg/light/AudioOutputConfig;->sampleRate:I

    const/16 v0, 0x400

    .line 7
    iput v0, p0, Lorg/light/AudioOutputConfig;->sampleCount:I

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lorg/light/AudioOutputConfig;->channels:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/AudioOutputConfig;->sampleRate:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/AudioOutputConfig;->sampleCount:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/light/AudioOutputConfig;->channels:I

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
    iget p2, p0, Lorg/light/AudioOutputConfig;->sampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lorg/light/AudioOutputConfig;->sampleCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lorg/light/AudioOutputConfig;->channels:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
