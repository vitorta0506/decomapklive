package org.greenrobot.eventbus.util;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import org.greenrobot.eventbus.Logger;
/* loaded from: classes7.dex */
public class ExceptionToResourceMapping {
    public final Map<Class<? extends Throwable>, Integer> throwableToMsgIdMap = new HashMap();

    public ExceptionToResourceMapping addMapping(Class<? extends Throwable> cls, int i9) {
        this.throwableToMsgIdMap.put(cls, Integer.valueOf(i9));
        return this;
    }

    public Integer mapThrowable(Throwable th2) {
        int i9 = 20;
        Throwable th3 = th2;
        do {
            Integer mapThrowableFlat = mapThrowableFlat(th3);
            if (mapThrowableFlat == null) {
                th3 = th3.getCause();
                i9--;
                if (i9 <= 0 || th3 == th2) {
                    break;
                }
            } else {
                return mapThrowableFlat;
            }
        } while (th3 != null);
        Logger.Default.get().log(Level.FINE, "No specific message resource ID found for " + th2);
        return null;
    }

    protected Integer mapThrowableFlat(Throwable th2) {
        Class<?> cls = th2.getClass();
        Integer num = this.throwableToMsgIdMap.get(cls);
        if (num == null) {
            Class<? extends Throwable> cls2 = null;
            for (Map.Entry<Class<? extends Throwable>, Integer> entry : this.throwableToMsgIdMap.entrySet()) {
                Class<? extends Throwable> key = entry.getKey();
                if (key.isAssignableFrom(cls) && (cls2 == null || cls2.isAssignableFrom(key))) {
                    num = entry.getValue();
                    cls2 = key;
                }
            }
        }
        return num;
    }
}
