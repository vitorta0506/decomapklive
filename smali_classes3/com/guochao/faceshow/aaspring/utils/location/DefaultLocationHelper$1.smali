.class Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->access$100(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$MyLocationListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/location/DefaultLocationHelper;)Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    move-result-object v0

    const/16 v1, 0x3ee

    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    const-string v3, "time out"

    invoke-interface {v0, v1, v3, v2}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;->onError(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V

    :cond_0
    return-void
.end method
