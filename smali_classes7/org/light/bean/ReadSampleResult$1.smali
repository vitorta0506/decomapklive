.class final Lorg/light/bean/ReadSampleResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/bean/ReadSampleResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/light/bean/ReadSampleResult;",
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
    invoke-virtual {p0, p1}, Lorg/light/bean/ReadSampleResult$1;->createFromParcel(Landroid/os/Parcel;)Lorg/light/bean/ReadSampleResult;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/light/bean/ReadSampleResult;
    .locals 1

    .line 2
    new-instance v0, Lorg/light/bean/ReadSampleResult;

    invoke-direct {v0, p1}, Lorg/light/bean/ReadSampleResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/light/bean/ReadSampleResult$1;->newArray(I)[Lorg/light/bean/ReadSampleResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/light/bean/ReadSampleResult;
    .locals 0

    .line 2
    new-array p1, p1, [Lorg/light/bean/ReadSampleResult;

    return-object p1
.end method
