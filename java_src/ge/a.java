package ge;

import com.snapchat.kit.sdk.core.metrics.model.KitEventBase;
import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
import com.snapchat.kit.sdk.core.metrics.model.KitType;
import java.util.Locale;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f40032a;

    /* renamed from: b  reason: collision with root package name */
    private final KitPluginType f40033b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f40034c;

    /* renamed from: d  reason: collision with root package name */
    private String f40035d = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, KitPluginType kitPluginType, boolean z10) {
        this.f40032a = str;
        this.f40033b = kitPluginType;
        this.f40034c = z10;
    }

    public KitEventBase a(KitType kitType, String str) {
        KitEventBase.Builder kit_user_agent = new KitEventBase.Builder().kit_variant(kitType).kit_variant_version(str).oauth_client_id(this.f40032a).kit_user_agent(ie.e.f41041a);
        Locale locale = Locale.getDefault();
        return kit_user_agent.locale(locale == null ? "" : locale.toString()).kit_client_timestamp_millis(Long.valueOf(System.currentTimeMillis())).kit_plugin_type(this.f40033b).is_from_react_native_plugin(Boolean.valueOf(this.f40034c)).build();
    }

    public KitEventBase b() {
        return a(KitType.LOGIN_KIT, this.f40035d);
    }
}
