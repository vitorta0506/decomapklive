package com.guochao.faceshow.component.f2fmatch.utils;

import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.auth.Credentials;
import com.google.auth.oauth2.AccessToken;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.speech.v1.RecognitionConfig;
import com.google.cloud.speech.v1.StreamingRecognitionConfig;
import com.google.cloud.speech.v1.StreamingRecognizeRequest;
import com.google.cloud.speech.v1.n;
import com.google.protobuf.ByteString;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.component.f2fmatch.model.F2fSpeechToTextResultModel;
import com.guochao.faceshow.component.f2fmatch.utils.SpeechToTextUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSetting;
import com.tencent.trtc.TRTCCloudDef;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001+B\u0007¢\u0006\u0004\b)\u0010*J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0003J\u0006\u0010\u000b\u001a\u00020\u0005J\u001a\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0012\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u000eR$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001cR \u0010!\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010$\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010&\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010(\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010'¨\u0006,"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;", "", "Ljava/util/concurrent/ArrayBlockingQueue;", "Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;", "q", "", "doEncode", "Lcom/google/cloud/speech/v1/h;", "initSpeech", "trtcAudioFrame", "record", "start", "", "cancel", "", ViewHierarchyConstants.TEXT_KEY, "stop", "googleToken", "setGoogleToken", "Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;", "callback", "Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;", "getCallback", "()Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;", "setCallback", "(Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;)V", "Ljava/util/concurrent/atomic/AtomicBoolean;", "first", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/ExecutorService;", "executor", "Ljava/util/concurrent/ExecutorService;", "encoding", "queue", "Ljava/util/concurrent/ArrayBlockingQueue;", "Ljava/lang/Runnable;", "autoStopRunnable", "Ljava/lang/Runnable;", "lastString", "Ljava/lang/String;", JThirdPlatFormInterface.KEY_TOKEN, "<init>", "()V", "Callback", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class SpeechToTextUtils {
    @Nullable
    private Callback callback;
    @Nullable
    private ArrayBlockingQueue<TRTCCloudDef.TRTCAudioFrame> queue;
    @Nullable
    private String token;
    @NotNull
    private AtomicBoolean first = new AtomicBoolean(true);
    @NotNull
    private ExecutorService executor = new ThreadPoolExecutor(1, 1, 60, TimeUnit.SECONDS, new LinkedBlockingDeque());
    @NotNull
    private AtomicBoolean encoding = new AtomicBoolean(false);
    @NotNull
    private Runnable autoStopRunnable = new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.utils.e
        @Override // java.lang.Runnable
        public final void run() {
            SpeechToTextUtils.m646autoStopRunnable$lambda0(SpeechToTextUtils.this);
        }
    };
    @NotNull
    private String lastString = "";

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils$Callback;", "", "onEncodeCallback", "", "result", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public interface Callback {
        void onEncodeCallback(@NotNull F2fSpeechToTextResultModel f2fSpeechToTextResultModel);
    }

    /* renamed from: autoStopRunnable$lambda-0 */
    public static final void m646autoStopRunnable$lambda0(SpeechToTextUtils this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.stop(true, this$0.lastString);
    }

    private final void doEncode(ArrayBlockingQueue<TRTCCloudDef.TRTCAudioFrame> arrayBlockingQueue) {
        boolean equals;
        if (this.token == null) {
            return;
        }
        com.google.cloud.speech.v1.h initSpeech = initSpeech();
        com.google.api.gax.rpc.d<StreamingRecognizeRequest> a10 = initSpeech.c().a(new SpeechToTextUtils$doEncode$requestStream$1(this, initSpeech));
        AtomicBoolean atomicBoolean = this.encoding;
        boolean z10 = true;
        while (atomicBoolean.get()) {
            TRTCCloudDef.TRTCAudioFrame poll = arrayBlockingQueue.poll();
            if (poll == null) {
                Thread.sleep(5L);
            } else {
                byte[] bArr = poll.data;
                if (bArr != null) {
                    StreamingRecognizeRequest.c j02 = StreamingRecognizeRequest.newBuilder().j0(ByteString.copyFrom(bArr));
                    if (z10) {
                        Locale locale = Locale.getDefault();
                        String language = locale.getLanguage();
                        if (Intrinsics.areEqual(locale.getLanguage(), Language.SIMPLE_CHINESE)) {
                            equals = StringsKt__StringsJVMKt.equals(AdvanceSetting.CLEAR_NOTIFICATION, locale.getCountry(), true);
                            if (!equals) {
                                language = locale.toLanguageTag();
                            }
                        }
                        j02.l0(StreamingRecognitionConfig.newBuilder().j0(RecognitionConfig.newBuilder().B0(language).s0(true).x0(RecognitionConfig.AudioEncoding.LINEAR16).I0(16000).build()).l0(true).m0(true).build());
                        z10 = false;
                    }
                    a10.onNext(j02.build());
                }
            }
        }
        initSpeech.shutdown();
    }

    private final com.google.cloud.speech.v1.h initSpeech() {
        this.lastString = "";
        com.google.cloud.speech.v1.h a10 = com.google.cloud.speech.v1.h.a(n.m().n(new l5.f() { // from class: com.guochao.faceshow.component.f2fmatch.utils.g
            @Override // l5.f
            public final Credentials a() {
                Credentials m647initSpeech$lambda7;
                m647initSpeech$lambda7 = SpeechToTextUtils.m647initSpeech$lambda7(SpeechToTextUtils.this);
                return m647initSpeech$lambda7;
            }
        }).p());
        Intrinsics.checkNotNullExpressionValue(a10, "create(\n            Spee…                .build())");
        return a10;
    }

    /* renamed from: initSpeech$lambda-7 */
    public static final Credentials m647initSpeech$lambda7(SpeechToTextUtils this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        return GoogleCredentials.create(new AccessToken(this$0.token, new Date(System.currentTimeMillis() + 86400000)));
    }

    /* renamed from: record$lambda-2 */
    public static final void m648record$lambda2(SpeechToTextUtils this$0, ArrayBlockingQueue q10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(q10, "$q");
        try {
            this$0.doEncode(q10);
        } catch (Exception unused) {
            EventTrackingUtils.getInstance().track(EventTrackingUtils.SPEECH_TO_TEXT_ERROR);
        }
    }

    public static /* synthetic */ void stop$default(SpeechToTextUtils speechToTextUtils, boolean z10, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = false;
        }
        if ((i9 & 2) != 0) {
            str = "";
        }
        speechToTextUtils.stop(z10, str);
    }

    /* renamed from: stop$lambda-5$lambda-4 */
    public static final void m649stop$lambda5$lambda4(Callback this_apply, String text) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(text, "$text");
        this_apply.onEncodeCallback(new F2fSpeechToTextResultModel(text, true, true));
    }

    @Nullable
    public final Callback getCallback() {
        return this.callback;
    }

    public final void record(@NotNull TRTCCloudDef.TRTCAudioFrame trtcAudioFrame) {
        Intrinsics.checkNotNullParameter(trtcAudioFrame, "trtcAudioFrame");
        if (this.encoding.get()) {
            final ArrayBlockingQueue<TRTCCloudDef.TRTCAudioFrame> arrayBlockingQueue = this.queue;
            if (arrayBlockingQueue == null) {
                arrayBlockingQueue = new ArrayBlockingQueue<>(10);
                this.queue = arrayBlockingQueue;
            }
            arrayBlockingQueue.put(trtcAudioFrame);
            if (this.first.getAndSet(false)) {
                this.executor.submit(new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.utils.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        SpeechToTextUtils.m648record$lambda2(SpeechToTextUtils.this, arrayBlockingQueue);
                    }
                });
            }
        }
    }

    public final void setCallback(@Nullable Callback callback) {
        this.callback = callback;
    }

    public final void setGoogleToken(@Nullable String str) {
        this.token = str;
    }

    public final void start() {
        HandlerGetter.runOnUIThread(this.autoStopRunnable, 15000L);
        this.encoding.set(true);
        this.first.set(true);
    }

    public final void stop(boolean z10, @NotNull final String text) {
        final Callback callback;
        Intrinsics.checkNotNullParameter(text, "text");
        HandlerGetter.getMainHandler().removeCallbacks(this.autoStopRunnable);
        this.encoding.set(false);
        this.first.set(false);
        ArrayBlockingQueue<TRTCCloudDef.TRTCAudioFrame> arrayBlockingQueue = this.queue;
        if (arrayBlockingQueue != null) {
            arrayBlockingQueue.clear();
        }
        this.queue = null;
        if (!z10 || (callback = this.callback) == null) {
            return;
        }
        HandlerGetter.runOnUIThread$default(new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.utils.d
            @Override // java.lang.Runnable
            public final void run() {
                SpeechToTextUtils.m649stop$lambda5$lambda4(SpeechToTextUtils.Callback.this, text);
            }
        }, null, 2, null);
    }
}
