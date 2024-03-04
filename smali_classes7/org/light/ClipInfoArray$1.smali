.class final Lorg/light/ClipInfoArray$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/ClipInfoArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/light/ClipInfoArray;",
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
    invoke-virtual {p0, p1}, Lorg/light/ClipInfoArray$1;->createFromParcel(Landroid/os/Parcel;)Lorg/light/ClipInfoArray;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/light/ClipInfoArray;
    .locals 1

    .line 2
    new-instance v0, Lorg/light/ClipInfoArray;

    invoke-direct {v0, p1}, Lorg/light/ClipInfoArray;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/light/ClipInfoArray$1;->newArray(I)[Lorg/light/ClipInfoArray;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/light/ClipInfoArray;
    .locals 0

    .line 2
    new-array p1, p1, [Lorg/light/ClipInfoArray;

    return-object p1
.end method
