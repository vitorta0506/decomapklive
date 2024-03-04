package ge;

import android.os.Build;
import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
/* loaded from: classes4.dex */
public final class d implements de.b<ServerEvent> {

    /* renamed from: a  reason: collision with root package name */
    private final i f40046a;

    /* renamed from: b  reason: collision with root package name */
    private final de.d<ServerEvent> f40047b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(i iVar, de.d<ServerEvent> dVar) {
        this.f40046a = iVar;
        this.f40047b = dVar;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [com.snapchat.kit.sdk.core.metrics.model.ServerEvent$Builder] */
    @Override // de.b
    public final /* synthetic */ void push(ServerEvent serverEvent) {
        ServerEvent.Builder os_type = serverEvent.newBuilder2().sequence_id(Long.valueOf(this.f40046a.b())).os_type("Android");
        String str = Build.VERSION.RELEASE;
        if (str == null) {
            str = "";
        }
        this.f40047b.push(os_type.os_version(str).build());
    }
}
