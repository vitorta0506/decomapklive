package xc;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Locale;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
class e {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final PackageInfo f59685a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f59686b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private String f59687c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(@NonNull Context context, @NonNull String str) {
        this.f59685a = a(context);
        this.f59686b = str;
    }

    @Nullable
    private static PackageInfo a(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException unused) {
            throw null;
        }
    }

    @NonNull
    public String b() {
        String str = this.f59687c;
        if (str != null) {
            return str;
        }
        PackageInfo packageInfo = this.f59685a;
        String str2 = packageInfo == null ? "UNK" : packageInfo.packageName;
        String str3 = packageInfo != null ? packageInfo.versionName : "UNK";
        Locale locale = Locale.getDefault();
        String str4 = str2 + FileUtils.RES_PREFIX_STORAGE + str3 + " ChannelSDK/" + this.f59686b + " (Linux; U; Android " + Build.VERSION.RELEASE + "; " + locale.getLanguage() + "-" + locale.getCountry() + "; " + Build.MODEL + " Build/" + Build.ID + ")";
        this.f59687c = str4;
        return str4;
    }
}
