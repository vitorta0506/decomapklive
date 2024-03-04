package androidx.core.os;

import android.os.Build;
import android.os.Message;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public final class MessageCompat {
    private static boolean sTryIsAsynchronous = true;
    private static boolean sTrySetAsynchronous = true;

    private MessageCompat() {
    }

    public static boolean isAsynchronous(@NonNull Message message) {
        if (Build.VERSION.SDK_INT >= 22) {
            return message.isAsynchronous();
        }
        if (sTryIsAsynchronous) {
            try {
                return message.isAsynchronous();
            } catch (NoSuchMethodError unused) {
                sTryIsAsynchronous = false;
            }
        }
        return false;
    }

    public static void setAsynchronous(@NonNull Message message, boolean z10) {
        if (Build.VERSION.SDK_INT >= 22) {
            message.setAsynchronous(z10);
        } else if (sTrySetAsynchronous) {
            try {
                message.setAsynchronous(z10);
            } catch (NoSuchMethodError unused) {
                sTrySetAsynchronous = false;
            }
        }
    }
}
