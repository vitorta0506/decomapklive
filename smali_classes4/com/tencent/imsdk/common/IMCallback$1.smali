.class Lcom/tencent/imsdk/common/IMCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/common/IMCallback;->success(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/common/IMCallback;

.field final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/common/IMCallback;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/common/IMCallback$1;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iput-object p2, p0, Lcom/tencent/imsdk/common/IMCallback$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMCallback$1;->this$0:Lcom/tencent/imsdk/common/IMCallback;

    iget-object v1, v0, Lcom/tencent/imsdk/common/IMCallback;->callback:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onSuccess()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/tencent/imsdk/common/IMCallback;->valueCallback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/imsdk/common/IMCallback$1;->val$data:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v0, Lcom/tencent/imsdk/common/IMCallback;->completeCallback:Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lcom/tencent/imsdk/common/IMCallback$1;->val$data:Ljava/lang/Object;

    const-string v3, ""

    invoke-interface {v0, v1, v3, v2}, Lcom/tencent/imsdk/v2/V2TIMCompleteCallback;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
