package com.snapchat.kit.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
import com.snapchat.kit.sdk.core.metrics.model.SnapKitInitType;
import com.snapchat.kit.sdk.h;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class b {
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    protected static b f29474b;

    /* renamed from: a  reason: collision with root package name */
    private final be.b f29475a;

    /* loaded from: classes4.dex */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ be.b f29476a;

        a(be.b bVar) {
            this.f29476a = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ProcessLifecycleOwner.get().getLifecycle().addObserver(this.f29476a.k());
        }
    }

    /* renamed from: com.snapchat.kit.sdk.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static class RunnableC0290b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f29477a;

        RunnableC0290b(Context context) {
            this.f29477a = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            b.c(this.f29477a, SnapKitInitType.INIT_TYPE_AUTO);
        }
    }

    private b(@NonNull Context context, SnapKitInitType snapKitInitType) throws IllegalStateException {
        KitPluginType kitPluginType;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null) {
                String string = bundle.getString("com.snapchat.kit.sdk.clientId");
                String string2 = bundle.getString("com.snapchat.kit.sdk.redirectUrl", "");
                int i9 = bundle.getInt("com.snapchat.kit.sdk.scopes", 0);
                String[] stringArray = i9 == 0 ? new String[0] : context.getResources().getStringArray(i9);
                if (!TextUtils.isEmpty(string)) {
                    try {
                        kitPluginType = KitPluginType.valueOf(bundle.getString("com.snapchat.kit.sdk.plugin", ""));
                    } catch (IllegalArgumentException | NullPointerException unused) {
                        kitPluginType = KitPluginType.NO_PLUGIN;
                    }
                    KitPluginType kitPluginType2 = kitPluginType;
                    be.b a10 = g.m().b(new k(context, string, string2, Arrays.asList(stringArray), snapKitInitType, kitPluginType2, bundle.getBoolean("com.snapchat.kit.sdk.isFromReactNativePlugin", false), bundle.getString("com.snapchat.kit.sdk.firebaseExtCustomTokenUrl", null))).a();
                    this.f29475a = a10;
                    a10.d().post(new a(a10));
                    return;
                }
                throw new IllegalStateException("client id must be set!");
            }
            throw new IllegalStateException("No metadata for the current app!");
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new IllegalStateException("Could not get metadata for current package");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void b(@NonNull Context context) {
        new h.a((byte) 0);
        h hVar = new h((byte) 0);
        hVar.a().schedule(new RunnableC0290b(context), 5L, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static synchronized b c(@NonNull Context context, SnapKitInitType snapKitInitType) {
        b bVar;
        synchronized (b.class) {
            if (f29474b == null) {
                f29474b = new b(context.getApplicationContext(), snapKitInitType);
            }
            bVar = f29474b;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static be.b d(@NonNull Context context) {
        return c(context, SnapKitInitType.INIT_TYPE_FEATURE).f29475a;
    }
}
