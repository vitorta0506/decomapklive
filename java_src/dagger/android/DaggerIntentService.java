package dagger.android;

import android.app.IntentService;
/* loaded from: classes5.dex */
public abstract class DaggerIntentService extends IntentService {
    @Override // android.app.IntentService, android.app.Service
    public void onCreate() {
        a.d(this);
        super.onCreate();
    }
}
