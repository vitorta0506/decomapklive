package com.guochao.faceshow.component.f2fmatch.viewmodel;

import android.graphics.BitmapFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.guochao.faceshow.component.f2fmatch.model.F2fSpeechToTextResultModel;
import com.guochao.faceshow.component.f2fmatch.utils.SpeechToTextUtils;
import com.guochao.faceshow.component.f2fmatch.utils.TrtcBeautyProcessor;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.Contants;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.trtc.TRTCCloud;
import com.tencent.trtc.TRTCCloudDef;
import com.tencent.trtc.TRTCCloudListener;
import java.io.InputStream;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003JG\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052!\u00104\u001a\u001d\u0012\u0013\u0012\u00110\u0016¢\u0006\f\b5\u0012\b\b6\u0012\u0004\b\b(7\u0012\u0004\u0012\u00020\u00060\u0015J\u0006\u00108\u001a\u00020\u0006J\u0006\u00109\u001a\u00020\u0006J\u000e\u0010:\u001a\u00020\u00062\u0006\u0010;\u001a\u00020\u0018J\u0010\u0010<\u001a\u00020\u00062\b\u0010=\u001a\u0004\u0018\u00010\u0016J\b\u0010>\u001a\u00020\u0006H\u0002J\u0010\u0010?\u001a\u00020\u00062\b\u0010@\u001a\u0004\u0018\u00010AJ\u001c\u0010B\u001a\u00020\u00062\u0014\u00103\u001a\u0010\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0015J\u0006\u0010D\u001a\u00020\u0006J\u0010\u0010E\u001a\u00020\u00062\b\b\u0002\u0010F\u001a\u00020\u0018R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000e@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR$\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0018@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010$\u001a\u00020%¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u001b\u0010(\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b*\u0010+¨\u0006G"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "enterRoomCallback", "Lkotlin/Function0;", "", "value", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;", "f2fMatchCallback", "getF2fMatchCallback", "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;", "setF2fMatchCallback", "(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V", "", "matchingState", "getMatchingState", "()I", "setMatchingState", "(I)V", "onUserVideoAvailable", "Lkotlin/Function1;", "", "preparing", "", "getPreparing", "()Z", "setPreparing", "(Z)V", "removeGuass", "getRemoveGuass", "setRemoveGuass", "speechToTextUtils", "Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;", "trtcBeautyProcessor", "Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;", "trtcCloud", "Lcom/tencent/trtc/TRTCCloud;", "getTrtcCloud", "()Lcom/tencent/trtc/TRTCCloud;", "viewModel", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "getViewModel", "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "enterRoom", "f2fHeartBeatModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;", "model1", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;", "callback", "videoAvailableCallback", "Lkotlin/ParameterName;", "name", Contants.USER_ID, "exitRoom", "launchMatch", "muteLocalPreview", "mute", "setGoogleToken", "googleToken", "setTrtcDontCloseCameraAfterExitRoom", "startLocalPreview", "txCloudVideoView", "Lcom/tencent/rtmp/ui/TXCloudVideoView;", "startRecord", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;", "stopLocalPreview", "stopRecord", "cancel", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fPusherViewModel extends BaseViewModel<BaseModel> {
    @Nullable
    private Function0<Unit> enterRoomCallback;
    @Nullable
    private F2fMatchCallback f2fMatchCallback;
    private int matchingState;
    @Nullable
    private Function1<? super String, Unit> onUserVideoAvailable;
    private boolean preparing;
    private boolean removeGuass;
    @NotNull
    private final SpeechToTextUtils speechToTextUtils;
    @Nullable
    private TrtcBeautyProcessor trtcBeautyProcessor;
    @NotNull
    private final TRTCCloud trtcCloud;
    @NotNull
    private final Lazy viewModel$delegate;

    public F2fPusherViewModel() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<F2fMatchViewModel>() { // from class: com.guochao.faceshow.component.f2fmatch.viewmodel.F2fPusherViewModel$special$$inlined$lazyGlobalViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final F2fMatchViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, F2fMatchViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(F2fMatchViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel");
                return (F2fMatchViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        TRTCCloud sharedInstance = TRTCCloud.sharedInstance(GCApplication.app());
        sharedInstance.setGSensorMode(0);
        sharedInstance.setDefaultStreamRecvMode(true, true);
        Intrinsics.checkNotNullExpressionValue(sharedInstance, "sharedInstance(GCApplica…ecvMode(true, true)\n    }");
        this.trtcCloud = sharedInstance;
        this.speechToTextUtils = new SpeechToTextUtils();
        this.matchingState = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final F2fMatchViewModel getViewModel() {
        return (F2fMatchViewModel) this.viewModel$delegate.getValue();
    }

    private final void setTrtcDontCloseCameraAfterExitRoom() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("api", "keepCapturingAfterExiting");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("keepVideoCapturing", 1);
            jSONObject2.put("keepAudioCapturing", 0);
            jSONObject.put(NativeProtocol.WEB_DIALOG_PARAMS, jSONObject2);
            this.trtcCloud.callExperimentalAPI(jSONObject.toString());
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public static /* synthetic */ void stopRecord$default(F2fPusherViewModel f2fPusherViewModel, boolean z10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = false;
        }
        f2fPusherViewModel.stopRecord(z10);
    }

    public final void enterRoom(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel, @NotNull F2fMatchModel.F2fTrtcSignatureModel model1, @NotNull Function0<Unit> callback, @NotNull Function1<? super String, Unit> videoAvailableCallback) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        Intrinsics.checkNotNullParameter(model1, "model1");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(videoAvailableCallback, "videoAvailableCallback");
        this.enterRoomCallback = callback;
        this.onUserVideoAvailable = videoAvailableCallback;
        TRTCCloud tRTCCloud = this.trtcCloud;
        TRTCCloudDef.TRTCParams tRTCParams = new TRTCCloudDef.TRTCParams();
        tRTCParams.sdkAppId = model1.getAppId();
        tRTCParams.userSig = model1.getSignature();
        tRTCParams.strRoomId = f2fHeartBeatModel.getRoomId();
        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
        tRTCParams.userId = current != null ? current.getUserId() : null;
        tRTCCloud.enterRoom(tRTCParams, 0);
    }

    public final void exitRoom() {
        setTrtcDontCloseCameraAfterExitRoom();
        this.trtcCloud.exitRoom();
    }

    @Nullable
    public final F2fMatchCallback getF2fMatchCallback() {
        return this.f2fMatchCallback;
    }

    public final int getMatchingState() {
        return this.matchingState;
    }

    public final boolean getPreparing() {
        return this.preparing;
    }

    public final boolean getRemoveGuass() {
        return this.removeGuass;
    }

    @NotNull
    public final TRTCCloud getTrtcCloud() {
        return this.trtcCloud;
    }

    public final void launchMatch() {
        InputStream open = GCApplication.app().getAssets().open("leave_bj01.png");
        try {
            TRTCCloud tRTCCloud = this.trtcCloud;
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = 2;
            Unit unit = Unit.INSTANCE;
            tRTCCloud.setVideoMuteImage(BitmapFactory.decodeStream(open, null, options), 5);
            CloseableKt.closeFinally(open, null);
            TRTCCloud tRTCCloud2 = this.trtcCloud;
            tRTCCloud2.setAudioFrameListener(new TRTCCloudListener.TRTCAudioFrameListener() { // from class: com.guochao.faceshow.component.f2fmatch.viewmodel.F2fPusherViewModel$launchMatch$2$1
                @Override // com.tencent.trtc.TRTCCloudListener.TRTCAudioFrameListener
                public void onCapturedRawAudioFrame(@NotNull TRTCCloudDef.TRTCAudioFrame p02) {
                    SpeechToTextUtils speechToTextUtils;
                    Intrinsics.checkNotNullParameter(p02, "p0");
                    speechToTextUtils = F2fPusherViewModel.this.speechToTextUtils;
                    speechToTextUtils.record(p02);
                }

                @Override // com.tencent.trtc.TRTCCloudListener.TRTCAudioFrameListener
                public void onLocalProcessedAudioFrame(@Nullable TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame) {
                }

                @Override // com.tencent.trtc.TRTCCloudListener.TRTCAudioFrameListener
                public void onMixedAllAudioFrame(@Nullable TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame) {
                }

                @Override // com.tencent.trtc.TRTCCloudListener.TRTCAudioFrameListener
                public void onMixedPlayAudioFrame(@Nullable TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame) {
                }

                @Override // com.tencent.trtc.TRTCCloudListener.TRTCAudioFrameListener
                public void onRemoteUserAudioFrame(@Nullable TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame, @Nullable String str) {
                }
            });
            tRTCCloud2.setListener(new TRTCCloudListener() { // from class: com.guochao.faceshow.component.f2fmatch.viewmodel.F2fPusherViewModel$launchMatch$2$2
                @Override // com.tencent.trtc.TRTCCloudListener
                public void onEnterRoom(long j10) {
                    Function0 function0;
                    super.onEnterRoom(j10);
                    function0 = F2fPusherViewModel.this.enterRoomCallback;
                    if (function0 != null) {
                        function0.invoke();
                    }
                    F2fPusherViewModel.this.enterRoomCallback = null;
                }

                @Override // com.tencent.trtc.TRTCCloudListener
                public void onFirstVideoFrame(@Nullable String str, int i9, int i10, int i11) {
                    F2fMatchViewModel viewModel;
                    F2fMatchCallback f2fMatchCallback;
                    super.onFirstVideoFrame(str, i9, i10, i11);
                    viewModel = F2fPusherViewModel.this.getViewModel();
                    F2fMatchModel.F2fHeartBeatModel lastMatchUserInfo = viewModel.getLastMatchUserInfo();
                    if (lastMatchUserInfo != null) {
                        F2fPusherViewModel f2fPusherViewModel = F2fPusherViewModel.this;
                        if (str != null) {
                            F2fMatchModel.F2fMatchRoomInfo matchUserInfo = lastMatchUserInfo.getMatchUserInfo();
                            if (!Intrinsics.areEqual(str, matchUserInfo != null ? matchUserInfo.getUserId() : null) || (f2fMatchCallback = f2fPusherViewModel.getF2fMatchCallback()) == null) {
                                return;
                            }
                            f2fMatchCallback.onPlayFirstFrame(lastMatchUserInfo);
                        }
                    }
                }

                @Override // com.tencent.trtc.TRTCCloudListener
                public void onRecvSEIMsg(@Nullable String str, @Nullable byte[] bArr) {
                    F2fMatchViewModel viewModel;
                    F2fMatchCallback f2fMatchCallback;
                    super.onRecvSEIMsg(str, bArr);
                    if (str == null || bArr == null) {
                        return;
                    }
                    viewModel = F2fPusherViewModel.this.getViewModel();
                    F2fMatchModel.F2fHeartBeatModel lastMatchUserInfo = viewModel.getLastMatchUserInfo();
                    if (lastMatchUserInfo != null) {
                        F2fPusherViewModel f2fPusherViewModel = F2fPusherViewModel.this;
                        F2fMatchModel.F2fMatchRoomInfo matchUserInfo = lastMatchUserInfo.getMatchUserInfo();
                        if (!Intrinsics.areEqual(str, matchUserInfo != null ? matchUserInfo.getUserId() : null) || (f2fMatchCallback = f2fPusherViewModel.getF2fMatchCallback()) == null) {
                            return;
                        }
                        f2fMatchCallback.onReceiveSeiMessage(lastMatchUserInfo, new JSONObject(new String(bArr, Charsets.UTF_8)));
                    }
                }

                @Override // com.tencent.trtc.TRTCCloudListener
                public void onRemoteUserLeaveRoom(@NotNull String userId, int i9) {
                    F2fMatchViewModel viewModel;
                    Intrinsics.checkNotNullParameter(userId, "userId");
                    super.onRemoteUserLeaveRoom(userId, i9);
                    viewModel = F2fPusherViewModel.this.getViewModel();
                    viewModel.markRemoteUserLeaveRoom(userId);
                }

                @Override // com.tencent.trtc.TRTCCloudListener
                public void onUserVideoAvailable(@NotNull String userId, boolean z10) {
                    Function1 function1;
                    Intrinsics.checkNotNullParameter(userId, "userId");
                    super.onUserVideoAvailable(userId, z10);
                    if (z10) {
                        function1 = F2fPusherViewModel.this.onUserVideoAvailable;
                        if (function1 != null) {
                            function1.invoke(userId);
                        }
                        F2fPusherViewModel.this.onUserVideoAvailable = null;
                    }
                }
            });
        } finally {
        }
    }

    public final void muteLocalPreview(boolean z10) {
        this.trtcCloud.muteLocalVideo(0, z10);
    }

    public final void setF2fMatchCallback(@Nullable F2fMatchCallback f2fMatchCallback) {
        this.f2fMatchCallback = f2fMatchCallback;
        if (f2fMatchCallback == null) {
            this.trtcCloud.setListener(null);
        }
    }

    public final void setGoogleToken(@Nullable String str) {
        this.speechToTextUtils.setGoogleToken(str);
    }

    public final void setMatchingState(int i9) {
        this.matchingState = i9;
        TrtcBeautyProcessor trtcBeautyProcessor = this.trtcBeautyProcessor;
        if (trtcBeautyProcessor != null) {
            trtcBeautyProcessor.setChatting(i9 == 3);
        }
    }

    public final void setPreparing(boolean z10) {
        this.preparing = z10;
    }

    public final void setRemoveGuass(boolean z10) {
        this.removeGuass = z10;
        TrtcBeautyProcessor trtcBeautyProcessor = this.trtcBeautyProcessor;
        if (trtcBeautyProcessor == null) {
            return;
        }
        trtcBeautyProcessor.setRemoveGuass(z10);
    }

    public final void startLocalPreview(@Nullable TXCloudVideoView tXCloudVideoView) {
        TRTCCloud tRTCCloud = this.trtcCloud;
        TrtcBeautyProcessor trtcBeautyProcessor = new TrtcBeautyProcessor(this.trtcCloud, getViewModel());
        this.trtcBeautyProcessor = trtcBeautyProcessor;
        Unit unit = Unit.INSTANCE;
        tRTCCloud.setLocalVideoProcessListener(2, 3, trtcBeautyProcessor);
        this.trtcCloud.startLocalPreview(true, tXCloudVideoView);
        muteLocalPreview(false);
        this.trtcCloud.startLocalAudio(1);
        this.trtcCloud.muteLocalAudio(false);
        TRTCCloudDef.TRTCVideoEncParam tRTCVideoEncParam = new TRTCCloudDef.TRTCVideoEncParam();
        tRTCVideoEncParam.videoResolution = 108;
        tRTCVideoEncParam.videoFps = 15;
        tRTCVideoEncParam.videoBitrate = 1200;
        tRTCVideoEncParam.minVideoBitrate = 600;
        tRTCVideoEncParam.videoResolutionMode = 1;
        tRTCVideoEncParam.enableAdjustRes = false;
        this.trtcCloud.setVideoEncoderParam(tRTCVideoEncParam);
        TRTCCloud tRTCCloud2 = this.trtcCloud;
        TRTCCloudDef.TRTCNetworkQosParam tRTCNetworkQosParam = new TRTCCloudDef.TRTCNetworkQosParam();
        tRTCNetworkQosParam.preference = 1;
        tRTCNetworkQosParam.controlMode = 1;
        tRTCCloud2.setNetworkQosParam(tRTCNetworkQosParam);
        this.trtcCloud.setAudioRoute(0);
    }

    public final void startRecord(@Nullable final Function1<? super F2fSpeechToTextResultModel, Unit> function1) {
        this.speechToTextUtils.setCallback(new SpeechToTextUtils.Callback() { // from class: com.guochao.faceshow.component.f2fmatch.viewmodel.F2fPusherViewModel$startRecord$1
            @Override // com.guochao.faceshow.component.f2fmatch.utils.SpeechToTextUtils.Callback
            public void onEncodeCallback(@NotNull F2fSpeechToTextResultModel result) {
                Intrinsics.checkNotNullParameter(result, "result");
                Function1<F2fSpeechToTextResultModel, Unit> function12 = function1;
                if (function12 != null) {
                    function12.invoke(result);
                }
            }
        });
        this.speechToTextUtils.start();
    }

    public final void stopLocalPreview() {
        this.trtcCloud.stopLocalPreview();
        this.trtcCloud.stopLocalAudio();
    }

    public final void stopRecord(boolean z10) {
        if (z10) {
            this.speechToTextUtils.setCallback(null);
        }
        SpeechToTextUtils.stop$default(this.speechToTextUtils, false, null, 3, null);
        this.speechToTextUtils.setCallback(null);
    }
}
