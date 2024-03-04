package b9;

import android.media.MediaPlayer;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.trtc.call.CallingActivity;
import com.guochao.faceshow.aaspring.utils.AppManager;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: d  reason: collision with root package name */
    private static a f1199d;

    /* renamed from: a  reason: collision with root package name */
    private MediaPlayer f1200a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1201b;

    /* renamed from: c  reason: collision with root package name */
    private int f1202c;

    private a() {
    }

    public static a a() {
        if (f1199d == null) {
            synchronized (a.class) {
                if (f1199d == null) {
                    f1199d = new a();
                }
            }
        }
        return f1199d;
    }

    public void b() {
        this.f1201b = false;
        this.f1202c = 0;
    }

    public void c() {
        int i9 = this.f1202c + 1;
        this.f1202c = i9;
        if (i9 >= 3) {
            this.f1202c = 0;
            this.f1201b = false;
            MediaPlayer mediaPlayer = this.f1200a;
            if (mediaPlayer != null) {
                mediaPlayer.pause();
                this.f1200a.seekTo(0);
            }
        }
    }

    public void d() {
        this.f1201b = false;
        MediaPlayer mediaPlayer = this.f1200a;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f1200a.release();
        }
        this.f1200a = null;
        this.f1202c = 0;
    }

    public void e() {
        if (AppManager.getInstance().containActivity(CallingActivity.class)) {
            return;
        }
        if (this.f1200a == null) {
            MediaPlayer create = MediaPlayer.create(BaseApplication.getInstance(), (int) R.raw.keypress_spacebar);
            this.f1200a = create;
            create.setLooping(false);
        }
        if (this.f1201b) {
            return;
        }
        this.f1201b = true;
        this.f1200a.start();
    }
}
