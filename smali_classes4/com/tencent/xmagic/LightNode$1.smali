.class Lcom/tencent/xmagic/LightNode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/listener/OnLoadAssetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/xmagic/LightNode;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/xmagic/LightNode;


# direct methods
.method constructor <init>(Lcom/tencent/xmagic/LightNode;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/LightNode$1;->this$0:Lcom/tencent/xmagic/LightNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAssetDurationChange(J)V
    .locals 0

    return-void
.end method

.method public OnAssetProcessing(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public OnLoadAssetError(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode$1;->this$0:Lcom/tencent/xmagic/LightNode;

    invoke-static {v0}, Lcom/tencent/xmagic/LightNode;->access$000(Lcom/tencent/xmagic/LightNode;)Lcom/tencent/xmagic/LightNode$OnAssetsLoadErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode$1;->this$0:Lcom/tencent/xmagic/LightNode;

    invoke-static {v0}, Lcom/tencent/xmagic/LightNode;->access$000(Lcom/tencent/xmagic/LightNode;)Lcom/tencent/xmagic/LightNode$OnAssetsLoadErrorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/xmagic/LightNode$OnAssetsLoadErrorListener;->onAssetsLoadError(I)V

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load assets error, code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightNode"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
