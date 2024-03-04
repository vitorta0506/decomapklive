.class Lorg/light/Config$6;
.super Lorg/light/listener/AIDLOnLoadAssetListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config;->setLoadAssetListener(Lorg/light/listener/OnLoadAssetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/Config;

.field final synthetic val$hd:Landroid/os/Handler;

.field final synthetic val$loadAssetListener:Lorg/light/listener/OnLoadAssetListener;


# direct methods
.method constructor <init>(Lorg/light/Config;Landroid/os/Handler;Lorg/light/listener/OnLoadAssetListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$6;->this$0:Lorg/light/Config;

    iput-object p2, p0, Lorg/light/Config$6;->val$hd:Landroid/os/Handler;

    iput-object p3, p0, Lorg/light/Config$6;->val$loadAssetListener:Lorg/light/listener/OnLoadAssetListener;

    invoke-direct {p0}, Lorg/light/listener/AIDLOnLoadAssetListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAssetDurationChange(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/Config$6;->val$hd:Landroid/os/Handler;

    new-instance v1, Lorg/light/Config$6$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/light/Config$6$3;-><init>(Lorg/light/Config$6;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public OnAssetProcessing(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/Config$6;->val$hd:Landroid/os/Handler;

    new-instance v1, Lorg/light/Config$6$2;

    invoke-direct {v1, p0, p1}, Lorg/light/Config$6$2;-><init>(Lorg/light/Config$6;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public OnLoadAssetError(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/Config$6;->val$hd:Landroid/os/Handler;

    new-instance v1, Lorg/light/Config$6$1;

    invoke-direct {v1, p0, p1}, Lorg/light/Config$6$1;-><init>(Lorg/light/Config$6;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
