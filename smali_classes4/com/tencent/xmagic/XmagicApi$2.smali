.class Lcom/tencent/xmagic/XmagicApi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/listener/OnAIDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/xmagic/XmagicApi;->setAIDataListener(Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/xmagic/XmagicApi;

.field final synthetic val$aiDataListener:Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;


# direct methods
.method constructor <init>(Lcom/tencent/xmagic/XmagicApi;Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/XmagicApi$2;->this$0:Lcom/tencent/xmagic/XmagicApi;

    iput-object p2, p0, Lcom/tencent/xmagic/XmagicApi$2;->val$aiDataListener:Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBodyDataUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/light/bean/BodyData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$2;->val$aiDataListener:Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;->onBodyDataUpdated(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFaceDataUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/light/bean/FaceData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$2;->val$aiDataListener:Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;->onFaceDataUpdated(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onHandDataUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/light/bean/HandData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi$2;->val$aiDataListener:Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;->onHandDataUpdated(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
