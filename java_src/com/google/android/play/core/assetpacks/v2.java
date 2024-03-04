package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes2.dex */
final class v2 {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10458c = new com.google.android.play.core.internal.g("PackageStateCache");

    /* renamed from: a  reason: collision with root package name */
    private final Context f10459a;

    /* renamed from: b  reason: collision with root package name */
    private int f10460b = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v2(Context context) {
        this.f10459a = context;
    }

    public final synchronized int a() {
        if (this.f10460b == -1) {
            try {
                this.f10460b = this.f10459a.getPackageManager().getPackageInfo(this.f10459a.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException unused) {
                f10458c.b("The current version of the app could not be retrieved", new Object[0]);
            }
        }
        return this.f10460b;
    }
}
