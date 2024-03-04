package com.google.android.play.core.assetpacks;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2.dex */
public final class v3 implements com.google.android.play.core.internal.k1 {
    @Override // com.google.android.play.core.internal.k1
    public final /* synthetic */ Object zza() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.google.android.play.core.assetpacks.r3
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, "AssetPackBackgroundExecutor");
            }
        });
        com.google.android.play.core.internal.j1.a(newSingleThreadExecutor);
        return newSingleThreadExecutor;
    }
}
