package gb;

import android.app.Notification;
import android.app.NotificationManager;
import android.graphics.BitmapFactory;
import androidx.core.app.NotificationCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private NotificationManager f40013a = (NotificationManager) BaseApplication.getInstance().getSystemService(RemoteMessageConst.NOTIFICATION);

    /* renamed from: b  reason: collision with root package name */
    private NotificationCompat.Builder f40014b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        try {
            Notification build = this.f40014b.setContentTitle(BaseApplication.getInstance().getResources().getString(R.string.download_fail)).setContentText(BaseApplication.getInstance().getResources().getString(R.string.download_fail)).setTicker(BaseApplication.getInstance().getResources().getString(R.string.download_fail)).build();
            ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getResources().getString(R.string.download_fail));
            build.flags = 16;
            this.f40013a.notify(1, build);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i9) {
        NotificationCompat.Builder progress = this.f40014b.setProgress(100, i9, false);
        Notification build = progress.setContentText(i9 + "%").build();
        build.flags = 16;
        this.f40013a.notify(1, build);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        Notification build = this.f40014b.setProgress(100, 100, false).setContentTitle(BaseApplication.getInstance().getResources().getString(R.string.downloading_success)).setContentText(BaseApplication.getInstance().getResources().getString(R.string.downloading_success)).build();
        build.flags = 16;
        this.f40013a.notify(1, build);
        this.f40013a.cancel(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(BaseApplication.getInstance(), ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL);
        this.f40014b = builder;
        NotificationCompat.Builder largeIcon = builder.setContentTitle(BaseApplication.getInstance().getResources().getString(R.string.downloading_apk)).setContentText(BaseApplication.getInstance().getResources().getString(R.string.downloading)).setSmallIcon(R.drawable.jpush_notification_icon).setLargeIcon(BitmapFactory.decodeResource(BaseApplication.getInstance().getResources(), R.mipmap.ic_launcher));
        largeIcon.setTicker(BaseApplication.getInstance().getResources().getString(R.string.downloading_apk) + eb.b.y()).setWhen(System.currentTimeMillis()).setProgress(100, 0, false).build().flags = 2;
    }
}
