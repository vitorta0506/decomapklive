package h0;

import android.content.Context;
import h0.d;
import java.io.File;
/* loaded from: classes.dex */
public final class f extends d {

    /* loaded from: classes.dex */
    class a implements d.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f40251a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f40252b;

        a(Context context, String str) {
            this.f40251a = context;
            this.f40252b = str;
        }

        @Override // h0.d.b
        public File a() {
            File cacheDir = this.f40251a.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f40252b != null ? new File(cacheDir, this.f40252b) : cacheDir;
        }
    }

    public f(Context context) {
        this(context, "image_manager_disk_cache", 262144000L);
    }

    public f(Context context, String str, long j10) {
        super(new a(context, str), j10);
    }
}
