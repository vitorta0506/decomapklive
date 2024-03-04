package cb;

import android.os.Environment;
import android.os.StatFs;
/* loaded from: classes4.dex */
public class a {
    public static long a(StatFs statFs) {
        if (b.a()) {
            return statFs.getAvailableBytes();
        }
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    public static boolean b(long j10) {
        return a(new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath())) > j10;
    }
}
