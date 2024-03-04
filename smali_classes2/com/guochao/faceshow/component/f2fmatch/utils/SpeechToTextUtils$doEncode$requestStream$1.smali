.class public final Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->doEncode(Ljava/util/concurrent/ArrayBlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/api/gax/rpc/d<",
        "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1",
        "Lcom/google/api/gax/rpc/d;",
        "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
        "value",
        "",
        "onNext",
        "",
        "t",
        "onError",
        "onCompleted",
        "component_f2f_match_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $client:Lcom/google/cloud/speech/v1/h;

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;Lcom/google/cloud/speech/v1/h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1;->$client:Lcom/google/cloud/speech/v1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1;->onNext$lambda-5$lambda-4(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)V

    return-void
.end method

.method private static final onNext$lambda-5$lambda-4(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)V
    .locals 10

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getResultsList()Ljava/util/List;

    move-result-object p0

    const-string v0, "resultsList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/speech/v1/StreamingRecognitionResult;

    .line 3
    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/StreamingRecognitionResult;->getIsFinal()Z

    move-result v7

    .line 4
    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/StreamingRecognitionResult;->getAlternativesList()Ljava/util/List;

    move-result-object v0

    const-string v1, "it.alternativesList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/cloud/speech/v1/SpeechRecognitionAlternative;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->getCallback()Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/google/cloud/speech/v1/SpeechRecognitionAlternative;->getTranscript()Ljava/lang/String;

    move-result-object v2

    const-string v1, "it"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->access$setLastString$p(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;Ljava/lang/String;)V

    const-string v1, "it.transcript.also { lastString = it }"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 8
    new-instance v9, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;

    move-object v1, v9

    move v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;-><init>(Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    invoke-interface {v8, v9}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;->onEncodeCallback(Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_0

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "voice_to_text_result"

    .line 11
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 12
    invoke-static {p1, v0, v2, v1, v2}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->stop$default(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    const-string v0, "SpeechToTextUtils"

    const-string v1, "onCompleted"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1;->$client:Lcom/google/cloud/speech/v1/h;

    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/h;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " lastString "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    invoke-static {p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->access$getLastString$p(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpeechToTextUtils"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->access$getLastString$p(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->stop(ZLjava/lang/String;)V

    return-void
.end method

.method public onNext(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;)V
    .locals 3
    .param p1    # Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/a;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechToTextUtils"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    .line 4
    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getResultsList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getResultsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "this.resultsList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/utils/h;

    invoke-direct {v2, p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/h;-><init>(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1;->onNext(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;)V

    return-void
.end method
