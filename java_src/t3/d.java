package t3;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes2.dex */
public final class d implements Runnable {

    /* renamed from: c  reason: collision with root package name */
    private static final z3.a f58014c = new z3.a("RevokeAccessOperation", new String[0]);

    /* renamed from: a  reason: collision with root package name */
    private final String f58015a;

    /* renamed from: b  reason: collision with root package name */
    private final v3.l f58016b = new v3.l(null);

    public d(String str) {
        this.f58015a = com.google.android.gms.common.internal.p.f(str);
    }

    public static com.google.android.gms.common.api.f b(@Nullable String str) {
        if (str == null) {
            return com.google.android.gms.common.api.g.a(new Status(4), null);
        }
        d dVar = new d(str);
        new Thread(dVar).start();
        return dVar.f58016b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.RESULT_INTERNAL_ERROR;
        try {
            String str = this.f58015a;
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://accounts.google.com/o/oauth2/revoke?token=" + str).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.RESULT_SUCCESS;
            } else {
                f58014c.b("Unable to revoke access!", new Object[0]);
            }
            z3.a aVar = f58014c;
            aVar.a("Response Code: " + responseCode, new Object[0]);
        } catch (IOException e10) {
            f58014c.b("IOException when revoking access: ".concat(String.valueOf(e10.toString())), new Object[0]);
        } catch (Exception e11) {
            f58014c.b("Exception when revoking access: ".concat(String.valueOf(e11.toString())), new Object[0]);
        }
        this.f58016b.f(status);
    }
}
