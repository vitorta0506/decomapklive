package com.guochao.faceshow.component.f2fmatch.viewmodel;

import android.os.CancellationSignal;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.component.f2fmatch.datasource.F2fMatchDataSource;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.guochao.faceshow.component.f2fmatch.model.F2fSpeechToTextResultModel;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.HandlerGetter;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.trtc.TRTCCloud;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0014J\u0018\u00106\u001a\u0002042\u0010\b\u0002\u00107\u001a\n\u0012\u0004\u0012\u000204\u0018\u000108J\u0011\u00109\u001a\u00020:H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010;J\u000e\u0010<\u001a\u0002042\u0006\u00105\u001a\u00020\u0014J\b\u0010=\u001a\u000204H\u0002J\u0012\u0010>\u001a\u0002042\b\u0010?\u001a\u0004\u0018\u00010\u0014H\u0002J\u0010\u0010@\u001a\u0002042\b\b\u0002\u0010A\u001a\u00020:J\u000e\u0010B\u001a\u0002042\u0006\u0010C\u001a\u00020DJ\u0006\u0010E\u001a\u000204J&\u0010F\u001a\u0002042\u0006\u0010G\u001a\u00020\u00192\u0016\b\u0002\u0010H\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u000204\u0018\u00010IJ\u001c\u0010J\u001a\u0002042\u0014\u00107\u001a\u0010\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u000204\u0018\u00010IJ(\u0010L\u001a\u0002042\u0006\u0010G\u001a\u00020\u00192\u0016\b\u0002\u0010H\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u000204\u0018\u00010IH\u0002J\u0016\u0010M\u001a\u0002042\u0006\u00105\u001a\u00020\u00142\u0006\u0010N\u001a\u00020OJ\u0010\u0010P\u001a\u0002042\b\b\u0002\u0010Q\u001a\u00020:R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u000b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u001a\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u0019@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR \u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00190 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R$\u0010%\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u0019@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001c\"\u0004\b'\u0010\u001eR\u001b\u0010(\u001a\u00020)8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b*\u0010+R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u000102X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006R"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;", "()V", "autoCancelRunnable", "Ljava/lang/Runnable;", "cancellationSignal", "Landroid/os/CancellationSignal;", "f2fDataSource", "Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;", "value", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;", "f2fMatchCallback", "getF2fMatchCallback", "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;", "setF2fMatchCallback", "(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;)V", "heartBeatJob", "Lkotlinx/coroutines/Job;", "lastMatchUserInfo", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;", "getLastMatchUserInfo", "()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;", "setLastMatchUserInfo", "(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V", "", "matchGender", "getMatchGender", "()I", "setMatchGender", "(I)V", "matchGenderLiveData", "Landroidx/lifecycle/MutableLiveData;", "getMatchGenderLiveData", "()Landroidx/lifecycle/MutableLiveData;", "setMatchGenderLiveData", "(Landroidx/lifecycle/MutableLiveData;)V", "matchState", "getMatchState", "setMatchState", "pusherModel", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;", "getPusherModel", "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;", "pusherModel$delegate", "Lkotlin/Lazy;", "startMatchResult", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;", "startMatchRunnable", "trtcSignatureModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;", "agreeMatch", "", "f2fHeartBeatModel", "cancelMatch", "callback", "Lkotlin/Function0;", "checkGoogleCloudAvailable", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "confirmMatchSuccess", "getGoogleAccessToken", "handleHeartBeatResult", "result", "launchMatch", "previewOnly", "markRemoteUserLeaveRoom", Contants.USER_ID, "", "markStatePrepare", "markStateStartMatching", "gender", "retry", "Lkotlin/Function1;", "startAudioRecord", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fSpeechToTextResultModel;", "startMatch", "startPlay", "playerView", "Lcom/tencent/rtmp/ui/TXCloudVideoView;", "stopAudioRecord", "cancel", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fMatchViewModel extends BaseViewModel<F2fMatchModel> {
    @NotNull
    private final Runnable autoCancelRunnable;
    @Nullable
    private CancellationSignal cancellationSignal;
    @NotNull
    private final F2fMatchDataSource f2fDataSource;
    @Nullable
    private F2fMatchCallback f2fMatchCallback;
    @Nullable
    private Job heartBeatJob;
    @Nullable
    private F2fMatchModel.F2fHeartBeatModel lastMatchUserInfo;
    private int matchGender;
    @NotNull
    private MutableLiveData<Integer> matchGenderLiveData;
    private int matchState;
    @NotNull
    private final Lazy pusherModel$delegate;
    @Nullable
    private F2fMatchModel.F2fStartMatchResultModel startMatchResult;
    @Nullable
    private Runnable startMatchRunnable;
    @Nullable
    private F2fMatchModel.F2fTrtcSignatureModel trtcSignatureModel;

    public F2fMatchViewModel() {
        Lazy lazy;
        UserSessionViewModel.Companion.instance().bind(null, new Observer() { // from class: com.guochao.faceshow.component.f2fmatch.viewmodel.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                F2fMatchViewModel.m655_init_$lambda0(F2fMatchViewModel.this, (UserSessionModel) obj);
            }
        });
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<F2fPusherViewModel>() { // from class: com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel$special$$inlined$lazyGlobalViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final F2fPusherViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, F2fPusherViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(F2fPusherViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.viewmodel.F2fPusherViewModel");
                return (F2fPusherViewModel) baseViewModel;
            }
        });
        this.pusherModel$delegate = lazy;
        this.f2fDataSource = new F2fMatchDataSource();
        this.matchGender = -2;
        this.matchGenderLiveData = new MutableLiveData<>();
        this.matchState = 1;
        this.autoCancelRunnable = new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.viewmodel.b
            @Override // java.lang.Runnable
            public final void run() {
                F2fMatchViewModel.m656autoCancelRunnable$lambda2(F2fMatchViewModel.this);
            }
        };
    }

    /* renamed from: _init_$lambda-0 */
    public static final void m655_init_$lambda0(F2fMatchViewModel this$0, UserSessionModel userSessionModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setMatchGender(-2);
    }

    /* renamed from: autoCancelRunnable$lambda-2 */
    public static final void m656autoCancelRunnable$lambda2(F2fMatchViewModel this$0) {
        F2fMatchCallback f2fMatchCallback;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel = this$0.lastMatchUserInfo;
        if (f2fHeartBeatModel == null || (f2fMatchCallback = this$0.f2fMatchCallback) == null) {
            return;
        }
        f2fMatchCallback.onRemoteUserLeave(f2fHeartBeatModel);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void cancelMatch$default(F2fMatchViewModel f2fMatchViewModel, Function0 function0, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            function0 = null;
        }
        f2fMatchViewModel.cancelMatch(function0);
    }

    public final void getGoogleAccessToken() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new F2fMatchViewModel$getGoogleAccessToken$1(this, null), 2, null);
    }

    public final void handleHeartBeatResult(F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel) {
        Integer valueOf = f2fHeartBeatModel != null ? Integer.valueOf(f2fHeartBeatModel.getStatus()) : null;
        if (valueOf != null && valueOf.intValue() == -1) {
            F2fMatchCallback f2fMatchCallback = this.f2fMatchCallback;
            if (f2fMatchCallback != null) {
                f2fMatchCallback.onMatchTimeout(f2fHeartBeatModel);
            }
        } else if (valueOf != null && valueOf.intValue() == -2) {
            F2fMatchCallback f2fMatchCallback2 = this.f2fMatchCallback;
            if (f2fMatchCallback2 != null) {
                f2fMatchCallback2.onReject(f2fHeartBeatModel, -2);
            }
        } else if (valueOf != null && valueOf.intValue() == -3) {
            F2fMatchCallback f2fMatchCallback3 = this.f2fMatchCallback;
            if (f2fMatchCallback3 != null) {
                f2fMatchCallback3.onReject(f2fHeartBeatModel, -3);
            }
        } else if (valueOf != null && valueOf.intValue() == 0) {
        } else {
            if ((valueOf != null && valueOf.intValue() == 2) || valueOf == null) {
                return;
            }
            valueOf.intValue();
        }
    }

    public static /* synthetic */ void launchMatch$default(F2fMatchViewModel f2fMatchViewModel, boolean z10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = false;
        }
        f2fMatchViewModel.launchMatch(z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void markStateStartMatching$default(F2fMatchViewModel f2fMatchViewModel, int i9, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        f2fMatchViewModel.markStateStartMatching(i9, function1);
    }

    public final void startMatch(final int i9, final Function1<? super Integer, Unit> function1) {
        if (this.trtcSignatureModel == null) {
            this.startMatchRunnable = new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.viewmodel.c
                @Override // java.lang.Runnable
                public final void run() {
                    F2fMatchViewModel.m657startMatch$lambda4(F2fMatchViewModel.this, i9, function1);
                }
            };
            return;
        }
        HandlerGetter.getMainHandler().removeCallbacks(this.autoCancelRunnable);
        CancellationSignal cancellationSignal = new CancellationSignal();
        this.cancellationSignal = cancellationSignal;
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new F2fMatchViewModel$startMatch$2(this, i9, cancellationSignal, function1, null), 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void startMatch$default(F2fMatchViewModel f2fMatchViewModel, int i9, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        f2fMatchViewModel.startMatch(i9, function1);
    }

    /* renamed from: startMatch$lambda-4 */
    public static final void m657startMatch$lambda4(F2fMatchViewModel this$0, int i9, Function1 function1) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startMatch(i9, function1);
    }

    public static /* synthetic */ void stopAudioRecord$default(F2fMatchViewModel f2fMatchViewModel, boolean z10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = false;
        }
        f2fMatchViewModel.stopAudioRecord(z10);
    }

    public final void agreeMatch(@NotNull final F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new F2fMatchViewModel$agreeMatch$1(f2fHeartBeatModel, this, null), 2, null);
        F2fMatchModel.F2fTrtcSignatureModel f2fTrtcSignatureModel = this.trtcSignatureModel;
        if (f2fTrtcSignatureModel != null) {
            getPusherModel().enterRoom(f2fHeartBeatModel, f2fTrtcSignatureModel, new Function0<Unit>() { // from class: com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel$agreeMatch$2$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }
            }, new Function1<String, Unit>() { // from class: com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel$agreeMatch$2$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                    invoke2(str);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull String userId) {
                    Intrinsics.checkNotNullParameter(userId, "userId");
                    F2fMatchViewModel.this.setMatchState(3);
                    F2fMatchCallback f2fMatchCallback = F2fMatchViewModel.this.getF2fMatchCallback();
                    if (f2fMatchCallback != null) {
                        f2fMatchCallback.onAgreed(f2fHeartBeatModel);
                    }
                }
            });
        }
    }

    public final void cancelMatch(@Nullable Function0<Unit> function0) {
        this.startMatchRunnable = null;
        Job job = this.heartBeatJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.heartBeatJob = null;
        getPusherModel().exitRoom();
        CancellationSignal cancellationSignal = this.cancellationSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        this.cancellationSignal = null;
        int i9 = this.matchState;
        F2fMatchModel.F2fStartMatchResultModel f2fStartMatchResultModel = this.startMatchResult;
        if (f2fStartMatchResultModel != null) {
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new F2fMatchViewModel$cancelMatch$1$1(this, f2fStartMatchResultModel, function0, i9, null), 2, null);
        }
        setMatchState(1);
        this.startMatchResult = null;
    }

    @Nullable
    public final Object checkGoogleCloudAvailable(@NotNull Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new F2fMatchViewModel$checkGoogleCloudAvailable$2(null), continuation);
    }

    public final void confirmMatchSuccess(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        String roomId = f2fHeartBeatModel.getRoomId();
        if (roomId != null) {
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new F2fMatchViewModel$confirmMatchSuccess$1$1(this, roomId, null), 2, null);
        }
        TRTCCloud trtcCloud = getPusherModel().getTrtcCloud();
        F2fMatchModel.F2fMatchRoomInfo matchUserInfo = f2fHeartBeatModel.getMatchUserInfo();
        trtcCloud.muteRemoteAudio(matchUserInfo != null ? matchUserInfo.getUserId() : null, false);
        HandlerGetter.getMainHandler().removeCallbacks(this.autoCancelRunnable);
    }

    @Nullable
    public final F2fMatchCallback getF2fMatchCallback() {
        return this.f2fMatchCallback;
    }

    @Nullable
    public final F2fMatchModel.F2fHeartBeatModel getLastMatchUserInfo() {
        return this.lastMatchUserInfo;
    }

    public final int getMatchGender() {
        return this.matchGender;
    }

    @NotNull
    public final MutableLiveData<Integer> getMatchGenderLiveData() {
        return this.matchGenderLiveData;
    }

    public final int getMatchState() {
        return this.matchState;
    }

    @NotNull
    public final F2fPusherViewModel getPusherModel() {
        return (F2fPusherViewModel) this.pusherModel$delegate.getValue();
    }

    public final void launchMatch(boolean z10) {
        if (!z10) {
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new F2fMatchViewModel$launchMatch$1(this, null), 2, null);
        }
        getPusherModel().launchMatch();
        getGoogleAccessToken();
    }

    public final void markRemoteUserLeaveRoom(@NotNull String userId) {
        F2fMatchCallback f2fMatchCallback;
        Intrinsics.checkNotNullParameter(userId, "userId");
        F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel = this.lastMatchUserInfo;
        if (f2fHeartBeatModel == null || (f2fMatchCallback = this.f2fMatchCallback) == null) {
            return;
        }
        f2fMatchCallback.onRemoteUserLeave(f2fHeartBeatModel);
    }

    public final void markStatePrepare() {
        setMatchState(1);
    }

    public final void markStateStartMatching(int i9, @Nullable Function1<? super Integer, Unit> function1) {
        if (this.matchState == 2) {
            return;
        }
        setMatchState(2);
        setMatchGender(i9);
        startMatch(this.matchGender, function1);
    }

    public final void setF2fMatchCallback(@Nullable F2fMatchCallback f2fMatchCallback) {
        this.f2fMatchCallback = f2fMatchCallback;
        getPusherModel().setF2fMatchCallback(this.f2fMatchCallback);
    }

    public final void setLastMatchUserInfo(@Nullable F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel) {
        this.lastMatchUserInfo = f2fHeartBeatModel;
    }

    public final void setMatchGender(int i9) {
        this.matchGender = i9;
        if (i9 == -2) {
            return;
        }
        this.matchGenderLiveData.setValue(Integer.valueOf(i9));
        SpUtils.setSelfInt2("f2f_match_gender", i9);
    }

    public final void setMatchGenderLiveData(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.matchGenderLiveData = mutableLiveData;
    }

    public final void setMatchState(int i9) {
        this.matchState = i9;
        getPusherModel().setMatchingState(this.matchState);
    }

    public final void startAudioRecord(@Nullable Function1<? super F2fSpeechToTextResultModel, Unit> function1) {
        getPusherModel().startRecord(function1);
    }

    public final void startPlay(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel, @NotNull TXCloudVideoView playerView) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        Intrinsics.checkNotNullParameter(playerView, "playerView");
        TRTCCloud trtcCloud = getPusherModel().getTrtcCloud();
        F2fMatchModel.F2fMatchRoomInfo matchUserInfo = f2fHeartBeatModel.getMatchUserInfo();
        trtcCloud.startRemoteView(matchUserInfo != null ? matchUserInfo.getUserId() : null, 0, playerView);
    }

    public final void stopAudioRecord(boolean z10) {
        getPusherModel().stopRecord(z10);
    }
}
