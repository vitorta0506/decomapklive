.class public Lorg/light/MaterialConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/MaterialConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final SourceType_MultiMedia:I = 0x2

.field public static final SourceType_Photo:I = 0x1

.field public static final SourceType_Video:I


# instance fields
.field public aiFilterList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public clipAssetCount:I

.field public description:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public minImageHeight:I

.field public minImageWidth:I

.field public minVideoDuration:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/MaterialConfig$1;

    invoke-direct {v0}, Lorg/light/MaterialConfig$1;-><init>()V

    sput-object v0, Lorg/light/MaterialConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lorg/light/MaterialConfig;->key:Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lorg/light/MaterialConfig;->type:I

    .line 13
    iput v1, p0, Lorg/light/MaterialConfig;->clipAssetCount:I

    .line 14
    iput v1, p0, Lorg/light/MaterialConfig;->minVideoDuration:I

    .line 15
    iput v1, p0, Lorg/light/MaterialConfig;->minImageHeight:I

    .line 16
    iput v1, p0, Lorg/light/MaterialConfig;->minImageWidth:I

    .line 17
    iput-object v0, p0, Lorg/light/MaterialConfig;->description:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/MaterialConfig;->key:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/MaterialConfig;->type:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 22
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/light/MaterialConfig;->aiFilterList:Ljava/util/HashMap;

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 24
    iget-object v2, p0, Lorg/light/MaterialConfig;->aiFilterList:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/MaterialConfig;->clipAssetCount:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/MaterialConfig;->minVideoDuration:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/MaterialConfig;->minImageHeight:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/MaterialConfig;->minImageWidth:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/light/MaterialConfig;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIILjava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/light/MaterialConfig;->key:Ljava/lang/String;

    .line 3
    iput p2, p0, Lorg/light/MaterialConfig;->type:I

    .line 4
    iput p3, p0, Lorg/light/MaterialConfig;->clipAssetCount:I

    .line 5
    iput p4, p0, Lorg/light/MaterialConfig;->minVideoDuration:I

    .line 6
    iput p5, p0, Lorg/light/MaterialConfig;->minImageHeight:I

    .line 7
    iput p6, p0, Lorg/light/MaterialConfig;->minImageWidth:I

    .line 8
    iput-object p7, p0, Lorg/light/MaterialConfig;->aiFilterList:Ljava/util/HashMap;

    .line 9
    iput-object p8, p0, Lorg/light/MaterialConfig;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lorg/light/MaterialConfig;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lorg/light/MaterialConfig;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lorg/light/MaterialConfig;->aiFilterList:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v0, p0, Lorg/light/MaterialConfig;->aiFilterList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9
    iget p2, p0, Lorg/light/MaterialConfig;->clipAssetCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lorg/light/MaterialConfig;->minVideoDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lorg/light/MaterialConfig;->minImageHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lorg/light/MaterialConfig;->minImageWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object p2, p0, Lorg/light/MaterialConfig;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
