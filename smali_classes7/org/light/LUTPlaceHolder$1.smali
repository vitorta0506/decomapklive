.class final Lorg/light/LUTPlaceHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/LUTPlaceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/light/LUTPlaceHolder;",
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
    invoke-virtual {p0, p1}, Lorg/light/LUTPlaceHolder$1;->createFromParcel(Landroid/os/Parcel;)Lorg/light/LUTPlaceHolder;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/light/LUTPlaceHolder;
    .locals 1

    .line 2
    new-instance v0, Lorg/light/LUTPlaceHolder;

    invoke-direct {v0, p1}, Lorg/light/LUTPlaceHolder;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/light/LUTPlaceHolder$1;->newArray(I)[Lorg/light/LUTPlaceHolder;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/light/LUTPlaceHolder;
    .locals 0

    .line 2
    new-array p1, p1, [Lorg/light/LUTPlaceHolder;

    return-object p1
.end method
