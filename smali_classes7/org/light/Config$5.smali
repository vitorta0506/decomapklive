.class Lorg/light/Config$5;
.super Lorg/light/listener/AIDLOnTipsStatusListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config;->setTipsStatusListener(Lorg/light/listener/OnTipsStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/Config;

.field final synthetic val$tipsListener:Lorg/light/listener/OnTipsStatusListener;


# direct methods
.method constructor <init>(Lorg/light/Config;Lorg/light/listener/OnTipsStatusListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$5;->this$0:Lorg/light/Config;

    iput-object p2, p0, Lorg/light/Config$5;->val$tipsListener:Lorg/light/listener/OnTipsStatusListener;

    invoke-direct {p0}, Lorg/light/listener/AIDLOnTipsStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public tipsNeedHide(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/Config$5;->val$tipsListener:Lorg/light/listener/OnTipsStatusListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/light/listener/OnTipsStatusListener;->tipsNeedHide(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tipsNeedHide:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public tipsNeedShow(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/Config$5;->val$tipsListener:Lorg/light/listener/OnTipsStatusListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/light/listener/OnTipsStatusListener;->tipsNeedShow(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "tipsNeedShow:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
