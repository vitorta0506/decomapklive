.class public Lorg/light/PerformanceData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/PerformanceData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aeBasicBeautySystemTime:F

.field public aeLiquifyRenderChainTime:F

.field public aeLutRendererTime:F

.field public aePagRendererTime:F

.field public aePostEffectRendererTime:F

.field public aeScene3dRendererTime:F

.field public aiSystemTime:F

.field public frameTime:F

.field public ganRendererTime:F

.field public scriptSystemTime:F

.field public stickerRendererTime:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/PerformanceData$1;

    invoke-direct {v0}, Lorg/light/PerformanceData$1;-><init>()V

    sput-object v0, Lorg/light/PerformanceData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/light/PerformanceData;->frameTime:F

    .line 3
    iput p2, p0, Lorg/light/PerformanceData;->aiSystemTime:F

    .line 4
    iput p3, p0, Lorg/light/PerformanceData;->scriptSystemTime:F

    .line 5
    iput p4, p0, Lorg/light/PerformanceData;->stickerRendererTime:F

    .line 6
    iput p5, p0, Lorg/light/PerformanceData;->aePagRendererTime:F

    .line 7
    iput p6, p0, Lorg/light/PerformanceData;->aeBasicBeautySystemTime:F

    .line 8
    iput p7, p0, Lorg/light/PerformanceData;->aeLiquifyRenderChainTime:F

    .line 9
    iput p8, p0, Lorg/light/PerformanceData;->aeLutRendererTime:F

    .line 10
    iput p9, p0, Lorg/light/PerformanceData;->aePostEffectRendererTime:F

    .line 11
    iput p10, p0, Lorg/light/PerformanceData;->aeScene3dRendererTime:F

    .line 12
    iput p11, p0, Lorg/light/PerformanceData;->ganRendererTime:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/PerformanceData;->frameTime:F

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/PerformanceData;->aiSystemTime:F

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/PerformanceData;->scriptSystemTime:F

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/PerformanceData;->stickerRendererTime:F

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/PerformanceData;->aePagRendererTime:F

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/PerformanceData;->aeBasicBeautySystemTime:F

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/PerformanceData;->aeLiquifyRenderChainTime:F

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/PerformanceData;->aeLutRendererTime:F

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/PerformanceData;->aePostEffectRendererTime:F

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/light/PerformanceData;->aeScene3dRendererTime:F

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lorg/light/PerformanceData;->ganRendererTime:F

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
    iget p2, p0, Lorg/light/PerformanceData;->frameTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2
    iget p2, p0, Lorg/light/PerformanceData;->aiSystemTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget p2, p0, Lorg/light/PerformanceData;->scriptSystemTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    iget p2, p0, Lorg/light/PerformanceData;->stickerRendererTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5
    iget p2, p0, Lorg/light/PerformanceData;->aePagRendererTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    iget p2, p0, Lorg/light/PerformanceData;->aeBasicBeautySystemTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7
    iget p2, p0, Lorg/light/PerformanceData;->aeLiquifyRenderChainTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 8
    iget p2, p0, Lorg/light/PerformanceData;->aeLutRendererTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    iget p2, p0, Lorg/light/PerformanceData;->aePostEffectRendererTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 10
    iget p2, p0, Lorg/light/PerformanceData;->aeScene3dRendererTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 11
    iget p2, p0, Lorg/light/PerformanceData;->ganRendererTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
