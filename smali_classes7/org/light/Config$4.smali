.class Lorg/light/Config$4;
.super Lorg/light/listener/AIDLOnWatermarkDataListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config;->setWatermarkDataListener(Ljava/lang/String;Lorg/light/listener/OnWatermarkDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/Config;

.field final synthetic val$listener:Lorg/light/listener/OnWatermarkDataListener;


# direct methods
.method constructor <init>(Lorg/light/Config;Lorg/light/listener/OnWatermarkDataListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$4;->this$0:Lorg/light/Config;

    iput-object p2, p0, Lorg/light/Config$4;->val$listener:Lorg/light/listener/OnWatermarkDataListener;

    invoke-direct {p0}, Lorg/light/listener/AIDLOnWatermarkDataListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/Config$4;->val$listener:Lorg/light/listener/OnWatermarkDataListener;

    invoke-interface {v0, p1}, Lorg/light/listener/OnWatermarkDataListener;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnWatermarkDataListener.getData:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
