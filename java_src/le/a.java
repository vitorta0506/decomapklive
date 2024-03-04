package le;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
import com.snapchat.kit.sdk.creative.R$string;
import com.snapchat.kit.sdk.creative.api.SnapCreativeKitSendError;
import com.snapchat.kit.sdk.creative.internal.SnapCreativeShareResultHandler;
/* loaded from: classes4.dex */
public class a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f54316a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f54317b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private ke.c f54318c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final de.b<ServerEvent> f54319d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final ke.a f54320e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f54321f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private KitPluginType f54322g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f54323h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, String str, @Nullable String str2, ke.c cVar, de.b<ServerEvent> bVar, ke.a aVar, KitPluginType kitPluginType, boolean z10) {
        this.f54316a = context;
        this.f54317b = str;
        this.f54321f = str2;
        this.f54318c = cVar;
        this.f54319d = bVar;
        this.f54320e = aVar;
        this.f54322g = kitPluginType;
        this.f54323h = z10;
    }

    public void a(@NonNull oe.a aVar, @Nullable c cVar) {
        long currentTimeMillis = System.currentTimeMillis();
        me.a aVar2 = new me.a(this.f54317b, aVar);
        String str = pe.a.f56800a;
        PackageManager packageManager = this.f54316a.getPackageManager();
        if (!pe.b.c(packageManager, str)) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(String.format("https://play.google.com/store/apps/details?id=%s", str)));
            intent.setFlags(268435456);
            this.f54316a.startActivity(intent);
            this.f54318c.a("sendToPlayStore");
            if (cVar != null) {
                cVar.a(SnapCreativeKitSendError.SNAPCHAT_NOT_INSTALLED);
                return;
            }
            return;
        }
        this.f54318c.a("sendIntentToApp");
        Intent a10 = aVar2.a(this.f54316a, this.f54322g, this.f54323h);
        a10.setPackage(str);
        a10.putExtra("CLIENT_ID", this.f54317b);
        a10.putExtra("KIT_VERSION", "1.13.2");
        a10.putExtra("KIT_VERSION_CODE", 40);
        a10.putExtra("deep_link_intent", true);
        if (!TextUtils.isEmpty(this.f54321f)) {
            a10.putExtra("KIT_REDIRECT_URL", this.f54321f);
        }
        Intent intent2 = new Intent(this.f54316a, SnapCreativeShareResultHandler.class);
        int i9 = BasicMeasure.EXACTLY;
        if (Build.VERSION.SDK_INT >= 23) {
            i9 = 1140850688;
        }
        a10.putExtra("RESULT_INTENT", PendingIntent.getBroadcast(this.f54316a, 17, intent2, i9));
        a10.setFlags(335544320);
        if (a10.resolveActivity(packageManager) != null) {
            this.f54319d.push(this.f54320e.a());
            this.f54316a.startActivity(a10);
            this.f54318c.b("sendLatency", System.currentTimeMillis() - currentTimeMillis);
            if (cVar != null) {
                cVar.b();
                return;
            }
            return;
        }
        this.f54318c.a("cannotShareContent");
        Toast.makeText(this.f54316a, R$string.snap_connect_snap_error_cannot_share_content, 0).show();
        if (cVar != null) {
            cVar.a(SnapCreativeKitSendError.SNAPCHAT_CANNOT_SHARE_CONTENT);
        }
    }
}
