.class Lorg/light/CameraController$1;
.super Lorg/light/listener/AIDLHitTestFilaCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/CameraController;->getHitTestFilamentAssets([FLorg/light/CameraController$HitTestFilaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/CameraController;

.field final synthetic val$hitTestFilaCallback:Lorg/light/CameraController$HitTestFilaCallback;


# direct methods
.method constructor <init>(Lorg/light/CameraController;Lorg/light/CameraController$HitTestFilaCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/light/CameraController$1;->this$0:Lorg/light/CameraController;

    iput-object p2, p0, Lorg/light/CameraController$1;->val$hitTestFilaCallback:Lorg/light/CameraController$HitTestFilaCallback;

    invoke-direct {p0}, Lorg/light/listener/AIDLHitTestFilaCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetResult([J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/CameraController$1;->val$hitTestFilaCallback:Lorg/light/CameraController$HitTestFilaCallback;

    invoke-interface {v0, p1}, Lorg/light/CameraController$HitTestFilaCallback;->onGetResult([J)V

    return-void
.end method
