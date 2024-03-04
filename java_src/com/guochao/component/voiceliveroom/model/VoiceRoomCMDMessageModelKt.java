package com.guochao.component.voiceliveroom.model;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.view.InputDeviceCompat;
import androidx.exifinterface.media.ExifInterface;
import com.google.gson.Gson;
import com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0014\u0010\u0006\u001a\u00020\u0007*\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\t¨\u0006\n"}, d2 = {"getClassForType", "Ljava/lang/Class;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;", "type", "", "send", "", "groupId", "", "component_liveroom_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomCMDMessageModelKt {
    @NotNull
    public static final <T extends VoiceRoomCMDMessageModel> Class<T> getClassForType(int i9) {
        switch (i9) {
            case 501:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDUserEnterRoomMessageModel.class;
            case 502:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDUserLeaveRoomMessageModel.class;
            case 503:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDFreeze.class;
            case 504:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDRoomSettingChangeMessageModel.class;
            case 505:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDNatureModel.class;
            case 506:
            case 508:
            case 509:
            case 515:
            case 527:
            case 531:
            case 532:
            case 533:
            case 534:
            case 535:
            case 536:
            case 537:
            case 538:
            default:
                throw new IllegalArgumentException("put your class for type " + i9 + " here");
            case 507:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDFeeChangeMessageModel.class;
            case TypedValues.PositionType.TYPE_POSITION_TYPE /* 510 */:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDAddAdminMessageModel.class;
            case FrameMetricsAggregator.EVERY_DURATION /* 511 */:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveAdminMessageModel.class;
            case 512:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDTobeMemberMessageModel.class;
            case InputDeviceCompat.SOURCE_DPAD /* 513 */:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveMemberMessageModel.class;
            case 514:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDKickMessageModel.class;
            case 516:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDMuteModel.class;
            case 517:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDUnMuteModel.class;
            case 518:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDSeatModeMessageModel.class;
            case 519:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDLockSeatMessageModel.class;
            case 520:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDUnlockSeatMessageModel.class;
            case 521:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDUserOnSeatMessageModel.class;
            case 522:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDUserLeaveSeatMessageModel.class;
            case 523:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDCloseMicroMessageModel.class;
            case 524:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDOpenMicroMessageModel.class;
            case 525:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDSwitchSeatMessageModel.class;
            case 526:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDInviteMessageModel.class;
            case 528:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDVoiceRoomInfoMessageModel.class;
            case 529:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDSeatListMessageModel.class;
            case 530:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDViewerModel.class;
            case 539:
                return VoiceRoomCMDMessageModel.VoiceRoomCMDReset.class;
        }
    }

    public static final void send(@NotNull VoiceRoomCMDMessageModel voiceRoomCMDMessageModel, @Nullable String str) {
        Intrinsics.checkNotNullParameter(voiceRoomCMDMessageModel, "<this>");
        String json = new Gson().toJson(voiceRoomCMDMessageModel);
        Intrinsics.checkNotNullExpressionValue(json, "Gson().toJson(this)");
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        byte[] bytes = json.getBytes(UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        V2TIMManager.getInstance().sendC2CCustomMessage(bytes, str, new V2TIMValueCallback<V2TIMMessage>() { // from class: com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModelKt$send$1
            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, @Nullable String str2) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onSuccess(@Nullable V2TIMMessage v2TIMMessage) {
            }
        });
    }
}
