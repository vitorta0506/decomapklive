package ea;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.ScanActivity;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes3.dex */
public final class e extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final ScanActivity f38505a;

    /* renamed from: b  reason: collision with root package name */
    private final Hashtable<DecodeHintType, Object> f38506b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f38507c;

    /* renamed from: d  reason: collision with root package name */
    private final CountDownLatch f38508d = new CountDownLatch(1);

    public e(ScanActivity scanActivity, ResultPointCallback resultPointCallback) {
        this.f38505a = scanActivity;
        Hashtable<DecodeHintType, Object> hashtable = new Hashtable<>();
        this.f38506b = hashtable;
        Vector vector = new Vector();
        if (scanActivity.f22379h.isDecodeBarCode()) {
            vector.addAll(b.f38492d);
        }
        vector.addAll(b.f38494f);
        vector.addAll(b.f38493e);
        hashtable.put(DecodeHintType.POSSIBLE_FORMATS, vector);
        hashtable.put(DecodeHintType.CHARACTER_SET, "UTF-8");
        hashtable.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, resultPointCallback);
    }

    public Handler b() {
        try {
            this.f38508d.await();
        } catch (InterruptedException unused) {
        }
        return this.f38507c;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.f38507c = new c(this.f38505a, this.f38506b);
        this.f38508d.countDown();
        Looper.loop();
    }
}
