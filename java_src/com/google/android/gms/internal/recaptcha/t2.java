package com.google.android.gms.internal.recaptcha;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class t2 extends r3 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9054a;

    /* renamed from: b  reason: collision with root package name */
    private final q3 f9055b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f9056c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private String f9057d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ t2(s2 s2Var, r2 r2Var) {
        e3 e3Var;
        Context context;
        e3Var = s2Var.f9030b;
        this.f9055b = new b3(e3Var);
        context = s2Var.f9029a;
        this.f9054a = context;
    }

    public static s2 j(Context context) {
        return new s2(context, null);
    }

    private final boolean k(Uri uri) {
        return (TextUtils.isEmpty(uri.getAuthority()) || this.f9054a.getPackageName().equals(uri.getAuthority())) ? false : true;
    }

    private static final void l() throws zzes {
        throw new zzes("Android backend cannot perform remote operations without a remote backend");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.recaptcha.r3, com.google.android.gms.internal.recaptcha.q3
    public final File a(Uri uri) throws IOException {
        char c10;
        File filesDir;
        String str;
        if (!k(uri)) {
            Context context = this.f9054a;
            if (uri.getScheme().equals("android")) {
                if (!uri.getPathSegments().isEmpty()) {
                    if (TextUtils.isEmpty(uri.getQuery())) {
                        ArrayList arrayList = new ArrayList(uri.getPathSegments());
                        String str2 = (String) arrayList.get(0);
                        switch (str2.hashCode()) {
                            case -1820761141:
                                if (str2.equals("external")) {
                                    c10 = 5;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 94416770:
                                if (str2.equals("cache")) {
                                    c10 = 3;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 97434231:
                                if (str2.equals("files")) {
                                    c10 = 2;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 835260319:
                                if (str2.equals("managed")) {
                                    c10 = 4;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 988548496:
                                if (str2.equals("directboot-cache")) {
                                    c10 = 1;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 991565957:
                                if (str2.equals("directboot-files")) {
                                    c10 = 0;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            default:
                                c10 = 65535;
                                break;
                        }
                        if (c10 == 0) {
                            int i9 = Build.VERSION.SDK_INT;
                            if (i9 >= 24) {
                                filesDir = context.createDeviceProtectedStorageContext().getFilesDir();
                            } else {
                                throw new zzeu(String.format("Direct boot only exists on N or greater: current SDK %s", Integer.valueOf(i9)));
                            }
                        } else if (c10 == 1) {
                            int i10 = Build.VERSION.SDK_INT;
                            if (i10 >= 24) {
                                filesDir = context.createDeviceProtectedStorageContext().getCacheDir();
                            } else {
                                throw new zzeu(String.format("Direct boot only exists on N or greater: current SDK %s", Integer.valueOf(i10)));
                            }
                        } else if (c10 == 2) {
                            filesDir = u2.a(context);
                        } else if (c10 == 3) {
                            filesDir = context.getCacheDir();
                        } else if (c10 == 4) {
                            File file = new File(u2.a(context), "managed");
                            if (arrayList.size() >= 3) {
                                try {
                                    if (!q2.f8996a.equals(q2.a((String) arrayList.get(2)))) {
                                        throw new zzeu("AccountManager cannot be null");
                                    }
                                } catch (IllegalArgumentException e10) {
                                    throw new zzeu(e10);
                                }
                            }
                            filesDir = file;
                        } else if (c10 == 5) {
                            filesDir = context.getExternalFilesDir(null);
                        } else {
                            throw new zzeu(String.format("Path must start with a valid logical location: %s", uri));
                        }
                        File file2 = new File(filesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                        if (!c2.a(this.f9054a)) {
                            synchronized (this.f9056c) {
                                if (this.f9057d == null) {
                                    this.f9057d = u2.a(this.f9054a.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                                }
                                str = this.f9057d;
                            }
                            if (!file2.getAbsolutePath().startsWith(str)) {
                                throw new zzes("Cannot access credential-protected data from direct boot");
                            }
                        }
                        return file2;
                    }
                    throw new zzeu("Did not expect uri to have query");
                }
                throw new zzeu(String.format("Path must start with a valid logical location: %s", uri));
            }
            throw new zzeu("Scheme must be 'android'");
        }
        throw new IOException("operation is not permitted in other authorities.");
    }

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final String b() {
        return "android";
    }

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final InputStream c(Uri uri) throws IOException {
        if (!k(uri)) {
            return g3.a(a3.a(h(uri)));
        }
        l();
        throw null;
    }

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final boolean d(Uri uri) throws IOException {
        if (!k(uri)) {
            return a3.a(h(uri)).exists();
        }
        l();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.recaptcha.r3
    public final Uri h(Uri uri) throws IOException {
        if (!k(uri)) {
            File a10 = a(uri);
            z2 z2Var = new z2(null);
            z2Var.b(a10);
            return z2Var.a();
        }
        throw new zzeu("Operation across authorities is not allowed.");
    }

    @Override // com.google.android.gms.internal.recaptcha.r3
    protected final q3 i() {
        return this.f9055b;
    }
}
