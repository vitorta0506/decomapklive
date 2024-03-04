package v9;

import android.app.Activity;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.widget.ShareDialog;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.utils.DelayIniter;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public class a {
    public static void a(Activity activity, String str, String str2, String str3) {
        DelayIniter.initFacebook();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        if (!TextUtils.isEmpty(str3) && !str3.equals(str2)) {
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            sb2.append(str3);
        }
        new ShareDialog(activity).show(new ShareLinkContent.Builder().setQuote(sb2.toString()).setContentUrl(Uri.parse(str)).build(), ShareDialog.Mode.AUTOMATIC);
    }

    public static void b(Activity activity, VideoItem videoItem) {
        DelayIniter.initFacebook();
        new ShareDialog(activity).show(new ShareLinkContent.Builder().setContentUrl(Uri.parse(videoItem.getShortUrl())).build(), ShareDialog.Mode.AUTOMATIC);
    }

    public static void c(Activity activity, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        DelayIniter.initFacebook();
        new ShareDialog(activity).show(new ShareLinkContent.Builder().setContentUrl(Uri.parse(str)).build(), ShareDialog.Mode.AUTOMATIC);
    }
}
