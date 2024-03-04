.class final Lorg/light/UEUtil$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/zplan/engine/ZPlanBindServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/UEUtil;->_initUEInterface(Landroid/content/Context;Lorg/light/listener/AIDLOnBindServiceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lorg/light/listener/AIDLOnBindServiceListener;


# direct methods
.method constructor <init>(Lorg/light/listener/AIDLOnBindServiceListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/UEUtil$5;->val$listener:Lorg/light/listener/AIDLOnBindServiceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindServiceStatus(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/UEUtil$5;->val$listener:Lorg/light/listener/AIDLOnBindServiceListener;

    invoke-interface {v0, p1}, Lorg/light/listener/AIDLOnBindServiceListener;->onBindServiceStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UEUtil"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
