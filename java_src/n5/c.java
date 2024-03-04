package n5;

import com.google.api.core.NanoClock;
import com.google.api.gax.retrying.RetrySettings;
/* loaded from: classes2.dex */
public class c extends o5.b {
    private c(RetrySettings retrySettings, k5.a aVar) {
        super(retrySettings, aVar);
    }

    public static c a(RetrySettings retrySettings) {
        return new c(retrySettings, NanoClock.getDefaultClock());
    }
}
