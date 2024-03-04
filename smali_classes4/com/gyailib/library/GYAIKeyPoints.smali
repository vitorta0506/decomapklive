.class public Lcom/gyailib/library/GYAIKeyPoints;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gyailib/library/GYAIKeyPoints$KeyPointsType;
    }
.end annotation


# static fields
.field public static final TYPE_CAT:I = 0x1

.field public static final TYPE_FULL_BODY:I = 0x2


# instance fields
.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native cleanupModelData()I
.end method

.method public native forwardDetect(Landroid/graphics/Bitmap;Lcom/gyailib/library/GYDetectCommonResultStruct;I)I
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/gyailib/library/GYAIKeyPoints;->nativePtr:J

    return-wide v0
.end method

.method public native initInstance(Lcom/gyailib/library/SDKDeviceConfig;)I
.end method

.method public initInstance(Lcom/gyailib/library/SDKDeviceConfig;I)I
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "type_full_body"

    const-string/jumbo v1, "true"

    .line 2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, p2}, Lcom/gyailib/library/SDKDeviceConfig;->setInfos(Ljava/util/Map;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gyailib/library/GYAIKeyPoints;->initInstance(Lcom/gyailib/library/SDKDeviceConfig;)I

    move-result p1

    return p1
.end method

.method public setNativePtr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/gyailib/library/GYAIKeyPoints;->nativePtr:J

    return-void
.end method

.method public native setupWithModel(Lcom/gyailib/library/SDKModelConfig;)I
.end method
