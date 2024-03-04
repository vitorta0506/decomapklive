package androidx.webkit;

import android.os.Handler;
import android.webkit.WebMessagePort;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.reflect.InvocationHandler;
/* loaded from: classes.dex */
public abstract class WebMessagePortCompat {

    /* loaded from: classes.dex */
    public static abstract class WebMessageCallbackCompat {
        public void onMessage(@NonNull WebMessagePortCompat webMessagePortCompat, @Nullable WebMessageCompat webMessageCompat) {
        }
    }

    public abstract void close();

    @NonNull
    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public abstract WebMessagePort getFrameworkPort();

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public abstract InvocationHandler getInvocationHandler();

    public abstract void postMessage(@NonNull WebMessageCompat webMessageCompat);

    public abstract void setWebMessageCallback(@Nullable Handler handler, @NonNull WebMessageCallbackCompat webMessageCallbackCompat);

    public abstract void setWebMessageCallback(@NonNull WebMessageCallbackCompat webMessageCallbackCompat);
}
