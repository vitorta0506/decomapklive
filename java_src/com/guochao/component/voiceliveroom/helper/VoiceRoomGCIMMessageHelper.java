package com.guochao.component.voiceliveroom.helper;

import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\tH\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0011H\u0016R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;", "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;", "gcimMessage", "", "feeChange", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;", DeviceRequestsHelper.DEVICE_INFO_MODEL, "userOnSeat", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveSeatMessageModel;", "userLeaveSeat", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;", "userEnterRoom", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;", "userLeaveRoom", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;", "userSwitchSeat", "Lo7/a;", "", "dispatchGCIMMessage", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "<init>", "(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)V", "component_liveroom_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class VoiceRoomGCIMMessageHelper implements GCIMMessageDispatcher {
    @NotNull
    private final VoiceRoomSeatControllerViewModel viewModel;

    public VoiceRoomGCIMMessageHelper(@NotNull VoiceRoomSeatControllerViewModel viewModel) {
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        this.viewModel = viewModel;
    }

    private final void feeChange(VoiceRoomCMDMessageModel.VoiceRoomCMDFeeChangeMessageModel voiceRoomCMDFeeChangeMessageModel) {
        this.viewModel.feeChange(voiceRoomCMDFeeChangeMessageModel);
    }

    private final void userEnterRoom(VoiceRoomCMDMessageModel.VoiceRoomCMDUserEnterRoomMessageModel voiceRoomCMDUserEnterRoomMessageModel) {
        this.viewModel.userEnterRoom(voiceRoomCMDUserEnterRoomMessageModel);
    }

    private final void userLeaveRoom(VoiceRoomCMDMessageModel.VoiceRoomCMDUserLeaveRoomMessageModel voiceRoomCMDUserLeaveRoomMessageModel) {
        this.viewModel.userLeaveRoom(voiceRoomCMDUserLeaveRoomMessageModel);
    }

    private final void userLeaveSeat(VoiceRoomCMDMessageModel.VoiceRoomCMDUserLeaveSeatMessageModel voiceRoomCMDUserLeaveSeatMessageModel) {
        this.viewModel.removeSeatValueOnSeatIndex(voiceRoomCMDUserLeaveSeatMessageModel.getSeatIndex());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void userOnSeat(VoiceRoomCMDMessageModel.VoiceRoomCMDUserOnSeatMessageModel voiceRoomCMDUserOnSeatMessageModel) {
        List<VoiceRoomUserOnSeatModel> microList;
        boolean z10;
        VoiceRoomInfoModel value = this.viewModel.getRoomInfo().getValue();
        VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel = null;
        if (value != null && (microList = value.getMicroList()) != null) {
            Iterator<T> it = microList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((VoiceRoomUserOnSeatModel) next).getSeatIndex() == voiceRoomCMDUserOnSeatMessageModel.getSeatIndex()) {
                    z10 = true;
                    continue;
                } else {
                    z10 = false;
                    continue;
                }
                if (z10) {
                    voiceRoomUserOnSeatModel = next;
                    break;
                }
            }
            voiceRoomUserOnSeatModel = voiceRoomUserOnSeatModel;
        }
        if (voiceRoomUserOnSeatModel != null) {
            voiceRoomUserOnSeatModel.setSeatStatus(2);
        } else {
            this.viewModel.addUserOnSeat(new VoiceRoomUserOnSeatModel(voiceRoomCMDUserOnSeatMessageModel.getSeatIndex(), 2, 0, voiceRoomCMDUserOnSeatMessageModel.getUserId(), voiceRoomCMDUserOnSeatMessageModel.getNickName(), 0, 0, voiceRoomCMDUserOnSeatMessageModel.getSmallImg(), null, null, null, 0, null, voiceRoomCMDUserOnSeatMessageModel.getId(), 0, null, 57184, null));
        }
    }

    private final void userSwitchSeat(VoiceRoomCMDMessageModel.VoiceRoomCMDSwitchSeatMessageModel voiceRoomCMDSwitchSeatMessageModel) {
        this.viewModel.userSwitchSeat(voiceRoomCMDSwitchSeatMessageModel);
    }

    @Override // com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher
    public boolean dispatchGCIMMessage(@NotNull o7.a gcimMessage) {
        Intrinsics.checkNotNullParameter(gcimMessage, "gcimMessage");
        if (gcimMessage instanceof VoiceRoomCMDMessageModel) {
            VoiceRoomCMDMessageModel voiceRoomCMDMessageModel = (VoiceRoomCMDMessageModel) gcimMessage;
            if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDUserEnterRoomMessageModel) {
                userEnterRoom((VoiceRoomCMDMessageModel.VoiceRoomCMDUserEnterRoomMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDUserLeaveRoomMessageModel) {
                userLeaveRoom((VoiceRoomCMDMessageModel.VoiceRoomCMDUserLeaveRoomMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDUserOnSeatMessageModel) {
                userOnSeat((VoiceRoomCMDMessageModel.VoiceRoomCMDUserOnSeatMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDUserLeaveSeatMessageModel) {
                userLeaveSeat((VoiceRoomCMDMessageModel.VoiceRoomCMDUserLeaveSeatMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDSwitchSeatMessageModel) {
                userSwitchSeat((VoiceRoomCMDMessageModel.VoiceRoomCMDSwitchSeatMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDFeeChangeMessageModel) {
                feeChange((VoiceRoomCMDMessageModel.VoiceRoomCMDFeeChangeMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDLockSeatMessageModel) {
                this.viewModel.lockSeat((VoiceRoomCMDMessageModel.VoiceRoomCMDLockSeatMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDUnlockSeatMessageModel) {
                this.viewModel.unlockSeat((VoiceRoomCMDMessageModel.VoiceRoomCMDUnlockSeatMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDOpenMicroMessageModel) {
                this.viewModel.cmdOpenMicro((VoiceRoomCMDMessageModel.VoiceRoomCMDOpenMicroMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDCloseMicroMessageModel) {
                this.viewModel.cmdCloseMicro((VoiceRoomCMDMessageModel.VoiceRoomCMDCloseMicroMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDSeatListMessageModel) {
                this.viewModel.seatListRefresh((VoiceRoomCMDMessageModel.VoiceRoomCMDSeatListMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDVoiceRoomInfoMessageModel) {
                this.viewModel.roomInfoRefresh((VoiceRoomCMDMessageModel.VoiceRoomCMDVoiceRoomInfoMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDRoomSettingChangeMessageModel) {
                this.viewModel.roomInfoChange((VoiceRoomCMDMessageModel.VoiceRoomCMDRoomSettingChangeMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDKickMessageModel) {
                this.viewModel.checkKickUser((VoiceRoomCMDMessageModel.VoiceRoomCMDKickMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDAddAdminMessageModel) {
                this.viewModel.checkAdminUser((VoiceRoomCMDMessageModel.VoiceRoomCMDAddAdminMessageModel) gcimMessage);
                return false;
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveAdminMessageModel) {
                this.viewModel.checkRemoveAdminUser((VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveAdminMessageModel) gcimMessage);
                return false;
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveMemberMessageModel) {
                this.viewModel.checkRemoveMember((VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveMemberMessageModel) gcimMessage);
                return false;
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDSeatModeMessageModel) {
                this.viewModel.roomModeChanged((VoiceRoomCMDMessageModel.VoiceRoomCMDSeatModeMessageModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDViewerModel) {
                this.viewModel.updateFirstViewerData((VoiceRoomCMDMessageModel.VoiceRoomCMDViewerModel) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDFreeze) {
                this.viewModel.freeze((VoiceRoomCMDMessageModel.VoiceRoomCMDFreeze) gcimMessage);
            } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDReset) {
                this.viewModel.reSet((VoiceRoomCMDMessageModel.VoiceRoomCMDReset) gcimMessage);
            }
            return false;
        }
        return false;
    }
}
