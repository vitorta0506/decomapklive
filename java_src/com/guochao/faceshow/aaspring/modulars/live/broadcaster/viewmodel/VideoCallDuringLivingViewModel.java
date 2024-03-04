package com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel;

import android.app.Dialog;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import b8.e;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.AppointEndResponse;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.TrtcStartResponseBean;
import com.guochao.faceshow.aaspring.manager.im.b;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.watcher.model.CallingDuringLivingModel;
import com.guochao.faceshow.aaspring.modulars.main.fragment.MainMenuDialogFragment;
import com.guochao.faceshow.aaspring.modulars.trtc.message.TRTCSignalMessage;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.utils.BasePermissionObserver;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import com.huawei.hms.api.FailedBinderCallBack;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002EFB\u0007¢\u0006\u0004\bC\u0010DJ \u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u000e\u001a\u00020\nH\u0002J%\u0010\u0013\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J+\u0010\u0018\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001aJ\u000e\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0010\u0010\u001e\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0016\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\bJ\b\u0010\"\u001a\u00020\nH\u0014J\u0010\u0010%\u001a\u00020\n2\u0006\u0010$\u001a\u00020#H\u0016J\u0010\u0010(\u001a\u00020\n2\u0006\u0010'\u001a\u00020&H\u0007R\u0014\u0010*\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u001c\u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u001f\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010-008\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0018\u00106\u001a\u000605R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u001f\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u0011008\u0006¢\u0006\f\n\u0004\b8\u00102\u001a\u0004\b9\u00104R\u001c\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010:0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010/R\u001f\u0010<\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010:008\u0006¢\u0006\f\n\u0004\b<\u00102\u001a\u0004\b=\u00104R\u0016\u0010>\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010A\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010B\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006G"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/aaspring/manager/im/d$a;", "Landroidx/fragment/app/FragmentActivity;", "fragmentActivity", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "roomItemData", "", "callType", "", "checkPermission", "type", "startCallingInternal", "clearHandlerMessage", "", "liveId", "", "suspend", "suspendLiveRoom", "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "itemData", "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;", "callModel", "dial", "(ILcom/guochao/faceshow/aaspring/beans/RoomItemData;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;", "fragment", "freezeLiveRoom", "unfreezeLiveRoom", "setCurrentLiveRoom", "startCalling", "cancelOrTimeout", "endLastCalling", "onCleared", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "message", "onNewMessage", "Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$StartFeeEvent;", "event", "onStartFeeEvent", "Landroid/os/Handler;", "handler", "Landroid/os/Handler;", "Landroidx/lifecycle/MutableLiveData;", "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;", "_lastCallingRoomItemData", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/lifecycle/LiveData;", "lastCallingRoomItemData", "Landroidx/lifecycle/LiveData;", "getLastCallingRoomItemData", "()Landroidx/lifecycle/LiveData;", "Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$PermissionLiveData;", "_hasCallingPermission", "Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$PermissionLiveData;", "hasCallingPermission", "getHasCallingPermission", "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;", "_lastCallStatusRoomItemData", "lastCallStatusRoomItemData", "getLastCallStatusRoomItemData", "isDialing", "Z", "Ljava/lang/Runnable;", "autoHangup", "Ljava/lang/Runnable;", "<init>", "()V", "PermissionLiveData", "StartFeeEvent", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class VideoCallDuringLivingViewModel extends BaseViewModel<BaseModel> implements d.a {
    @NotNull
    private final PermissionLiveData _hasCallingPermission;
    @NotNull
    private final MutableLiveData<CallingDuringLivingModel> _lastCallStatusRoomItemData;
    @NotNull
    private final MutableLiveData<CallingDuringLivingModel.StartCallModel> _lastCallingRoomItemData;
    @NotNull
    private final Runnable autoHangup;
    @NotNull
    private final Handler handler;
    @NotNull
    private final LiveData<Boolean> hasCallingPermission;
    private boolean isDialing;
    @NotNull
    private final LiveData<CallingDuringLivingModel> lastCallStatusRoomItemData;
    @NotNull
    private final LiveData<CallingDuringLivingModel.StartCallModel> lastCallingRoomItemData;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0017\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0002\u0010\bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0002X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$PermissionLiveData;", "Landroidx/lifecycle/MutableLiveData;", "", "(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;)V", "originalValue", "getOriginalValue", "()Ljava/lang/Boolean;", "setOriginalValue", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "setValue", "", "value", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class PermissionLiveData extends MutableLiveData<Boolean> {
        @Nullable
        private Boolean originalValue;

        public PermissionLiveData() {
        }

        @Nullable
        public final Boolean getOriginalValue() {
            return this.originalValue;
        }

        public final void setOriginalValue(@Nullable Boolean bool) {
            this.originalValue = bool;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(@Nullable Boolean bool) {
            this.originalValue = bool;
            boolean z10 = false;
            if (FeatureKt.requireFeature$default(Feature.LIVE_TO_1V1_USER, null, 2, null).isAvailable()) {
                if (bool != null ? bool.booleanValue() : false) {
                    z10 = true;
                }
            }
            super.setValue((PermissionLiveData) Boolean.valueOf(z10));
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel$StartFeeEvent;", "", FailedBinderCallBack.CALLER_ID, "", "(Ljava/lang/String;)V", "getCallId", "()Ljava/lang/String;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static class StartFeeEvent {
        @NotNull
        private final String callId;

        public StartFeeEvent(@NotNull String callId) {
            Intrinsics.checkNotNullParameter(callId, "callId");
            this.callId = callId;
        }

        @NotNull
        public final String getCallId() {
            return this.callId;
        }
    }

    public VideoCallDuringLivingViewModel() {
        b.l0().x(this);
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        this.handler = new Handler(Looper.getMainLooper());
        MutableLiveData<CallingDuringLivingModel.StartCallModel> mutableLiveData = new MutableLiveData<>();
        this._lastCallingRoomItemData = mutableLiveData;
        this.lastCallingRoomItemData = mutableLiveData;
        PermissionLiveData permissionLiveData = new PermissionLiveData();
        this._hasCallingPermission = permissionLiveData;
        this.hasCallingPermission = permissionLiveData;
        MutableLiveData<CallingDuringLivingModel> mutableLiveData2 = new MutableLiveData<>();
        this._lastCallStatusRoomItemData = mutableLiveData2;
        this.lastCallStatusRoomItemData = mutableLiveData2;
        this.autoHangup = new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.a
            @Override // java.lang.Runnable
            public final void run() {
                VideoCallDuringLivingViewModel.m465autoHangup$lambda0(VideoCallDuringLivingViewModel.this);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: autoHangup$lambda-0  reason: not valid java name */
    public static final void m465autoHangup$lambda0(VideoCallDuringLivingViewModel this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.endLastCalling(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkPermission(final FragmentActivity fragmentActivity, final RoomItemData roomItemData, final int i9) {
        com.tbruyelle.rxpermissions2.a aVar = new com.tbruyelle.rxpermissions2.a(fragmentActivity);
        String[] strArr = i9 == 2 ? com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21901l : com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21902m;
        aVar.p((String[]) Arrays.copyOf(strArr, strArr.length)).subscribe(new BasePermissionObserver() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel$checkPermission$1
            @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
            public void onDenied(@NotNull te.a permission) {
                List listOf;
                Intrinsics.checkNotNullParameter(permission, "permission");
                super.onDenied(permission);
                FragmentActivity fragmentActivity2 = FragmentActivity.this;
                String[] strArr2 = i9 == 2 ? com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21901l : com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21902m;
                Intrinsics.checkNotNullExpressionValue(strArr2, "if (callType == TYPE_VID…SSIONS_DUAN_WITHOUTCAMERA");
                listOf = CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(strArr2, strArr2.length));
                MainMenuDialogFragment.Q1(fragmentActivity2, 101, listOf, false);
            }

            @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
            public void onGranted(@NotNull te.a permission) {
                Intrinsics.checkNotNullParameter(permission, "permission");
                if (i9 == 2 && Build.VERSION.SDK_INT == 23 && MzSystemUtils.isMeizu(FragmentActivity.this) && !PhoneUtils.isCameraCanUse(FragmentActivity.this)) {
                    FragmentActivity fragmentActivity2 = FragmentActivity.this;
                    MainMenuDialogFragment.S1(fragmentActivity2, fragmentActivity2.getString(R.string.check_camera));
                    return;
                }
                this.startCallingInternal(i9, roomItemData);
            }

            @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
            public void onShouldShowRequestPermissionRationale(@NotNull te.a permission) {
                List listOf;
                Intrinsics.checkNotNullParameter(permission, "permission");
                super.onShouldShowRequestPermissionRationale(permission);
                FragmentActivity fragmentActivity2 = FragmentActivity.this;
                String[] strArr2 = i9 == 2 ? com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21901l : com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21902m;
                Intrinsics.checkNotNullExpressionValue(strArr2, "if (callType == TYPE_VID…SSIONS_DUAN_WITHOUTCAMERA");
                listOf = CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(strArr2, strArr2.length));
                MainMenuDialogFragment.Q1(fragmentActivity2, 101, listOf, true);
            }
        });
    }

    private final void clearHandlerMessage() {
        this.handler.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object dial(int i9, RoomItemData roomItemData, final CallModel callModel, Continuation<? super Boolean> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final SafeContinuation safeContinuation = new SafeContinuation(intercepted);
        new PostRequest("tokens/appoint/startAppoint").y("pushParams", callModel).y(Contants.USER_ID, e.g().c().getUserId()).y("accountId", roomItemData.getBroadCasterUserId()).y("matchType", Boxing.boxInt(i9 == 1 ? 3001 : 3002)).y("liveId", roomItemData.getLiveId()).I(3).M(new c<TrtcStartResponseBean>() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel$dial$2$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<TrtcStartResponseBean> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                Continuation<Boolean> continuation2 = safeContinuation;
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m1657constructorimpl(Boolean.FALSE));
                if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21900k) {
                    CallModel callModel2 = CallModel.this;
                    callModel2.matchLogId = e.g().getUserId() + '_' + System.currentTimeMillis();
                    return;
                }
                ToastUtils.showToast$default(null, R.string.trtc_network_anomalies_unable_to_call, 0, 5, null);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable TrtcStartResponseBean trtcStartResponseBean, @NotNull FaceCastBaseResponse<TrtcStartResponseBean> baseResponse) {
                Integer appointResult;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (trtcStartResponseBean == null) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                CallModel.this.matchLogId = trtcStartResponseBean.getMatchLogId();
                Integer appointResult2 = trtcStartResponseBean.getAppointResult();
                if (appointResult2 != null && appointResult2.intValue() == 4000) {
                    Continuation<Boolean> continuation2 = safeContinuation;
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m1657constructorimpl(Boolean.TRUE));
                } else {
                    Continuation<Boolean> continuation3 = safeContinuation;
                    Result.Companion companion2 = Result.Companion;
                    continuation3.resumeWith(Result.m1657constructorimpl(Boolean.FALSE));
                }
                if (trtcStartResponseBean.getAppointResult() != null) {
                    Integer appointResult3 = trtcStartResponseBean.getAppointResult();
                    if (appointResult3 != null && 4006 == appointResult3.intValue()) {
                        ToastUtils.showToast$default(null, R.string.trtc_im_call_version_intercept, 0, 5, null);
                        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().R(CallModel.this);
                        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().o();
                        return;
                    }
                    Integer appointResult4 = trtcStartResponseBean.getAppointResult();
                    if ((appointResult4 != null && 4015 == appointResult4.intValue()) || ((appointResult = trtcStartResponseBean.getAppointResult()) != null && 4004 == appointResult.intValue())) {
                        ToastUtils.showToast$default(null, R.string.trtc_im_reject_me, 0, 5, null);
                        CallModel callModel2 = CallModel.this;
                        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().H(CallModel.this.invitedList.get(0), callModel2.callType, 2, callModel2);
                    }
                }
            }
        });
        Object orThrow = safeContinuation.getOrThrow();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (orThrow == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startCallingInternal(int i9, RoomItemData roomItemData) {
        if (this.isDialing) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VideoCallDuringLivingViewModel$startCallingInternal$1(this, roomItemData, i9, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object suspendLiveRoom(String str, boolean z10, Continuation<? super Boolean> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        if (str == null) {
            return Boxing.boxBoolean(false);
        }
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        final PostRequest M = new PostRequest("tokens/live/newLive/liveSuspendTo1V1").y("liveId", str).y("type", Boxing.boxInt(z10 ? 1 : 2)).M(new c<Object>() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel$suspendLiveRoom$2$c$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<Object> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                CancellableContinuation<Boolean> cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m1657constructorimpl(Boolean.FALSE));
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable Object obj, @NotNull FaceCastBaseResponse<Object> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                CancellableContinuation<Boolean> cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m1657constructorimpl(Boolean.TRUE));
            }
        });
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel$suspendLiveRoom$2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                PostRequest.this.cancel();
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public final void endLastCalling(int i9) {
        this.handler.removeCallbacks(this.autoHangup);
        final CallingDuringLivingModel.StartCallModel value = this._lastCallingRoomItemData.getValue();
        if (value != null) {
            if (i9 == 1) {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().k(value.getCallModel());
            } else if (i9 != 2) {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a r10 = com.guochao.faceshow.aaspring.modulars.trtc.call.a.r();
                CallingDuringLivingModel.StartCallModel value2 = this._lastCallingRoomItemData.getValue();
                r10.m("4009", value2 != null ? value2.getCallModel() : null, new c<AppointEndResponse>() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel$endLastCalling$1$1
                    @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
                    public void onCompleted() {
                        super.onCompleted();
                        CallModel callModel = CallingDuringLivingModel.StartCallModel.this.getCallModel();
                        if (callModel != null) {
                            CallingDuringLivingModel.StartCallModel startCallModel = CallingDuringLivingModel.StartCallModel.this;
                            callModel.hangupTime = String.valueOf(System.currentTimeMillis());
                            callModel.hangupType = 4009;
                            if (callModel.callTime == 0) {
                                callModel.callTime = (int) ((System.currentTimeMillis() - startCallModel.getCallTimestamp()) / 1000);
                            }
                            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().t(callModel, false, false);
                        }
                    }

                    @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                    public void onFailure(@NotNull g7.a<AppointEndResponse> exp) {
                        Intrinsics.checkNotNullParameter(exp, "exp");
                    }

                    @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                    public void onResponse(@Nullable AppointEndResponse appointEndResponse, @NotNull FaceCastBaseResponse<AppointEndResponse> baseResponse) {
                        Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                    }
                });
            } else {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().P(value.getCallModel());
            }
        }
        this._lastCallingRoomItemData.setValue(null);
    }

    public final void freezeLiveRoom(@NotNull BroadCastFragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VideoCallDuringLivingViewModel$freezeLiveRoom$1(fragment, this, null), 2, null);
    }

    @NotNull
    public final LiveData<Boolean> getHasCallingPermission() {
        return this.hasCallingPermission;
    }

    @NotNull
    public final LiveData<CallingDuringLivingModel> getLastCallStatusRoomItemData() {
        return this.lastCallStatusRoomItemData;
    }

    @NotNull
    public final LiveData<CallingDuringLivingModel.StartCallModel> getLastCallingRoomItemData() {
        return this.lastCallingRoomItemData;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel, androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        clearHandlerMessage();
        b.l0().G(this);
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public void onNewMessage(@NotNull com.guochao.faceshow.aaspring.modulars.chat.models.a message) {
        CallingDuringLivingModel.StartCallModel value;
        RoomItemData roomItemData;
        Intrinsics.checkNotNullParameter(message, "message");
        if (message instanceof TRTCSignalMessage) {
            CallingDuringLivingModel.StartCallModel value2 = this._lastCallingRoomItemData.getValue();
            TRTCSignalMessage tRTCSignalMessage = (TRTCSignalMessage) message;
            if (Objects.equals((value2 == null || (roomItemData = value2.getRoomItemData()) == null) ? null : roomItemData.getBroadCasterUserId(), tRTCSignalMessage.getConversationId())) {
                int i9 = tRTCSignalMessage.getMessageModel().actionType;
                if (i9 == 3) {
                    CallingDuringLivingModel.StartCallModel value3 = this._lastCallingRoomItemData.getValue();
                    if (value3 != null) {
                        this._lastCallStatusRoomItemData.setValue(new CallingDuringLivingModel.RejectCallModel(value3.getRoomItemData(), value3.getType()));
                        CallModel callModel = value3.getCallModel();
                        if (callModel != null) {
                            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().H(callModel.invitedList.get(0), callModel.callType, 2, callModel);
                        }
                        ToastUtils.showToast$default(null, R.string.trtc_im_reject_me, 0, 5, null);
                    }
                    this._lastCallingRoomItemData.setValue(null);
                    clearHandlerMessage();
                } else if (i9 != 7) {
                    if (i9 == 9 && (value = this._lastCallingRoomItemData.getValue()) != null) {
                        value.setCallTimestamp(System.currentTimeMillis());
                    }
                } else {
                    CallingDuringLivingModel.StartCallModel value4 = this._lastCallingRoomItemData.getValue();
                    if (value4 != null) {
                        this._lastCallStatusRoomItemData.setValue(new CallingDuringLivingModel.AcceptedCallModel(value4.getRoomItemData(), value4.getType(), tRTCSignalMessage.getMessageModel()));
                    }
                    this._lastCallingRoomItemData.setValue(null);
                    clearHandlerMessage();
                }
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public /* bridge */ /* synthetic */ void onRecvMessageRevoked(String str) {
        a8.b.a(this, str);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartFeeEvent(@NotNull StartFeeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        CallingDuringLivingModel.StartCallModel value = this._lastCallingRoomItemData.getValue();
        if (value != null) {
            CallModel callModel = value.getCallModel();
            if (Intrinsics.areEqual(callModel != null ? callModel.matchLogId : null, event.getCallId())) {
                value.setCallTimestamp(System.currentTimeMillis());
            }
        }
    }

    public final void setCurrentLiveRoom(@Nullable RoomItemData roomItemData) {
        if (roomItemData != null) {
            this._hasCallingPermission.setValue(Boolean.valueOf(!roomItemData.isMultiLiveRoom() && roomItemData.canMakeVideoOrAudioCall()));
            return;
        }
        if (this._lastCallingRoomItemData.getValue() != null) {
            endLastCalling(3);
            this._lastCallingRoomItemData.setValue(null);
            this._lastCallStatusRoomItemData.setValue(null);
        }
        this._hasCallingPermission.setValue(Boolean.FALSE);
    }

    public final void startCalling(@NotNull final FragmentActivity fragmentActivity, @NotNull final RoomItemData roomItemData) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "fragmentActivity");
        Intrinsics.checkNotNullParameter(roomItemData, "roomItemData");
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().L(fragmentActivity, roomItemData, new ChatBottomFragment.c() { // from class: com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel$startCalling$1
            @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment.c
            public void onCancel(@Nullable Dialog dialog, @Nullable DialogFragment dialogFragment) {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment.c
            public void onVideoClick(@Nullable Dialog dialog, @Nullable DialogFragment dialogFragment) {
                VideoCallDuringLivingViewModel.this.checkPermission(fragmentActivity, roomItemData, 2);
            }

            @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment.c
            public void onVoiceClick(@Nullable Dialog dialog, @Nullable DialogFragment dialogFragment) {
                VideoCallDuringLivingViewModel.this.checkPermission(fragmentActivity, roomItemData, 1);
            }
        });
    }

    public final void unfreezeLiveRoom(@NotNull BroadCastFragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new VideoCallDuringLivingViewModel$unfreezeLiveRoom$1(fragment, this, null), 2, null);
    }
}
