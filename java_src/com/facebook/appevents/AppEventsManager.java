package com.facebook.appevents;

import androidx.annotation.RestrictTo;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/facebook/appevents/AppEventsManager;", "", "()V", "start", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class AppEventsManager {
    @NotNull
    public static final AppEventsManager INSTANCE = new AppEventsManager();

    private AppEventsManager() {
    }

    @JvmStatic
    public static final void start() {
        if (CrashShieldHandler.isObjectCrashing(AppEventsManager.class)) {
            return;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FetchedAppSettingsManager.getAppSettingsAsync(new AppEventsManager$start$1());
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, AppEventsManager.class);
        }
    }
}
