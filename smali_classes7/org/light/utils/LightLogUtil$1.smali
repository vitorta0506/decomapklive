.class final Lorg/light/utils/LightLogUtil$1;
.super Lorg/light/listener/AIDLILightLogger$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/utils/LightLogUtil;->setLightLogger(Lorg/light/utils/ILightLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$logger:Lorg/light/utils/ILightLogger;


# direct methods
.method constructor <init>(Lorg/light/utils/ILightLogger;)V
    .locals 0

    iput-object p1, p0, Lorg/light/utils/LightLogUtil$1;->val$logger:Lorg/light/utils/ILightLogger;

    invoke-direct {p0}, Lorg/light/listener/AIDLILightLogger$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/utils/LightLogUtil$1;->val$logger:Lorg/light/utils/ILightLogger;

    invoke-interface {v0, p1, p2}, Lorg/light/utils/ILightLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/utils/LightLogUtil$1;->val$logger:Lorg/light/utils/ILightLogger;

    invoke-interface {v0, p1, p2}, Lorg/light/utils/ILightLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/utils/LightLogUtil$1;->val$logger:Lorg/light/utils/ILightLogger;

    invoke-interface {v0, p1, p2}, Lorg/light/utils/ILightLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/utils/LightLogUtil$1;->val$logger:Lorg/light/utils/ILightLogger;

    invoke-interface {v0, p1, p2, p3}, Lorg/light/utils/ILightLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/utils/LightLogUtil$1;->val$logger:Lorg/light/utils/ILightLogger;

    invoke-interface {v0, p1, p2}, Lorg/light/utils/ILightLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/utils/LightLogUtil$1;->val$logger:Lorg/light/utils/ILightLogger;

    invoke-interface {v0, p1, p2}, Lorg/light/utils/ILightLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
