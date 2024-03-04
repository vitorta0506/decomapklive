package com.guochao.component.voiceliveroom.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.guochao.component.voiceliveroom.model.VoiceRoomSeatTokenModel;
import com.guochao.component.voiceliveroom.repository.VoiceRoomSeatControllerRepository;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.tencent.trtc.TRTCCloud;
import com.tencent.trtc.TRTCCloudDef;
import com.tencent.trtc.TRTCCloudListener;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u000eH\u0016J\b\u00101\u001a\u00020/H\u0004J*\u00102\u001a\u00020/2\u0006\u00103\u001a\u00020\u00142\b\u00104\u001a\u0004\u0018\u0001052\u0006\u00106\u001a\u00020\t2\u0006\u00100\u001a\u00020\u000eH\u0016J\u0010\u00107\u001a\u00020/2\u0006\u00103\u001a\u00020\u0014H\u0016J\u0010\u00108\u001a\u00020/2\u0006\u00100\u001a\u00020\u000eH\u0016J\b\u00109\u001a\u00020/H\u0014J\b\u0010:\u001a\u00020/H\u0002J\b\u0010;\u001a\u00020/H\u0004J\b\u0010<\u001a\u00020/H\u0004J\u0018\u0010=\u001a\u00020\u000e2\u0006\u00103\u001a\u00020\u00142\u0006\u00100\u001a\u00020\u000eH\u0016R(\u0010\u0003\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u00070\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u00020\tX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u000eX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0010\"\u0004\b\u001b\u0010\u0012R\u000e\u0010\u001c\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\u001eX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u001b\u0010!\u001a\u00020\"8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b#\u0010$R\u001a\u0010'\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0010\"\u0004\b)\u0010\u0012R+\u0010*\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u00070+¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-¨\u0006>"}, d2 = {"Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;", "Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;", "()V", "_voiceVolume", "Landroidx/lifecycle/MutableLiveData;", "Ljava/util/ArrayList;", "Lcom/tencent/trtc/TRTCCloudDef$TRTCVolumeInfo;", "Lkotlin/collections/ArrayList;", "isInTRTCRoom", "", "()Z", "setInTRTCRoom", "(Z)V", "lastRoleType", "", "getLastRoleType", "()I", "setLastRoleType", "(I)V", "lastRoomId", "", "getLastRoomId", "()Ljava/lang/String;", "setLastRoomId", "(Ljava/lang/String;)V", "lastSeatIndex", "getLastSeatIndex", "setLastSeatIndex", "reported", "repository", "Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;", "getRepository", "()Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;", "trtcCloud", "Lcom/tencent/trtc/TRTCCloud;", "getTrtcCloud", "()Lcom/tencent/trtc/TRTCCloud;", "trtcCloud$delegate", "Lkotlin/Lazy;", "voiceId", "getVoiceId", "setVoiceId", "voiceVolume", "Landroidx/lifecycle/LiveData;", "getVoiceVolume", "()Landroidx/lifecycle/LiveData;", "addSelfToSeat", "", "seatIndex", "clearData", "enterTRTCRoom", "roomId", "voiceRoomSeatModel", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;", "linkMic", "exitRoom", "leaveSeat", "onCleared", "reportOnSeat", "startAudio", "stopAudio", "takeSeat", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class TRTCVoiceRoomSeatControllerViewModel extends BaseVoiceRoomSeatControllerViewModel {
    @NotNull
    private final MutableLiveData<ArrayList<TRTCCloudDef.TRTCVolumeInfo>> _voiceVolume;
    private boolean isInTRTCRoom;
    private int lastRoleType;
    @NotNull
    private String lastRoomId;
    private int lastSeatIndex;
    private boolean reported;
    @NotNull
    private final VoiceRoomSeatControllerRepository repository = new VoiceRoomSeatControllerRepository();
    @NotNull
    private final Lazy trtcCloud$delegate;
    private int voiceId;
    @NotNull
    private final LiveData<ArrayList<TRTCCloudDef.TRTCVolumeInfo>> voiceVolume;

    public TRTCVoiceRoomSeatControllerViewModel() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<TRTCCloud>() { // from class: com.guochao.component.voiceliveroom.viewmodel.TRTCVoiceRoomSeatControllerViewModel$trtcCloud$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TRTCCloud invoke() {
                return TRTCCloud.sharedInstance(GCApplication.app());
            }
        });
        this.trtcCloud$delegate = lazy;
        this.lastRoomId = "";
        this.lastSeatIndex = -1;
        this.lastRoleType = 30;
        this.voiceId = -1;
        MutableLiveData<ArrayList<TRTCCloudDef.TRTCVolumeInfo>> mutableLiveData = new MutableLiveData<>();
        this._voiceVolume = mutableLiveData;
        this.voiceVolume = mutableLiveData;
        getTrtcCloud().enableAudioVolumeEvaluation(300, true);
        getTrtcCloud().setListener(new TRTCCloudListener() { // from class: com.guochao.component.voiceliveroom.viewmodel.TRTCVoiceRoomSeatControllerViewModel.1
            @Override // com.tencent.trtc.TRTCCloudListener
            public void onEnterRoom(long j10) {
                super.onEnterRoom(j10);
                TRTCVoiceRoomSeatControllerViewModel.this.setInTRTCRoom(true);
                TRTCVoiceRoomSeatControllerViewModel.this.getTrtcCloud().enableAudioVolumeEvaluation(300, true);
            }

            @Override // com.tencent.trtc.TRTCCloudListener
            public void onExitRoom(int i9) {
                super.onExitRoom(i9);
                TRTCVoiceRoomSeatControllerViewModel.this.setInTRTCRoom(false);
            }

            @Override // com.tencent.trtc.TRTCCloudListener
            public void onSendFirstLocalAudioFrame() {
                super.onSendFirstLocalAudioFrame();
                TRTCVoiceRoomSeatControllerViewModel.this.reportOnSeat();
            }

            @Override // com.tencent.trtc.TRTCCloudListener
            public void onUserVoiceVolume(@Nullable ArrayList<TRTCCloudDef.TRTCVolumeInfo> arrayList, int i9) {
                super.onUserVoiceVolume(arrayList, i9);
                TRTCVoiceRoomSeatControllerViewModel.this._voiceVolume.setValue(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reportOnSeat() {
        if (this.lastSeatIndex == -1) {
            return;
        }
        BuildersKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new TRTCVoiceRoomSeatControllerViewModel$reportOnSeat$1(this, null), 2, null);
    }

    public void addSelfToSeat(int i9) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void clearData() {
        this.voiceId = -1;
        this.lastSeatIndex = -1;
        this.reported = false;
    }

    @Override // com.guochao.component.voiceliveroom.viewmodel.BaseVoiceRoomSeatControllerViewModel
    public void enterTRTCRoom(@NotNull String roomId, @Nullable VoiceRoomSeatTokenModel voiceRoomSeatTokenModel, boolean z10, int i9) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        if (this.isInTRTCRoom) {
            this.reported = false;
            getTrtcCloud().switchRole(z10 ? 20 : 21);
            this.lastRoomId = roomId;
            this.lastSeatIndex = i9;
            if (i9 != -1) {
                reportOnSeat();
            }
        } else if (voiceRoomSeatTokenModel == null) {
            return;
        } else {
            this.reported = false;
            TRTCCloud trtcCloud = getTrtcCloud();
            TRTCCloudDef.TRTCParams tRTCParams = new TRTCCloudDef.TRTCParams();
            tRTCParams.sdkAppId = voiceRoomSeatTokenModel.getSdkAppId();
            tRTCParams.userSig = voiceRoomSeatTokenModel.getUserSig();
            tRTCParams.strRoomId = roomId;
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            tRTCParams.userId = current != null ? current.getUserId() : null;
            tRTCParams.role = z10 ? 20 : 21;
            trtcCloud.enterRoom(tRTCParams, 3);
            this.lastRoomId = roomId;
            this.lastSeatIndex = i9;
            reportOnSeat();
        }
        if (z10) {
            addSelfToSeat(i9);
            startAudio();
            return;
        }
        stopAudio();
    }

    @Override // com.guochao.component.voiceliveroom.viewmodel.BaseVoiceRoomSeatControllerViewModel
    public void exitRoom(@NotNull String roomId) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        getTrtcCloud().exitRoom();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getLastRoleType() {
        return this.lastRoleType;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final String getLastRoomId() {
        return this.lastRoomId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getLastSeatIndex() {
        return this.lastSeatIndex;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final VoiceRoomSeatControllerRepository getRepository() {
        return this.repository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final TRTCCloud getTrtcCloud() {
        Object value = this.trtcCloud$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-trtcCloud>(...)");
        return (TRTCCloud) value;
    }

    public final int getVoiceId() {
        return this.voiceId;
    }

    @NotNull
    public final LiveData<ArrayList<TRTCCloudDef.TRTCVolumeInfo>> getVoiceVolume() {
        return this.voiceVolume;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isInTRTCRoom() {
        return this.isInTRTCRoom;
    }

    @Override // com.guochao.component.voiceliveroom.viewmodel.BaseVoiceRoomSeatControllerViewModel
    public void leaveSeat(int i9) {
        getTrtcCloud().switchRole(21);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel, androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        getTrtcCloud().stopLocalAudio();
        getTrtcCloud().exitRoom();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setInTRTCRoom(boolean z10) {
        this.isInTRTCRoom = z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setLastRoleType(int i9) {
        this.lastRoleType = i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setLastRoomId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lastRoomId = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setLastSeatIndex(int i9) {
        this.lastSeatIndex = i9;
    }

    public final void setVoiceId(int i9) {
        this.voiceId = i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void startAudio() {
        getTrtcCloud().startLocalAudio(3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void stopAudio() {
        getTrtcCloud().stopLocalAudio();
    }

    @Override // com.guochao.component.voiceliveroom.viewmodel.BaseVoiceRoomSeatControllerViewModel
    public int takeSeat(@NotNull String roomId, int i9) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        getTrtcCloud().switchRole(20);
        return 1;
    }
}
