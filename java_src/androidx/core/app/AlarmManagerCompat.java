package androidx.core.app;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.os.Build;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public final class AlarmManagerCompat {
    private AlarmManagerCompat() {
    }

    public static void setAlarmClock(@NonNull AlarmManager alarmManager, long j10, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
        alarmManager.setAlarmClock(new AlarmManager.AlarmClockInfo(j10, pendingIntent), pendingIntent2);
    }

    public static void setAndAllowWhileIdle(@NonNull AlarmManager alarmManager, int i9, long j10, @NonNull PendingIntent pendingIntent) {
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setAndAllowWhileIdle(i9, j10, pendingIntent);
        } else {
            alarmManager.set(i9, j10, pendingIntent);
        }
    }

    public static void setExact(@NonNull AlarmManager alarmManager, int i9, long j10, @NonNull PendingIntent pendingIntent) {
        alarmManager.setExact(i9, j10, pendingIntent);
    }

    public static void setExactAndAllowWhileIdle(@NonNull AlarmManager alarmManager, int i9, long j10, @NonNull PendingIntent pendingIntent) {
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setExactAndAllowWhileIdle(i9, j10, pendingIntent);
        } else {
            setExact(alarmManager, i9, j10, pendingIntent);
        }
    }
}
