package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class t3 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10435a;

    public t3(Context context) {
        this.f10435a = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String b(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null) {
                return null;
            }
            return bundle.getString("local_testing_dir");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context a() {
        return this.f10435a;
    }
}
