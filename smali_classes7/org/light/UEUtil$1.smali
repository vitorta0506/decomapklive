.class final Lorg/light/UEUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/epicgames/ue4/GameActivityThunk$CMShowEngineInitFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/UEUtil;->_setOnUE4InitFinishListener(Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;


# direct methods
.method constructor <init>(Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/UEUtil$1;->val$listener:Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEngineInitFinish(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/light/UEUtil;->access$002(Z)Z

    .line 2
    iget-object p1, p0, Lorg/light/UEUtil$1;->val$listener:Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
