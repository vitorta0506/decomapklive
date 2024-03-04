.class Lorg/light/Config$3;
.super Lorg/light/listener/AIDLOnClickWatermarkListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config;->setOnClickWatermarkListener(Lorg/light/listener/OnClickWatermarkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/Config;

.field final synthetic val$listener:Lorg/light/listener/OnClickWatermarkListener;


# direct methods
.method constructor <init>(Lorg/light/Config;Lorg/light/listener/OnClickWatermarkListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$3;->this$0:Lorg/light/Config;

    iput-object p2, p0, Lorg/light/Config$3;->val$listener:Lorg/light/listener/OnClickWatermarkListener;

    invoke-direct {p0}, Lorg/light/listener/AIDLOnClickWatermarkListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickWatermark()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/Config$3;->val$listener:Lorg/light/listener/OnClickWatermarkListener;

    invoke-interface {v0}, Lorg/light/listener/OnClickWatermarkListener;->onClickWatermark()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickWatermark:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Config"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
