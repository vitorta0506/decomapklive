.class public final Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001+B\u0007\u00a2\u0006\u0004\u0008)\u0010*J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0003J\u0006\u0010\u000b\u001a\u00020\u0005J\u001a\u0010\u0010\u001a\u00020\u00052\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000eR$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001cR \u0010!\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010$\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010&\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0018\u0010(\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010\'\u00a8\u0006,"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;",
        "",
        "Ljava/util/concurrent/ArrayBlockingQueue;",
        "Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;",
        "q",
        "",
        "doEncode",
        "Lcom/google/cloud/speech/v1/h;",
        "initSpeech",
        "trtcAudioFrame",
        "record",
        "start",
        "",
        "cancel",
        "",
        "text",
        "stop",
        "googleToken",
        "setGoogleToken",
        "Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;",
        "callback",
        "Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;",
        "getCallback",
        "()Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;",
        "setCallback",
        "(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;)V",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "first",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljava/util/concurrent/ExecutorService;",
        "executor",
        "Ljava/util/concurrent/ExecutorService;",
        "encoding",
        "queue",
        "Ljava/util/concurrent/ArrayBlockingQueue;",
        "Ljava/lang/Runnable;",
        "autoStopRunnable",
        "Ljava/lang/Runnable;",
        "lastString",
        "Ljava/lang/String;",
        "token",
        "<init>",
        "()V",
        "Callback",
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
.field private autoStopRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private callback:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private encoding:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/ExecutorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private first:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private queue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->first:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x3c

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->executor:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->encoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/utils/e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/f2fmatch/utils/e;-><init>(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)V

    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->autoStopRunnable:Ljava/lang/Runnable;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->lastString:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->record$lambda-2(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;Ljava/util/concurrent/ArrayBlockingQueue;)V

    return-void
.end method

.method public static final synthetic access$getLastString$p(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->lastString:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setLastString$p(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->lastString:Ljava/lang/String;

    return-void
.end method

.method private static final autoStopRunnable$lambda-0(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->lastString:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->stop(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->autoStopRunnable$lambda-0(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)Lcom/google/auth/Credentials;
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->initSpeech$lambda-7(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)Lcom/google/auth/Credentials;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->stop$lambda-5$lambda-4(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;Ljava/lang/String;)V

    return-void
.end method

.method private final doEncode(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->initSpeech()Lcom/google/cloud/speech/v1/h;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/h;->c()Lcom/google/api/gax/rpc/h;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;Lcom/google/cloud/speech/v1/h;)V

    invoke-virtual {v1, v2}, Lcom/google/api/gax/rpc/h;->a(Lcom/google/api/gax/rpc/d;)Lcom/google/api/gax/rpc/d;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->encoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;

    if-nez v5, :cond_1

    const-wide/16 v5, 0x5

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v5, v5, Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;->data:[B

    if-nez v5, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->newBuilder()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object v6

    invoke-static {v5}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->j0(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    move-result-object v5

    if-eqz v4, :cond_4

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "zh"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 13
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cn"

    .line 14
    invoke-static {v8, v7, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 15
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    .line 16
    :cond_3
    invoke-static {}, Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;->newBuilder()Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;

    move-result-object v4

    .line 17
    invoke-static {}, Lcom/google/cloud/speech/v1/RecognitionConfig;->newBuilder()Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object v7

    .line 18
    invoke-virtual {v7, v6}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->B0(Ljava/lang/String;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object v6

    .line 19
    invoke-virtual {v6, v3}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->s0(Z)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object v6

    .line 20
    sget-object v7, Lcom/google/cloud/speech/v1/RecognitionConfig$AudioEncoding;->LINEAR16:Lcom/google/cloud/speech/v1/RecognitionConfig$AudioEncoding;

    invoke-virtual {v6, v7}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->x0(Lcom/google/cloud/speech/v1/RecognitionConfig$AudioEncoding;)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object v6

    const/16 v7, 0x3e80

    .line 21
    invoke-virtual {v6, v7}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->I0(I)Lcom/google/cloud/speech/v1/RecognitionConfig$b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/cloud/speech/v1/RecognitionConfig$b;->X()Lcom/google/cloud/speech/v1/RecognitionConfig;

    move-result-object v6

    .line 22
    invoke-virtual {v4, v6}, Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;->j0(Lcom/google/cloud/speech/v1/RecognitionConfig;)Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;

    move-result-object v4

    .line 23
    invoke-virtual {v4, v3}, Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;->l0(Z)Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;

    move-result-object v4

    .line 24
    invoke-virtual {v4, v3}, Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;->m0(Z)Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/cloud/speech/v1/StreamingRecognitionConfig$b;->X()Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;

    move-result-object v4

    .line 25
    invoke-virtual {v5, v4}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->l0(Lcom/google/cloud/speech/v1/StreamingRecognitionConfig;)Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;

    const/4 v4, 0x0

    .line 26
    :cond_4
    invoke-virtual {v5}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest$c;->X()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/google/api/gax/rpc/d;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 27
    :cond_5
    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/h;->shutdown()V

    return-void
.end method

.method private final initSpeech()Lcom/google/cloud/speech/v1/h;
    .locals 2

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->lastString:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/cloud/speech/v1/n;->m()Lcom/google/cloud/speech/v1/n$a;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/utils/g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/component/f2fmatch/utils/g;-><init>(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)V

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/k$a;->n(Ll5/f;)Lcom/google/api/gax/rpc/k$a;

    move-result-object v0

    check-cast v0, Lcom/google/cloud/speech/v1/n$a;

    .line 4
    invoke-virtual {v0}, Lcom/google/cloud/speech/v1/n$a;->p()Lcom/google/cloud/speech/v1/n;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/cloud/speech/v1/h;->a(Lcom/google/cloud/speech/v1/n;)Lcom/google/cloud/speech/v1/h;

    move-result-object v0

    const-string v1, "create(\n            Spee\u2026                .build())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final initSpeech$lambda-7(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)Lcom/google/auth/Credentials;
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/AccessToken;

    .line 2
    iget-object p0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->token:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v4, 0x5265c00

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 3
    invoke-direct {v0, p0, v1}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 4
    invoke-static {v0}, Lcom/google/auth/oauth2/GoogleCredentials;->create(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object p0

    return-object p0
.end method

.method private static final record$lambda-2(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$q"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->doEncode(Ljava/util/concurrent/ArrayBlockingQueue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p0

    const-string p1, "voice_to_text_error"

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic stop$default(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, ""

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->stop(ZLjava/lang/String;)V

    return-void
.end method

.method private static final stop$lambda-5$lambda-4(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;->onEncodeCallback(Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;)V

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->callback:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;

    return-object v0
.end method

.method public final record(Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;)V
    .locals 2
    .param p1    # Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "trtcAudioFrame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->encoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 4
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->first:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/utils/f;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/f;-><init>(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;Ljava/util/concurrent/ArrayBlockingQueue;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    return-void
.end method

.method public final setCallback(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->callback:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;

    return-void
.end method

.method public final setGoogleToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->token:Ljava/lang/String;

    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->autoStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3a98

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;Ljava/lang/Long;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->encoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->first:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final stop(ZLjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->autoStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->encoding:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->first:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->callback:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;

    if-eqz p1, :cond_1

    .line 8
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/utils/d;

    invoke-direct {v1, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/utils/d;-><init>(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-static {v1, v0, p1, v0}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread$default(Ljava/lang/Runnable;Ljava/lang/Long;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
