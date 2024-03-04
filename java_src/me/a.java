package me;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
import pe.b;
/* loaded from: classes4.dex */
public final class a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final oe.a f55009a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f55010b;

    public a(@NonNull String str, @NonNull oe.a aVar) {
        this.f55010b = str;
        this.f55009a = aVar;
    }

    @Nullable
    private static String b(Context context) {
        CharSequence applicationLabel;
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.setPackage(packageName);
        intent.addCategory("android.intent.category.LAUNCHER");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (activityInfo != null && !TextUtils.isEmpty(activityInfo.nonLocalizedLabel)) {
                return resolveInfo.activityInfo.nonLocalizedLabel.toString();
            }
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 0);
            if (applicationInfo != null && (applicationLabel = packageManager.getApplicationLabel(applicationInfo)) != null) {
                return applicationLabel.toString();
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }

    @NonNull
    public final Intent a(@NonNull Context context, @NonNull KitPluginType kitPluginType, boolean z10) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setDataAndType(Uri.parse(String.format("snapchat://%s?link=%s", this.f55009a.c(), this.f55010b)), this.f55009a.d());
        Uri b10 = b.b(context, this.f55009a.e());
        this.f55009a.f();
        if (b10 != null) {
            intent.putExtra("android.intent.extra.STREAM", b10);
        }
        String a10 = this.f55009a.a();
        if (!TextUtils.isEmpty(a10)) {
            intent.putExtra("attachmentUrl", a10);
        }
        String b11 = this.f55009a.b();
        if (!TextUtils.isEmpty(b11)) {
            intent.putExtra("captionText", b11);
        }
        oe.a aVar = this.f55009a;
        if (aVar instanceof oe.b) {
            oe.b bVar = (oe.b) aVar;
            String j10 = bVar.j();
            String i9 = bVar.i();
            if (!TextUtils.isEmpty(j10)) {
                intent.putExtra("lensUUID", j10);
            } else if (!TextUtils.isEmpty(i9)) {
                intent.putExtra("lensId", i9);
            }
            if (!TextUtils.isEmpty(j10) || !TextUtils.isEmpty(i9)) {
                String k10 = bVar.k();
                if (!TextUtils.isEmpty(k10)) {
                    intent.putExtra("lensLaunchData", k10);
                }
            }
        }
        if (kitPluginType != KitPluginType.NO_PLUGIN) {
            intent.putExtra("kitPluginType", kitPluginType.toString());
        }
        intent.putExtra("sdk_is_from_react_native_plugin", z10);
        String b12 = b(context);
        if (!TextUtils.isEmpty(b12)) {
            intent.putExtra("CLIENT_APP_NAME", b12);
        }
        return intent;
    }
}
