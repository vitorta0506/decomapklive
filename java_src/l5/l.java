package l5;

import com.google.auth.Credentials;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.auth.oauth2.ServiceAccountCredentials;
import com.google.auth.oauth2.ServiceAccountJwtAccessCredentials;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import l5.b;
/* loaded from: classes2.dex */
public abstract class l implements f {

    /* loaded from: classes2.dex */
    public static abstract class a {
        abstract l a();

        public l b() {
            g(ImmutableList.copyOf((Collection) d()));
            f(ImmutableList.copyOf((Collection) c()));
            h(e());
            return a();
        }

        public abstract List<String> c();

        public abstract List<String> d();

        public abstract boolean e();

        public abstract a f(List<String> list);

        public abstract a g(List<String> list);

        public abstract a h(boolean z10);
    }

    public static a f() {
        return new b.C0558b().f(ImmutableList.of()).h(false);
    }

    @Override // l5.f
    public Credentials a() throws IOException {
        GoogleCredentials c10 = c();
        if (c10 == null) {
            c10 = GoogleCredentials.getApplicationDefault();
        }
        boolean z10 = false;
        Iterator<String> it = b().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (d().contains(it.next())) {
                z10 = true;
                break;
            }
        }
        if ((c10 instanceof ServiceAccountCredentials) && z10) {
            ServiceAccountCredentials serviceAccountCredentials = (ServiceAccountCredentials) c10;
            return ServiceAccountJwtAccessCredentials.newBuilder().b(serviceAccountCredentials.getClientEmail()).c(serviceAccountCredentials.getClientId()).d(serviceAccountCredentials.getPrivateKey()).e(serviceAccountCredentials.getPrivateKeyId()).f(serviceAccountCredentials.getQuotaProjectId()).a();
        }
        if (c10.createScopedRequired()) {
            c10 = c10.createScoped(d());
        }
        return (e() && (c10 instanceof ServiceAccountCredentials)) ? ((ServiceAccountCredentials) c10).createWithUseJwtAccessWithScope(true) : c10;
    }

    public abstract List<String> b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract GoogleCredentials c();

    public abstract List<String> d();

    public abstract boolean e();
}
