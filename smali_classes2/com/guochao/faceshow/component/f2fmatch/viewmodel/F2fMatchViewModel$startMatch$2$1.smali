.class final Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $c:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

.field final synthetic $matchInfo:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $retry:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lkotlin/jvm/functions/Function1;Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;",
            "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;->$c:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;->$retry:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;->$matchInfo:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;->$c:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getMatchGender()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;->$retry:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->access$startMatch(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;->$retry:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;->$matchInfo:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getStatus()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
