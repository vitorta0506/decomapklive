.class public Lorg/light/bean/ReadSampleResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/ReadSampleResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fenceFd:Landroid/os/ParcelFileDescriptor;

.field public readOk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/ReadSampleResult$1;

    invoke-direct {v0}, Lorg/light/bean/ReadSampleResult$1;-><init>()V

    sput-object v0, Lorg/light/bean/ReadSampleResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/light/bean/ReadSampleResult;->readOk:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lorg/light/bean/ReadSampleResult;->fenceFd:Landroid/os/ParcelFileDescriptor;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/light/bean/ReadSampleResult;->readOk:Z

    .line 8
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lorg/light/bean/ReadSampleResult;->fenceFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/light/bean/ReadSampleResult;->fenceFd:Landroid/os/ParcelFileDescriptor;

    .line 3
    iput-boolean p1, p0, Lorg/light/bean/ReadSampleResult;->readOk:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/light/bean/ReadSampleResult;->readOk:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget-object v0, p0, Lorg/light/bean/ReadSampleResult;->fenceFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
