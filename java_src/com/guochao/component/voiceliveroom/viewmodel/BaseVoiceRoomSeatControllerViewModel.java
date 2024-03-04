package com.guochao.component.voiceliveroom.viewmodel;

import com.guochao.component.voiceliveroom.model.VoiceRoomSeatTokenModel;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0012\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\rH&J\u0018\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\rH&¨\u0006\u0012"}, d2 = {"Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "enterTRTCRoom", "", "roomId", "", "voiceRoomSeatModel", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;", "linkMic", "", "seatIndex", "", "exitRoom", "leaveSeat", "takeSeat", "seatPosition", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class BaseVoiceRoomSeatControllerViewModel extends BaseViewModel<BaseModel> {
    public static /* synthetic */ void leaveSeat$default(BaseVoiceRoomSeatControllerViewModel baseVoiceRoomSeatControllerViewModel, int i9, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: leaveSeat");
        }
        if ((i10 & 1) != 0) {
            i9 = -1;
        }
        baseVoiceRoomSeatControllerViewModel.leaveSeat(i9);
    }

    public abstract void enterTRTCRoom(@NotNull String str, @Nullable VoiceRoomSeatTokenModel voiceRoomSeatTokenModel, boolean z10, int i9);

    public abstract void exitRoom(@NotNull String str);

    public abstract void leaveSeat(int i9);

    public abstract int takeSeat(@NotNull String str, int i9);
}
