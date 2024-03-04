.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

.field public final synthetic b:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/h;->a:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/h;->b:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/h;->a:Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/h;->b:Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1;->a(Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;)V

    return-void
.end method
