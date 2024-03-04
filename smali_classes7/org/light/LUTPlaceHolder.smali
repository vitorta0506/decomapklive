.class public Lorg/light/LUTPlaceHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/LUTPlaceHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public intensity:F

.field public key:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/LUTPlaceHolder$1;

    invoke-direct {v0}, Lorg/light/LUTPlaceHolder$1;-><init>()V

    sput-object v0, Lorg/light/LUTPlaceHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lorg/light/LUTPlaceHolder;->key:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lorg/light/LUTPlaceHolder;->path:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lorg/light/LUTPlaceHolder;->intensity:F

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/LUTPlaceHolder;->key:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/LUTPlaceHolder;->path:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lorg/light/LUTPlaceHolder;->intensity:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/light/LUTPlaceHolder;->key:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/light/LUTPlaceHolder;->path:Ljava/lang/String;

    .line 4
    iput p3, p0, Lorg/light/LUTPlaceHolder;->intensity:F

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

    .line 1
    iget-object p2, p0, Lorg/light/LUTPlaceHolder;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lorg/light/LUTPlaceHolder;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lorg/light/LUTPlaceHolder;->intensity:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
