.class public Lorg/light/ExternalReaderClip;
.super Lorg/light/VideoClip;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/ExternalReaderClip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/ExternalReaderClip$1;

    invoke-direct {v0}, Lorg/light/ExternalReaderClip$1;-><init>()V

    sput-object v0, Lorg/light/ExternalReaderClip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/VideoClip;-><init>()V

    .line 2
    sget v0, Lorg/light/ClipAsset;->EXTERNAL:I

    iput v0, p0, Lorg/light/ClipAsset;->type:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/light/VideoClip;-><init>(Landroid/os/Parcel;)V

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

    invoke-super {p0, p1, p2}, Lorg/light/VideoClip;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
