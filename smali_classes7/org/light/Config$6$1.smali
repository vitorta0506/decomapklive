.class Lorg/light/Config$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/Config$6;->OnLoadAssetError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/light/Config$6;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lorg/light/Config$6;I)V
    .locals 0

    iput-object p1, p0, Lorg/light/Config$6$1;->this$1:Lorg/light/Config$6;

    iput p2, p0, Lorg/light/Config$6$1;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/Config$6$1;->this$1:Lorg/light/Config$6;

    iget-object v0, v0, Lorg/light/Config$6;->val$loadAssetListener:Lorg/light/listener/OnLoadAssetListener;

    iget v1, p0, Lorg/light/Config$6$1;->val$errorCode:I

    invoke-interface {v0, v1}, Lorg/light/listener/OnLoadAssetListener;->OnLoadAssetError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnLoadAssetError:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Config"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
