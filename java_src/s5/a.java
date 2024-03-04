package s5;

import com.google.api.client.http.j;
import com.google.api.client.http.m;
import com.google.api.client.http.o;
import com.google.api.client.http.p;
import com.google.api.client.http.t;
import com.google.api.client.util.z;
import com.google.auth.Credentials;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class a implements o, t {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f57673b = Logger.getLogger(a.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f57674c = Pattern.compile("\\s*error\\s*=\\s*\"?invalid_token\"?");

    /* renamed from: a  reason: collision with root package name */
    private final Credentials f57675a;

    public a(Credentials credentials) {
        z.d(credentials);
        this.f57675a = credentials;
    }

    @Override // com.google.api.client.http.t
    public boolean a(m mVar, p pVar, boolean z10) {
        boolean z11;
        boolean z12;
        List<String> j10 = pVar.d().j();
        if (j10 != null) {
            for (String str : j10) {
                if (str.startsWith("Bearer ")) {
                    z11 = f57674c.matcher(str).find();
                    z12 = true;
                    break;
                }
            }
        }
        z11 = false;
        z12 = false;
        if (!z12) {
            z11 = pVar.f() == 401;
        }
        if (z11) {
            try {
                this.f57675a.refresh();
                b(mVar);
                return true;
            } catch (IOException e10) {
                f57673b.log(Level.SEVERE, "unable to refresh token", (Throwable) e10);
            }
        }
        return false;
    }

    @Override // com.google.api.client.http.o
    public void b(m mVar) throws IOException {
        mVar.u(this);
        if (this.f57675a.hasRequestMetadata()) {
            j e10 = mVar.e();
            Map<String, List<String>> requestMetadata = this.f57675a.getRequestMetadata(mVar.j() != null ? mVar.j().r() : null);
            if (requestMetadata == null) {
                return;
            }
            for (Map.Entry<String, List<String>> entry : requestMetadata.entrySet()) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(entry.getValue());
                e10.put(entry.getKey(), arrayList);
            }
        }
    }
}
