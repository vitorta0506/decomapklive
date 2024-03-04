.class public final Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$videoProcess$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->videoProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$videoProcess$2$1",
        "Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;",
        "onGenerateComplete",
        "",
        "p0",
        "Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;",
        "onGenerateProgress",
        "",
        "component_guild_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $txVideoEditer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/tencent/ugc/TXVideoEditer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/tencent/ugc/TXVideoEditer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$videoProcess$2$1;->$it:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$videoProcess$2$1;->$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$videoProcess$2$1;->$txVideoEditer:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenerateComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V
    .locals 2
    .param p1    # Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p1, "ApplyContractViewModel"

    const-string v0, "onGenerateComplete"

    .line 1
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$videoProcess$2$1;->$it:Lkotlinx/coroutines/CancellableContinuation;

    iget-object v0, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$videoProcess$2$1;->$path:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel$videoProcess$2$1;->$txVideoEditer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p1}, Lcom/tencent/ugc/TXVideoEditer;->release()V

    return-void
.end method

.method public onGenerateProgress(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApplyContractViewModel"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
