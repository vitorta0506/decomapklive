.class public Lorg/light/bean/LightAIData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/LightAIData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aiClassifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/light/bean/LightAIClassifier;",
            ">;"
        }
    .end annotation
.end field

.field aiDataStr:Ljava/lang/String;

.field aiResult:Ljava/lang/Object;

.field dataType:I

.field lightAIKeyPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/light/bean/LightAIKeyPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/LightAIData$1;

    invoke-direct {v0}, Lorg/light/bean/LightAIData$1;-><init>()V

    sput-object v0, Lorg/light/bean/LightAIData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lorg/light/bean/LightAIData;->dataType:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 10
    iput v0, p0, Lorg/light/bean/LightAIData;->dataType:I

    .line 11
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightAIData;->aiResult:Ljava/lang/Object;

    .line 12
    sget-object v0, Lorg/light/bean/LightAIKeyPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightAIData;->lightAIKeyPoints:Ljava/util/List;

    .line 13
    sget-object v0, Lorg/light/bean/LightAIClassifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightAIData;->aiClassifiers:Ljava/util/List;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightAIData;->aiDataStr:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/light/bean/LightAIData;->aiResult:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lorg/light/bean/LightAIKeyPoint;",
            ">;",
            "Ljava/util/List<",
            "Lorg/light/bean/LightAIClassifier;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/light/bean/LightAIData;->aiResult:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lorg/light/bean/LightAIData;->lightAIKeyPoints:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lorg/light/bean/LightAIData;->aiClassifiers:Ljava/util/List;

    .line 7
    iput-object p4, p0, Lorg/light/bean/LightAIData;->aiDataStr:Ljava/lang/String;

    .line 8
    iput p5, p0, Lorg/light/bean/LightAIData;->dataType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAiClassifiers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/light/bean/LightAIClassifier;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/bean/LightAIData;->aiClassifiers:Ljava/util/List;

    return-object v0
.end method

.method public getAiDataStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/bean/LightAIData;->aiDataStr:Ljava/lang/String;

    return-object v0
.end method

.method public getAiKeyPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/light/bean/LightAIKeyPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/bean/LightAIData;->lightAIKeyPoints:Ljava/util/List;

    return-object v0
.end method

.method public getAiResult()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/light/bean/LightAIData;->aiResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    iget v0, p0, Lorg/light/bean/LightAIData;->dataType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightAIData;->aiResult:Ljava/lang/Object;

    .line 2
    sget-object v0, Lorg/light/bean/LightAIKeyPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightAIData;->lightAIKeyPoints:Ljava/util/List;

    .line 3
    sget-object v0, Lorg/light/bean/LightAIClassifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightAIData;->aiClassifiers:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightAIData;->aiDataStr:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/light/bean/LightAIData;->dataType:I

    return-void
.end method

.method public setAiClassifiers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/light/bean/LightAIClassifier;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/light/bean/LightAIData;->aiClassifiers:Ljava/util/List;

    return-void
.end method

.method public setAiDataStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/light/bean/LightAIData;->aiDataStr:Ljava/lang/String;

    return-void
.end method

.method public setAiResult(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/light/bean/LightAIData;->aiResult:Ljava/lang/Object;

    return-void
.end method

.method public setDataType(I)V
    .locals 0

    iput p1, p0, Lorg/light/bean/LightAIData;->dataType:I

    return-void
.end method

.method public setLightAIKeyPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/light/bean/LightAIKeyPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/light/bean/LightAIData;->lightAIKeyPoints:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/light/bean/LightAIData;->dataType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/light/bean/LightAIData;->aiDataStr:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LightAIData{aiResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/light/bean/LightAIData;->aiResult:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lightAIKeyPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/light/bean/LightAIData;->lightAIKeyPoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aiClassifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/light/bean/LightAIData;->aiClassifiers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aiDataStr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/light/bean/LightAIData;->aiDataStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/light/bean/LightAIData;->dataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/bean/LightAIData;->aiResult:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object p2, p0, Lorg/light/bean/LightAIData;->lightAIKeyPoints:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3
    iget-object p2, p0, Lorg/light/bean/LightAIData;->aiClassifiers:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4
    iget-object p2, p0, Lorg/light/bean/LightAIData;->aiDataStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lorg/light/bean/LightAIData;->dataType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
