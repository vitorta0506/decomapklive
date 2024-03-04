package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;
import kotlinx.coroutines.DebugKt;
import org.light.utils.IOUtils;
import s6.h;
/* loaded from: classes2.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String e(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String f(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String g(Context context) {
        int i9 = Build.VERSION.SDK_INT;
        return context.getPackageManager().hasSystemFeature("android.hardware.type.television") ? "tv" : context.getPackageManager().hasSystemFeature("android.hardware.type.watch") ? "watch" : (i9 < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) ? (i9 < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded" : DebugKt.DEBUG_PROPERTY_VALUE_AUTO;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String h(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? i(installerPackageName) : "";
    }

    private static String i(String str) {
        return str.replace(' ', '_').replace(IOUtils.DIR_SEPARATOR_UNIX, '_');
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<a6.d<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(s6.c.b());
        arrayList.add(com.google.firebase.heartbeatinfo.a.h());
        arrayList.add(s6.h.b("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(s6.h.b("fire-core", "20.1.2"));
        arrayList.add(s6.h.b("device-name", i(Build.PRODUCT)));
        arrayList.add(s6.h.b("device-model", i(Build.DEVICE)));
        arrayList.add(s6.h.b("device-brand", i(Build.BRAND)));
        arrayList.add(s6.h.c("android-target-sdk", new h.a() { // from class: com.google.firebase.f
            @Override // s6.h.a
            public final String a(Object obj) {
                String e10;
                e10 = FirebaseCommonRegistrar.e((Context) obj);
                return e10;
            }
        }));
        arrayList.add(s6.h.c("android-min-sdk", new h.a() { // from class: com.google.firebase.g
            @Override // s6.h.a
            public final String a(Object obj) {
                String f10;
                f10 = FirebaseCommonRegistrar.f((Context) obj);
                return f10;
            }
        }));
        arrayList.add(s6.h.c("android-platform", new h.a() { // from class: com.google.firebase.h
            @Override // s6.h.a
            public final String a(Object obj) {
                String g10;
                g10 = FirebaseCommonRegistrar.g((Context) obj);
                return g10;
            }
        }));
        arrayList.add(s6.h.c("android-installer", new h.a() { // from class: com.google.firebase.e
            @Override // s6.h.a
            public final String a(Object obj) {
                String h10;
                h10 = FirebaseCommonRegistrar.h((Context) obj);
                return h10;
            }
        }));
        String a10 = s6.e.a();
        if (a10 != null) {
            arrayList.add(s6.h.b("kotlin", a10));
        }
        return arrayList;
    }
}
