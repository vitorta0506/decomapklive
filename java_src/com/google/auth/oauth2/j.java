package com.google.auth.oauth2;

import com.facebook.internal.ServerProtocol;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: d  reason: collision with root package name */
    static final j f11664d = new j();

    /* renamed from: e  reason: collision with root package name */
    static final String f11665e = System.getProperty("java.specification.version");

    /* renamed from: f  reason: collision with root package name */
    static final String f11666f = System.getProperty("com.google.appengine.runtime.version");

    /* renamed from: g  reason: collision with root package name */
    static final String f11667g = System.getProperty("org.eclipse.jetty.util.log.class");

    /* renamed from: h  reason: collision with root package name */
    static final Logger f11668h = Logger.getLogger(j.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private GoogleCredentials f11669a = null;

    /* renamed from: b  reason: collision with root package name */
    private boolean f11670b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f11671c = false;

    /* JADX WARN: Code restructure failed: missing block: B:37:0x009f, code lost:
        if (r3 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a1, code lost:
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a8, code lost:
        if (r3 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ab, code lost:
        o(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.auth.oauth2.GoogleCredentials c(s5.b r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.auth.oauth2.j.c(s5.b):com.google.auth.oauth2.GoogleCredentials");
    }

    private final File f() {
        File file;
        File file2;
        String lowerCase = e("os.name", "").toLowerCase(Locale.US);
        String d10 = d("CLOUDSDK_CONFIG");
        if (d10 != null) {
            file2 = new File(d10);
        } else {
            if (lowerCase.indexOf("windows") >= 0) {
                file = new File(new File(d("APPDATA")), "gcloud");
            } else {
                file = new File(new File(e("user.home", ""), ".config"), "gcloud");
            }
            file2 = file;
        }
        return new File(file2, "application_default_credentials.json");
    }

    private boolean j() {
        try {
            try {
                Field field = a("com.google.appengine.api.utils.SystemProperty").getField("environment");
                return field.getType().getMethod("value", new Class[0]).invoke(field.get(null), new Object[0]) != null;
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException | NoSuchMethodException | SecurityException | InvocationTargetException e10) {
                throw new RuntimeException(String.format("Unexpected error trying to determine if runnning on Google App Engine: %s", e10.getMessage()), e10);
            }
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    private boolean k() {
        String d10 = d("GOOGLE_APPLICATION_CREDENTIALS_SKIP_APP_ENGINE");
        if (d10 != null) {
            return d10.equalsIgnoreCase(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE) || d10.equals("1");
        }
        return false;
    }

    private GoogleCredentials l() throws IOException {
        if (this.f11670b) {
            return null;
        }
        boolean j10 = j();
        this.f11670b = true;
        if (j10) {
            return new b(Collections.emptyList(), Collections.emptyList());
        }
        return null;
    }

    private GoogleCredentials m() {
        String d10 = d("DEVSHELL_CLIENT_PORT");
        if (d10 != null) {
            return CloudShellCredentials.create(Integer.parseInt(d10));
        }
        return null;
    }

    private final GoogleCredentials n(s5.b bVar) {
        if (this.f11671c) {
            return null;
        }
        boolean runningOnComputeEngine = ComputeEngineCredentials.runningOnComputeEngine(bVar, this);
        this.f11671c = true;
        if (runningOnComputeEngine) {
            return ComputeEngineCredentials.newBuilder().g(bVar).d();
        }
        return null;
    }

    private void o(GoogleCredentials googleCredentials) {
        if ((googleCredentials instanceof UserCredentials) && ((UserCredentials) googleCredentials).getClientId().equals("764086051850-6qr4p6gpi6hn506pt8ejuq83di341hur.apps.googleusercontent.com") && !Boolean.parseBoolean(d("SUPPRESS_GCLOUD_CREDS_WARNING"))) {
            f11668h.log(Level.WARNING, "Your application has authenticated using end user credentials from Google Cloud SDK. We recommend that most server applications use service accounts instead. If your application continues to use end user credentials from Cloud SDK, you might receive a \"quota exceeded\" or \"API not enabled\" error. For more information about service accounts, see https://cloud.google.com/docs/authentication/.");
        }
    }

    Class<?> a(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final GoogleCredentials b(s5.b bVar) throws IOException {
        synchronized (this) {
            if (this.f11669a == null) {
                this.f11669a = c(bVar);
            }
            GoogleCredentials googleCredentials = this.f11669a;
            if (googleCredentials != null) {
                return googleCredentials;
            }
            throw new IOException(String.format("The Application Default Credentials are not available. They are available if running in Google Compute Engine. Otherwise, the environment variable %s must be defined pointing to a file defining the credentials. See %s for more information.", "GOOGLE_APPLICATION_CREDENTIALS", "https://developers.google.com/accounts/docs/application-default-credentials"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d(String str) {
        return System.getenv(str);
    }

    String e(String str, String str2) {
        return System.getProperty(str, str2);
    }

    boolean g(File file) {
        return file.isFile();
    }

    protected boolean h() {
        return f11666f != null && (f11665e.equals("1.7") || f11667g == null);
    }

    InputStream i(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }
}
