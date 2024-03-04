package com.bumptech.glide.manager;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi(26)
/* loaded from: classes.dex */
final class e implements g, ComponentCallbacks2 {
    @Override // com.bumptech.glide.manager.g
    public void a(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        onTrimMemory(20);
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i9) {
    }
}
