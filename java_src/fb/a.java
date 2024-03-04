package fb;

import android.view.View;
import android.widget.ImageView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.systemassistant.data.AssistantMsgResult;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes4.dex */
public class a {
    public static AssistantMsgResult.MsgData a(String str, int i9, int i10, boolean z10) {
        AssistantMsgResult.MsgData msgData = new AssistantMsgResult.MsgData();
        msgData.MsgTimestamp = String.valueOf(System.currentTimeMillis() / 1000);
        msgData.Type = 203;
        msgData.ImageInfoArray = new ArrayList();
        AssistantMsgResult.ImgInfoItem imgInfoItem = new AssistantMsgResult.ImgInfoItem();
        imgInfoItem.URL = str;
        imgInfoItem.Width = i9;
        imgInfoItem.Height = i10;
        msgData.sendStatus = 1;
        msgData.ImageInfoArray.add(imgInfoItem);
        msgData.MsgId = View.generateViewId();
        msgData.isSelf = z10;
        return msgData;
    }

    public static AssistantMsgResult.MsgData b(String str, boolean z10) {
        AssistantMsgResult.MsgData msgData = new AssistantMsgResult.MsgData();
        msgData.Text = str;
        msgData.Type = 201;
        msgData.MsgTimestamp = String.valueOf(System.currentTimeMillis() / 1000);
        msgData.MsgId = View.generateViewId();
        msgData.isSelf = z10;
        msgData.sendStatus = 1;
        return msgData;
    }

    public static String c() {
        return "172";
    }

    public static void d(ImageView imageView, AssistantMsgResult.MsgData msgData) {
        String str = SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_HEADIMG);
        if (msgData.isSelf) {
            hc.a.h(imageView, str, R.mipmap.default_head);
        } else {
            hc.a.g(imageView, Integer.valueOf((int) R.mipmap.im_icon_guanfang));
        }
    }

    public static boolean e(@Nullable String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("admin");
        arrayList.add("game_admin");
        arrayList.add("-10000");
        arrayList.add("8485396");
        return "172".equalsIgnoreCase(str) || "10000190".equalsIgnoreCase(str) || arrayList.contains(str);
    }
}
