package com.guochao.faceshow.component.f2fmatch.utils;

import com.google.cloud.speech.v1.SpeechRecognitionAlternative;
import com.google.cloud.speech.v1.StreamingRecognitionResult;
import com.google.cloud.speech.v1.StreamingRecognizeResponse;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.component.f2fmatch.model.F2fSpeechToTextResultModel;
import com.guochao.faceshow.component.f2fmatch.utils.SpeechToTextUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import com.tencent.bugly.crashreport.CrashReport;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016¨\u0006\n"}, d2 = {"com/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$doEncode$requestStream$1", "Lcom/google/api/gax/rpc/d;", "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;", "value", "", "onNext", "", "t", "onError", "onCompleted", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class SpeechToTextUtils$doEncode$requestStream$1 implements com.google.api.gax.rpc.d<StreamingRecognizeResponse> {
    final /* synthetic */ com.google.cloud.speech.v1.h $client;
    final /* synthetic */ SpeechToTextUtils this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SpeechToTextUtils$doEncode$requestStream$1(SpeechToTextUtils speechToTextUtils, com.google.cloud.speech.v1.h hVar) {
        this.this$0 = speechToTextUtils;
        this.$client = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onNext$lambda-5$lambda-4  reason: not valid java name */
    public static final void m650onNext$lambda5$lambda4(StreamingRecognizeResponse this_apply, SpeechToTextUtils this$0) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<StreamingRecognitionResult> resultsList = this_apply.getResultsList();
        Intrinsics.checkNotNullExpressionValue(resultsList, "resultsList");
        for (StreamingRecognitionResult streamingRecognitionResult : resultsList) {
            boolean isFinal = streamingRecognitionResult.getIsFinal();
            List<SpeechRecognitionAlternative> alternativesList = streamingRecognitionResult.getAlternativesList();
            Intrinsics.checkNotNullExpressionValue(alternativesList, "it.alternativesList");
            for (SpeechRecognitionAlternative speechRecognitionAlternative : alternativesList) {
                SpeechToTextUtils.Callback callback = this$0.getCallback();
                if (callback != null) {
                    String it = speechRecognitionAlternative.getTranscript();
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    this$0.lastString = it;
                    Intrinsics.checkNotNullExpressionValue(it, "it.transcript.also { lastString = it }");
                    callback.onEncodeCallback(new F2fSpeechToTextResultModel(it, isFinal, false, 4, null));
                }
            }
            if (isFinal) {
                EventTrackingUtils.getInstance().track(EventTrackingUtils.SPEECH_TO_TEXT_RESULT);
                SpeechToTextUtils.stop$default(this$0, false, null, 2, null);
            }
        }
    }

    @Override // com.google.api.gax.rpc.d
    public void onCompleted() {
        LogUtils.i(SpeechToTextUtilsKt.TAG, "onCompleted");
    }

    @Override // com.google.api.gax.rpc.d
    public void onError(@Nullable Throwable th2) {
        String str;
        String str2;
        if (this.$client.isShutdown()) {
            return;
        }
        CrashReport.postCatchedException(th2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onError");
        sb2.append(th2 != null ? th2.getMessage() : null);
        sb2.append(" lastString ");
        str = this.this$0.lastString;
        sb2.append(str);
        LogUtils.i(SpeechToTextUtilsKt.TAG, sb2.toString());
        SpeechToTextUtils speechToTextUtils = this.this$0;
        str2 = speechToTextUtils.lastString;
        speechToTextUtils.stop(true, str2);
    }

    @Override // com.google.api.gax.rpc.d
    public void onNext(@Nullable final StreamingRecognizeResponse streamingRecognizeResponse) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onNext");
        sb2.append(streamingRecognizeResponse != null ? streamingRecognizeResponse.toString() : null);
        LogUtils.i(SpeechToTextUtilsKt.TAG, sb2.toString());
        if (streamingRecognizeResponse != null) {
            final SpeechToTextUtils speechToTextUtils = this.this$0;
            if (streamingRecognizeResponse.getResultsList() != null) {
                List<StreamingRecognitionResult> resultsList = streamingRecognizeResponse.getResultsList();
                Intrinsics.checkNotNullExpressionValue(resultsList, "this.resultsList");
                if (!resultsList.isEmpty()) {
                    HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.utils.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            SpeechToTextUtils$doEncode$requestStream$1.m650onNext$lambda5$lambda4(StreamingRecognizeResponse.this, speechToTextUtils);
                        }
                    });
                }
            }
        }
    }
}
