.class public Lorg/light/ClipInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/ClipInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public path:Ljava/lang/String;

.field public sourceTimeRange:Lorg/light/TimeRange;

.field public targetTimeRange:Lorg/light/TimeRange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/ClipInfo$1;

    invoke-direct {v0}, Lorg/light/ClipInfo$1;-><init>()V

    sput-object v0, Lorg/light/ClipInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/ClipInfo;->path:Ljava/lang/String;

    .line 7
    const-class v0, Lorg/light/TimeRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/light/TimeRange;

    iput-object v0, p0, Lorg/light/ClipInfo;->sourceTimeRange:Lorg/light/TimeRange;

    .line 8
    const-class v0, Lorg/light/TimeRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/light/TimeRange;

    iput-object p1, p0, Lorg/light/ClipInfo;->targetTimeRange:Lorg/light/TimeRange;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/light/TimeRange;Lorg/light/TimeRange;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/light/ClipInfo;->path:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/light/ClipInfo;->sourceTimeRange:Lorg/light/TimeRange;

    .line 4
    iput-object p3, p0, Lorg/light/ClipInfo;->targetTimeRange:Lorg/light/TimeRange;

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
    iget-object v0, p0, Lorg/light/ClipInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/light/ClipInfo;->sourceTimeRange:Lorg/light/TimeRange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lorg/light/ClipInfo;->targetTimeRange:Lorg/light/TimeRange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
