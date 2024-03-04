package o9;

import android.content.Context;
import b8.e;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.chat.models.TipsMessage;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import java.nio.charset.StandardCharsets;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class a {
    public V2TIMOfflinePushInfo a(ChatStatusBean chatStatusBean, String str, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        String userName = e.g().c().getUserName();
        V2TIMOfflinePushInfo v2TIMOfflinePushInfo = new V2TIMOfflinePushInfo();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fromUserId", e.g().c().getUserId());
            jSONObject.put("fromNickName", userName);
            jSONObject.put("toUserId", str);
            v2TIMOfflinePushInfo.setExt(jSONObject.toString().getBytes(StandardCharsets.UTF_8));
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        v2TIMOfflinePushInfo.setDesc(aVar.getSummary());
        v2TIMOfflinePushInfo.setTitle(userName);
        v2TIMOfflinePushInfo.setIgnoreIOSBadge(true);
        v2TIMOfflinePushInfo.disablePush(false);
        if (chatStatusBean != null && chatStatusBean.getChat_switch() == 0) {
            v2TIMOfflinePushInfo.disablePush(true);
        }
        if (aVar instanceof TipsMessage) {
            v2TIMOfflinePushInfo.disablePush(true);
        }
        if (!aVar.shouldAddToServer()) {
            v2TIMOfflinePushInfo.disablePush(true);
        }
        List<String> toNoDisturb = i.u().s().getToNoDisturb();
        if (toNoDisturb != null && toNoDisturb.contains(str)) {
            v2TIMOfflinePushInfo.disablePush(true);
        }
        return v2TIMOfflinePushInfo;
    }

    public V2TIMOfflinePushInfo b(String str, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        String userName = e.g().c().getUserName();
        V2TIMOfflinePushInfo v2TIMOfflinePushInfo = new V2TIMOfflinePushInfo();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fromUserId", e.g().c().getUserId());
            jSONObject.put("fromNickName", userName);
            v2TIMOfflinePushInfo.setExt(jSONObject.toString().getBytes(StandardCharsets.UTF_8));
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        v2TIMOfflinePushInfo.setDesc(aVar.getSummary());
        v2TIMOfflinePushInfo.setTitle(userName);
        v2TIMOfflinePushInfo.setIgnoreIOSBadge(true);
        v2TIMOfflinePushInfo.disablePush(false);
        if (aVar instanceof TipsMessage) {
            v2TIMOfflinePushInfo.disablePush(true);
        }
        if (!aVar.shouldAddToServer()) {
            v2TIMOfflinePushInfo.disablePush(true);
        }
        List<String> toNoDisturb = i.u().s().getToNoDisturb();
        if (toNoDisturb != null && toNoDisturb.contains(str)) {
            v2TIMOfflinePushInfo.disablePush(true);
        }
        return v2TIMOfflinePushInfo;
    }

    public abstract void c(Context context);
}
