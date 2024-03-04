.class public Lorg/light/bean/LightAIDataWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/LightAIDataWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_TYPE_BOTH:I = 0x6

.field public static final DATA_TYPE_NONE:I = 0x0

.field public static final DATA_TYPE_OBJ:I = 0x4

.field public static final DATA_TYPE_STR:I = 0x2


# instance fields
.field aiDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/light/bean/LightAIData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/LightAIDataWrapper$1;

    invoke-direct {v0}, Lorg/light/bean/LightAIDataWrapper$1;-><init>()V

    sput-object v0, Lorg/light/bean/LightAIDataWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/bean/LightAIDataWrapper;->aiDataMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lorg/light/bean/LightAIDataWrapper;->aiDataMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAIData(Ljava/lang/String;)Lorg/light/bean/LightAIData;
    .locals 1

    iget-object v0, p0, Lorg/light/bean/LightAIDataWrapper;->aiDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/light/bean/LightAIData;

    return-object p1
.end method

.method public getAiDataMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/light/bean/LightAIData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/bean/LightAIDataWrapper;->aiDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lorg/light/bean/LightAIDataWrapper;->aiDataMap:Ljava/util/HashMap;

    return-void
.end method

.method public setAIData(Ljava/lang/String;Lorg/light/bean/LightAIData;)V
    .locals 1

    iget-object v0, p0, Lorg/light/bean/LightAIDataWrapper;->aiDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lorg/light/bean/LightAIDataWrapper;->aiDataMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
