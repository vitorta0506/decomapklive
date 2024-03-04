.class public Lorg/light/bean/LightAIKeyPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/LightAIKeyPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aiPoints:[F

.field traceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/LightAIKeyPoint$1;

    invoke-direct {v0}, Lorg/light/bean/LightAIKeyPoint$1;-><init>()V

    sput-object v0, Lorg/light/bean/LightAIKeyPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/light/bean/LightAIKeyPoint;->traceId:I

    .line 3
    iput-object p2, p0, Lorg/light/bean/LightAIKeyPoint;->aiPoints:[F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lorg/light/bean/LightAIKeyPoint;->aiPoints:[F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/bean/LightAIKeyPoint;->traceId:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Lorg/light/bean/LightAIKeyPoint;->aiPoints:[F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAiPoints()[F
    .locals 1

    iget-object v0, p0, Lorg/light/bean/LightAIKeyPoint;->aiPoints:[F

    return-object v0
.end method

.method public getTraceId()I
    .locals 1

    iget v0, p0, Lorg/light/bean/LightAIKeyPoint;->traceId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/bean/LightAIKeyPoint;->traceId:I

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Lorg/light/bean/LightAIKeyPoint;->aiPoints:[F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lorg/light/bean/LightAIKeyPoint;->traceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lorg/light/bean/LightAIKeyPoint;->aiPoints:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
