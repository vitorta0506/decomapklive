package k8;

import android.content.Context;
import android.text.TextPaint;
import androidx.annotation.NonNull;
import b8.e;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.MessageUnReadNum;
import com.guochao.faceshow.aaspring.beans.NotificationItem;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
@Deprecated
/* loaded from: classes3.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private static a f53643e;

    /* renamed from: a  reason: collision with root package name */
    private Context f53644a;

    /* renamed from: b  reason: collision with root package name */
    private int f53645b;

    /* renamed from: c  reason: collision with root package name */
    private final List<NotificationItem> f53646c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private List<b> f53647d = new CopyOnWriteArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k8.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0550a extends c<MessageUnReadNum> {
        C0550a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(MessageUnReadNum messageUnReadNum, @NonNull FaceCastBaseResponse<MessageUnReadNum> faceCastBaseResponse) {
            if (messageUnReadNum == null) {
                return;
            }
            BaseApplication baseApplication = BaseApplication.getInstance();
            SpUtils.setStr(baseApplication, MessageUnReadNum.class.getSimpleName() + e.g().getUserId(), GsonGetter.getGson().toJson(messageUnReadNum));
            a.this.f(messageUnReadNum);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<MessageUnReadNum> aVar) {
            BaseApplication baseApplication = BaseApplication.getInstance();
            MessageUnReadNum messageUnReadNum = (MessageUnReadNum) GsonGetter.getGson().fromJson(SpUtils.getStr(baseApplication, MessageUnReadNum.class.getSimpleName() + e.g().getUserId(), ""), (Class<Object>) MessageUnReadNum.class);
            if (messageUnReadNum != null) {
                a.this.f(messageUnReadNum);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(List<NotificationItem> list);
    }

    a() {
    }

    public static a c() {
        if (f53643e == null) {
            synchronized (a.class) {
                if (f53643e == null) {
                    f53643e = new a();
                }
            }
        }
        return f53643e;
    }

    private void g() {
        ArrayList arrayList = new ArrayList();
        int[] iArr = {R.mipmap.im_icon_dianzan, R.mipmap.im_icon_pinglun, R.mipmap.im_icon_w_at};
        int[] iArr2 = {R.string.push_Likes, R.string.push_notification_setting_comments, R.string.push_AtMe};
        for (int i9 = 0; i9 < 3; i9++) {
            NotificationItem notificationItem = new NotificationItem();
            notificationItem.setDisplayTitle(this.f53644a.getString(iArr2[i9]));
            notificationItem.setTitleId(iArr2[i9]);
            notificationItem.setIconId(iArr[i9]);
            if (i9 == 0) {
                notificationItem.setType(5);
            } else if (i9 == 1) {
                notificationItem.setType(7);
            } else if (i9 == 2) {
                notificationItem.setType(9);
            }
            arrayList.add(notificationItem);
        }
        h(arrayList);
    }

    public void a() {
        Collections.sort(this.f53646c);
        for (b bVar : this.f53647d) {
            bVar.a(this.f53646c);
        }
    }

    public NotificationItem b(int i9) {
        for (int i10 = 0; i10 < this.f53646c.size(); i10++) {
            if (i9 == this.f53646c.get(i10).getType()) {
                return this.f53646c.get(i10);
            }
        }
        return new NotificationItem();
    }

    public void d(Context context) {
        this.f53644a = context.getApplicationContext();
        g();
    }

    public void e() {
        new PostRequest("tokens/message/push/info/findALLReadNumByUserId").K(false).b(new C0550a()).L();
    }

    public void f(MessageUnReadNum messageUnReadNum) {
        b(9).setUnreadNumber(messageUnReadNum.getAtNum());
        b(7).setUnreadNumber(messageUnReadNum.getCommentNum());
        b(5).setUnreadNumber(messageUnReadNum.getLikeNum());
        a();
    }

    public void h(List<NotificationItem> list) {
        this.f53646c.clear();
        this.f53646c.addAll(list);
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(DensityUtil.dp2px(this.f53644a, 12.0f));
        int i9 = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            i9 = Math.max(TextViewUtils.calTextWidth(textPaint, this.f53644a.getString(list.get(i10).getTitleId()) + " "), i9);
        }
        this.f53645b = i9 + 5;
    }

    public void registerNotificationListener(b bVar) {
        this.f53647d.add(bVar);
        if (this.f53646c.size() > 0) {
            bVar.a(this.f53646c);
        }
    }

    public void removeNotificationListener(b bVar) {
        this.f53647d.remove(bVar);
    }
}
