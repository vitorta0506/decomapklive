.class public Lorg/light/TextPlaceHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/TextPlaceHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public entityId:I

.field public fillColor:I

.field public key:Ljava/lang/String;

.field public layerHeight:F

.field public layerWidth:F

.field public maxLength:I

.field public replaceIndex:I

.field public text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/TextPlaceHolder$1;

    invoke-direct {v0}, Lorg/light/TextPlaceHolder$1;-><init>()V

    sput-object v0, Lorg/light/TextPlaceHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lorg/light/TextPlaceHolder;->key:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lorg/light/TextPlaceHolder;->text:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/TextPlaceHolder;->key:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/TextPlaceHolder;->text:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/TextPlaceHolder;->fillColor:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/TextPlaceHolder;->maxLength:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/TextPlaceHolder;->layerWidth:F

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/TextPlaceHolder;->layerHeight:F

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/TextPlaceHolder;->replaceIndex:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/light/TextPlaceHolder;->entityId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/light/TextPlaceHolder;->key:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/light/TextPlaceHolder;->text:Ljava/lang/String;

    .line 4
    iput p3, p0, Lorg/light/TextPlaceHolder;->fillColor:I

    .line 5
    iput p4, p0, Lorg/light/TextPlaceHolder;->maxLength:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIFFII)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/light/TextPlaceHolder;->key:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lorg/light/TextPlaceHolder;->text:Ljava/lang/String;

    .line 9
    iput p3, p0, Lorg/light/TextPlaceHolder;->fillColor:I

    .line 10
    iput p4, p0, Lorg/light/TextPlaceHolder;->maxLength:I

    .line 11
    iput p5, p0, Lorg/light/TextPlaceHolder;->layerWidth:F

    .line 12
    iput p6, p0, Lorg/light/TextPlaceHolder;->layerHeight:F

    .line 13
    iput p7, p0, Lorg/light/TextPlaceHolder;->replaceIndex:I

    .line 14
    iput p8, p0, Lorg/light/TextPlaceHolder;->entityId:I

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
    iget-object p2, p0, Lorg/light/TextPlaceHolder;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lorg/light/TextPlaceHolder;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lorg/light/TextPlaceHolder;->fillColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lorg/light/TextPlaceHolder;->maxLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lorg/light/TextPlaceHolder;->layerWidth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    iget p2, p0, Lorg/light/TextPlaceHolder;->layerHeight:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7
    iget p2, p0, Lorg/light/TextPlaceHolder;->replaceIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lorg/light/TextPlaceHolder;->entityId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
