.class public Lorg/light/ClipPlaceHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/ClipPlaceHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public contentDuration:J

.field public fillMode:I

.field public height:I

.field public volume:F

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/ClipPlaceHolder$1;

    invoke-direct {v0}, Lorg/light/ClipPlaceHolder$1;-><init>()V

    sput-object v0, Lorg/light/ClipPlaceHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIIIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/light/ClipPlaceHolder;->contentDuration:J

    .line 3
    iput p3, p0, Lorg/light/ClipPlaceHolder;->fillMode:I

    .line 4
    iput p4, p0, Lorg/light/ClipPlaceHolder;->width:I

    .line 5
    iput p5, p0, Lorg/light/ClipPlaceHolder;->height:I

    .line 6
    iput p6, p0, Lorg/light/ClipPlaceHolder;->volume:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lorg/light/ClipPlaceHolder;->volume:F

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/ClipPlaceHolder;->contentDuration:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/ClipPlaceHolder;->fillMode:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/ClipPlaceHolder;->width:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/ClipPlaceHolder;->height:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lorg/light/ClipPlaceHolder;->volume:F

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
    iget-wide v0, p0, Lorg/light/ClipPlaceHolder;->contentDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget p2, p0, Lorg/light/ClipPlaceHolder;->fillMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lorg/light/ClipPlaceHolder;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lorg/light/ClipPlaceHolder;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lorg/light/ClipPlaceHolder;->volume:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
