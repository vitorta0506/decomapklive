.class Lcom/guochao/faceshow/aaspring/utils/location/LocationService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/location/LocationService;->startLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/location/LocationService;

.field final synthetic val$onLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/location/LocationService;Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/LocationService$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/LocationService;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/location/LocationService$1;->val$onLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/LocationService$1;->val$onLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;->onError(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/LocationService$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/LocationService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onReceiveLocation(Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/location/LocationService$1;->val$onLocationChangedListener:Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;->onReceiveLocation(Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/location/LocationService$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/location/LocationService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
