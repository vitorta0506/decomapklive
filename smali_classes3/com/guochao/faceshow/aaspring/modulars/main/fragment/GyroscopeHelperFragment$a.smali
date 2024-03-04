.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onFlushCompleted(Landroid/hardware/Sensor;)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 3
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 4
    aget p1, p1, v1

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->e:Lcom/guochao/faceshow/aaspring/views/GyroscopeImageView;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->e:Lcom/guochao/faceshow/aaspring/views/GyroscopeImageView;

    neg-float p1, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    :cond_0
    return-void
.end method
