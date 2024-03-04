.class public Lorg/light/ClipAsset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/ClipAsset;",
            ">;"
        }
    .end annotation
.end field

.field public static EXTERNAL:I = 0x3

.field public static PHOTO:I = 0x1

.field public static VIDEO:I


# instance fields
.field public clipRect:Landroid/graphics/RectF;

.field public duration:J

.field public matrix:Landroid/graphics/Matrix;

.field public path:Ljava/lang/String;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/ClipAsset$1;

    invoke-direct {v0}, Lorg/light/ClipAsset$1;-><init>()V

    sput-object v0, Lorg/light/ClipAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/light/ClipAsset;->type:I

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/light/ClipAsset;->clipRect:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/light/ClipAsset;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lorg/light/ClipAsset;->type:I

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/light/ClipAsset;->clipRect:Landroid/graphics/RectF;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/light/ClipAsset;->matrix:Landroid/graphics/Matrix;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/ClipAsset;->type:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/ClipAsset;->duration:J

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/ClipAsset;->path:Ljava/lang/String;

    .line 12
    const-class v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lorg/light/ClipAsset;->clipRect:Landroid/graphics/RectF;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 14
    iget-object p1, p0, Lorg/light/ClipAsset;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public type()I
    .locals 1

    iget v0, p0, Lorg/light/ClipAsset;->type:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/light/ClipAsset;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-wide v0, p0, Lorg/light/ClipAsset;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object v0, p0, Lorg/light/ClipAsset;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lorg/light/ClipAsset;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 5
    iget-object v0, p0, Lorg/light/ClipAsset;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
