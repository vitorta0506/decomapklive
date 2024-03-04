.class public Lorg/light/TextAsset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/TextAsset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fillColor:I

.field public text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/TextAsset$1;

    invoke-direct {v0}, Lorg/light/TextAsset$1;-><init>()V

    sput-object v0, Lorg/light/TextAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lorg/light/TextAsset;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lorg/light/TextAsset;->fillColor:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/TextAsset;->text:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/light/TextAsset;->fillColor:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/light/TextAsset;->text:Ljava/lang/String;

    .line 3
    iput p2, p0, Lorg/light/TextAsset;->fillColor:I

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
    iget-object p2, p0, Lorg/light/TextAsset;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lorg/light/TextAsset;->fillColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
