package w9;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static a f59391b;

    /* renamed from: a  reason: collision with root package name */
    private MediaPlayer f59392a;

    private a() {
    }

    public static a a() {
        if (f59391b == null) {
            synchronized (a.class) {
                if (f59391b == null) {
                    f59391b = new a();
                }
            }
        }
        return f59391b;
    }

    public void b() {
        MediaPlayer mediaPlayer = this.f59392a;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f59392a.release();
            this.f59392a = null;
        }
    }

    public void c(Context context) {
        MediaPlayer create = MediaPlayer.create(context, Uri.parse("android.resource://" + BaseApplication.getInstance().getPackageName() + FileUtils.RES_PREFIX_STORAGE + R.raw.start_call_media));
        this.f59392a = create;
        create.setLooping(true);
        try {
            this.f59392a.prepare();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f59392a.start();
    }
}
