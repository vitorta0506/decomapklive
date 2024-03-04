.class public Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Landroid/hardware/SensorManager;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment$a;

.field private c:Z

.field private d:Landroid/hardware/Sensor;

.field e:Lcom/guochao/faceshow/aaspring/views/GyroscopeImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->c:Z

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a073c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0b1a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/GyroscopeImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->e:Lcom/guochao/faceshow/aaspring/views/GyroscopeImageView;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->d:Landroid/hardware/Sensor;

    if-eqz p1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->c:Z

    .line 5
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment$a;

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment$a;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->d:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment$a;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/GyroscopeHelperFragment;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_0
    return-void
.end method
