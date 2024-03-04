.class Lorg/light/Config$8;
.super Lorg/light/listener/AIDLOnDelegateAgentRequestListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config;->setDelegateAgentRequestListener(Lorg/light/listener/OnDelegateAgentRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/Config;

.field final synthetic val$delegateAgentRequestListener:Lorg/light/listener/OnDelegateAgentRequestListener;

.field final synthetic val$hd:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lorg/light/Config;Landroid/os/Handler;Lorg/light/listener/OnDelegateAgentRequestListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$8;->this$0:Lorg/light/Config;

    iput-object p2, p0, Lorg/light/Config$8;->val$hd:Landroid/os/Handler;

    iput-object p3, p0, Lorg/light/Config$8;->val$delegateAgentRequestListener:Lorg/light/listener/OnDelegateAgentRequestListener;

    invoke-direct {p0}, Lorg/light/listener/AIDLOnDelegateAgentRequestListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDelegateAgentRequest(Lorg/light/bean/LightDelegateAgentRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/Config$8;->val$hd:Landroid/os/Handler;

    new-instance v1, Lorg/light/Config$8$1;

    invoke-direct {v1, p0, p1}, Lorg/light/Config$8$1;-><init>(Lorg/light/Config$8;Lorg/light/bean/LightDelegateAgentRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnDelegateAgentRequest:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
