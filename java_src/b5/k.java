package b5;

import android.content.Context;
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f1177c = new com.google.android.play.core.internal.g("SplitInstallInfoProvider");

    /* renamed from: a  reason: collision with root package name */
    private final Context f1178a;

    /* renamed from: b  reason: collision with root package name */
    private final String f1179b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Context context) {
        this.f1178a = context;
        this.f1179b = context.getPackageName();
    }

    public static String a(String str) {
        return str.startsWith("config.") ? "" : str.split("\\.config\\.", 2)[0];
    }

    public static boolean b(String str) {
        return str.startsWith("config.");
    }

    public static boolean c(String str) {
        return str.startsWith("config.") || str.contains(".config.");
    }
}
