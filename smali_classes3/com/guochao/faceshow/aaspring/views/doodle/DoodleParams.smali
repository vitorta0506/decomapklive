.class public Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams$b;,
        Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams$DialogType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;",
            ">;"
        }
    .end annotation
.end field

.field private static sDialogInterceptor:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams$b;


# instance fields
.field public mChangePanelVisibilityDelay:J

.field public mImagePath:Ljava/lang/String;

.field public mIsDrawableOutside:Z

.field public mIsFullScreen:Z

.field public mMaxScale:F

.field public mMinScale:F

.field public mOptimizeDrawing:Z

.field public mPaintColor:I

.field public mPaintPixelSize:F

.field public mPaintUnitSize:F

.field public mSavePath:Ljava/lang/String;

.field public mSavePathIsDir:Z

.field public mSupportScaleItem:Z

.field public mUri:Landroid/net/Uri;

.field public mZoomerScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams$a;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xc8

    .line 2
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mChangePanelVisibilityDelay:J

    const/high16 v0, 0x40200000    # 2.5f

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mZoomerScale:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mIsFullScreen:Z

    const/high16 v0, 0x41c80000    # 25.0f

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintPixelSize:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintUnitSize:F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mMinScale:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 8
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mMaxScale:F

    const/high16 v0, -0x10000

    .line 9
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintColor:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mSupportScaleItem:Z

    .line 11
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mOptimizeDrawing:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xc8

    .line 13
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mChangePanelVisibilityDelay:J

    const/high16 v0, 0x40200000    # 2.5f

    .line 14
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mZoomerScale:F

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mIsFullScreen:Z

    const/high16 v1, 0x41c80000    # 25.0f

    .line 16
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintPixelSize:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 17
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintUnitSize:F

    const/high16 v1, 0x3e800000    # 0.25f

    .line 18
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mMinScale:F

    const/high16 v1, 0x40a00000    # 5.0f

    .line 19
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mMaxScale:F

    const/high16 v1, -0x10000

    .line 20
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintColor:I

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mSupportScaleItem:Z

    .line 22
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mOptimizeDrawing:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mImagePath:Ljava/lang/String;

    .line 24
    const-class v2, Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mUri:Landroid/net/Uri;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mSavePath:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mSavePathIsDir:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mIsDrawableOutside:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mChangePanelVisibilityDelay:J

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mZoomerScale:F

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mIsFullScreen:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintPixelSize:F

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintUnitSize:F

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mMinScale:F

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mMaxScale:F

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintColor:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mSupportScaleItem:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mOptimizeDrawing:Z

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mSavePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mSavePathIsDir:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mIsDrawableOutside:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mChangePanelVisibilityDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mZoomerScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 8
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mIsFullScreen:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintPixelSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintUnitSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 11
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mMinScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 12
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mMaxScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 13
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mPaintColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mSupportScaleItem:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 15
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleParams;->mOptimizeDrawing:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
