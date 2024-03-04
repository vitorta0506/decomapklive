.class Lorg/light/CameraController$2;
.super Lorg/light/listener/AIDLFilaPositionCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/CameraController;->getFilamentAssetPosition(Lorg/light/CameraController$FilaPositionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/CameraController;

.field final synthetic val$filaPositionCallback:Lorg/light/CameraController$FilaPositionCallback;


# direct methods
.method constructor <init>(Lorg/light/CameraController;Lorg/light/CameraController$FilaPositionCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/light/CameraController$2;->this$0:Lorg/light/CameraController;

    iput-object p2, p0, Lorg/light/CameraController$2;->val$filaPositionCallback:Lorg/light/CameraController$FilaPositionCallback;

    invoke-direct {p0}, Lorg/light/listener/AIDLFilaPositionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResult([F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/CameraController$2;->val$filaPositionCallback:Lorg/light/CameraController$FilaPositionCallback;

    invoke-interface {v0, p1}, Lorg/light/CameraController$FilaPositionCallback;->onGetResult([F)V

    return-void
.end method
