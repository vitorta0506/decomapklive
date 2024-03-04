package z6;

import com.guochao.component.liveroom.model.GCVoiceLiveRoomModel;
/* loaded from: classes3.dex */
public final /* synthetic */ class a {
    public static boolean a(GCVoiceLiveRoomModel gCVoiceLiveRoomModel) {
        return (gCVoiceLiveRoomModel.isVoiceRoomMember() || gCVoiceLiveRoomModel.isVoiceRoomOwner()) ? false : true;
    }
}
