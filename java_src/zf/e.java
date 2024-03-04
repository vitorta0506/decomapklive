package zf;

import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes5.dex */
public class e {
    public static void a(@NonNull String str, @NonNull String str2) throws IOException {
        FileChannel fileChannel;
        FileChannel channel;
        if (str.equalsIgnoreCase(str2)) {
            return;
        }
        FileChannel fileChannel2 = null;
        try {
            channel = new FileInputStream(new File(str)).getChannel();
        } catch (Throwable th2) {
            th = th2;
            fileChannel = null;
        }
        try {
            fileChannel2 = new FileOutputStream(new File(str2)).getChannel();
            channel.transferTo(0L, channel.size(), fileChannel2);
            channel.close();
            channel.close();
            if (fileChannel2 != null) {
                fileChannel2.close();
            }
        } catch (Throwable th3) {
            th = th3;
            FileChannel fileChannel3 = fileChannel2;
            fileChannel2 = channel;
            fileChannel = fileChannel3;
            if (fileChannel2 != null) {
                fileChannel2.close();
            }
            if (fileChannel != null) {
                fileChannel.close();
            }
            throw th;
        }
    }
}
