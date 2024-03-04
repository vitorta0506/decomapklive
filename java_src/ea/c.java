package ea;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.ScanActivity;
import java.util.Map;
/* loaded from: classes3.dex */
public final class c extends Handler {

    /* renamed from: d  reason: collision with root package name */
    private static final String f38498d = c.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final ScanActivity f38499a;

    /* renamed from: b  reason: collision with root package name */
    private final MultiFormatReader f38500b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f38501c = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(ScanActivity scanActivity, Map<DecodeHintType, Object> map) {
        MultiFormatReader multiFormatReader = new MultiFormatReader();
        this.f38500b = multiFormatReader;
        multiFormatReader.setHints(map);
        this.f38499a = scanActivity;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(byte[] r7, int r8, int r9) {
        /*
            r6 = this;
            int r0 = r7.length
            byte[] r0 = new byte[r0]
            r1 = 0
            r2 = 0
        L5:
            if (r2 >= r9) goto L1d
            r3 = 0
        L8:
            if (r3 >= r8) goto L1a
            int r4 = r3 * r9
            int r4 = r4 + r9
            int r4 = r4 - r2
            int r4 = r4 + (-1)
            int r5 = r2 * r8
            int r5 = r5 + r3
            r5 = r7[r5]
            r0[r4] = r5
            int r3 = r3 + 1
            goto L8
        L1a:
            int r2 = r2 + 1
            goto L5
        L1d:
            com.guochao.faceshow.aaspring.modulars.ugc.activity.ScanActivity r7 = r6.f38499a
            da.c r7 = r7.e0()
            com.google.zxing.PlanarYUVLuminanceSource r7 = r7.a(r0, r9, r8)
            if (r7 == 0) goto L4b
            com.google.zxing.BinaryBitmap r8 = new com.google.zxing.BinaryBitmap
            com.google.zxing.common.HybridBinarizer r9 = new com.google.zxing.common.HybridBinarizer
            r9.<init>(r7)
            r8.<init>(r9)
            com.google.zxing.MultiFormatReader r7 = r6.f38500b     // Catch: java.lang.Throwable -> L3f com.google.zxing.ReaderException -> L46
            com.google.zxing.Result r7 = r7.decodeWithState(r8)     // Catch: java.lang.Throwable -> L3f com.google.zxing.ReaderException -> L46
            com.google.zxing.MultiFormatReader r8 = r6.f38500b
            r8.reset()
            goto L4c
        L3f:
            r7 = move-exception
            com.google.zxing.MultiFormatReader r8 = r6.f38500b
            r8.reset()
            throw r7
        L46:
            com.google.zxing.MultiFormatReader r7 = r6.f38500b
            r7.reset()
        L4b:
            r7 = 0
        L4c:
            com.guochao.faceshow.aaspring.modulars.ugc.activity.ScanActivity r8 = r6.f38499a
            android.os.Handler r8 = r8.g0()
            if (r7 == 0) goto L5f
            if (r8 == 0) goto L69
            r9 = 3
            android.os.Message r7 = android.os.Message.obtain(r8, r9, r7)
            r7.sendToTarget()
            goto L69
        L5f:
            if (r8 == 0) goto L69
            r7 = 2
            android.os.Message r7 = android.os.Message.obtain(r8, r7)
            r7.sendToTarget()
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ea.c.a(byte[], int, int):void");
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (this.f38501c) {
            int i9 = message.what;
            if (i9 == 1) {
                a((byte[]) message.obj, message.arg1, message.arg2);
            } else if (i9 != 5) {
            } else {
                this.f38501c = false;
                Looper.myLooper().quit();
            }
        }
    }
}
