.class final Lorg/light/PerformanceData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/PerformanceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/light/PerformanceData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/light/PerformanceData$1;->createFromParcel(Landroid/os/Parcel;)Lorg/light/PerformanceData;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/light/PerformanceData;
    .locals 1

    .line 2
    new-instance v0, Lorg/light/PerformanceData;

    invoke-direct {v0, p1}, Lorg/light/PerformanceData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/light/PerformanceData$1;->newArray(I)[Lorg/light/PerformanceData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/light/PerformanceData;
    .locals 0

    .line 2
    new-array p1, p1, [Lorg/light/PerformanceData;

    return-object p1
.end method