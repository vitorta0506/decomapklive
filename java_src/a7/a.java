package a7;

import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.guochao.component.liveroom.model.GCLiveRoomUserInfo;
import com.guochao.component.liveroomcommon.interfaces.LiveRoomTopInfoController;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public final /* synthetic */ class a {
    public static void a(LiveRoomTopInfoController liveRoomTopInfoController, @NotNull GCLiveRoomUserInfo gcLiveRoomUserInfo) {
        Intrinsics.checkNotNullParameter(gcLiveRoomUserInfo, "gcLiveRoomUserInfo");
        LiveRoomTopInfoController.ViewHolder viewHolder = liveRoomTopInfoController.getViewHolder();
        if (viewHolder == null) {
            return;
        }
        viewHolder.getNickName().setText(gcLiveRoomUserInfo.getNickName());
        TextView liveRoomId = viewHolder.getLiveRoomId();
        if (liveRoomId != null) {
            liveRoomId.setText(gcLiveRoomUserInfo.getUserId());
        }
        ImageView avatar = viewHolder.getAvatar();
        if (avatar != null) {
            c.v(avatar).r(gcLiveRoomUserInfo.getAvatarUrl()).Q0(avatar);
        }
    }
}
