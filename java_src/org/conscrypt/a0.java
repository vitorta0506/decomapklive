package org.conscrypt;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.attribute.PosixFilePermission;
import java.security.AccessController;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.Security;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.security.spec.ECParameterSpec;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import sun.security.x509.AlgorithmId;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    private static final int f56300a = j();

    /* renamed from: b  reason: collision with root package name */
    private static final Method f56301b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a implements PrivilegedAction<ClassLoader> {
        a() {
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public ClassLoader run() {
            return ClassLoader.getSystemClassLoader();
        }
    }

    static {
        Method method = null;
        try {
            method = ECParameterSpec.class.getDeclaredMethod("getCurveName", new Class[0]);
            method.setAccessible(true);
        } catch (Exception unused) {
        }
        f56301b = method;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(File file) throws IOException {
        if (file.canExecute()) {
            return true;
        }
        Set<PosixFilePermission> posixFilePermissions = Files.getPosixFilePermissions(file.toPath(), new LinkOption[0]);
        EnumSet of2 = EnumSet.of(PosixFilePermission.OWNER_EXECUTE, PosixFilePermission.GROUP_EXECUTE, PosixFilePermission.OTHERS_EXECUTE);
        if (posixFilePermissions.containsAll(of2)) {
            return false;
        }
        EnumSet copyOf = EnumSet.copyOf((Collection) posixFilePermissions);
        copyOf.addAll(of2);
        Files.setPosixFilePermissions(file.toPath(), copyOf);
        return file.canExecute();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File b(String str, String str2, File file) throws IOException {
        Objects.requireNonNull(file);
        long currentTimeMillis = System.currentTimeMillis();
        String name = new File(str).getName();
        IOException e10 = null;
        for (int i9 = 0; i9 < 10000; i9++) {
            String format = String.format(Locale.US, "%s%d%04d%s", name, Long.valueOf(currentTimeMillis), Integer.valueOf(i9), str2);
            File file2 = new File(file, format);
            if (format.equals(file2.getName())) {
                try {
                } catch (IOException e11) {
                    e10 = e11;
                }
                if (file2.createNewFile()) {
                    return file2.getCanonicalFile();
                }
                continue;
            } else {
                throw new IOException("Unable to create temporary file: " + file2);
            }
        }
        if (e10 != null) {
            throw e10;
        }
        throw new IOException("Unable to create temporary file");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static KeyStore c() throws KeyStoreException {
        Provider[] providers;
        KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        try {
            keyStore.load(null, null);
        } catch (IOException | NoSuchAlgorithmException | CertificateException unused) {
        }
        for (Provider provider : Security.getProviders("TrustManagerFactory.PKIX")) {
            if (!i.d(provider)) {
                try {
                    TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("PKIX", provider);
                    trustManagerFactory.init((KeyStore) null);
                    TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                    if (trustManagers.length > 0) {
                        int i9 = 1;
                        for (TrustManager trustManager : trustManagers) {
                            if (trustManager instanceof X509TrustManager) {
                                X509Certificate[] acceptedIssuers = ((X509TrustManager) trustManager).getAcceptedIssuers();
                                int length = acceptedIssuers.length;
                                int i10 = 0;
                                while (i10 < length) {
                                    int i11 = i9 + 1;
                                    keyStore.setCertificateEntry(Integer.toString(i9), acceptedIssuers[i10]);
                                    i10++;
                                    i9 = i11;
                                }
                            }
                        }
                        if (i9 > 1) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } catch (NoSuchAlgorithmException unused2) {
                }
            }
        }
        return keyStore;
    }

    public static k d() {
        return s.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e() {
        return "Conscrypt";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String f(InetSocketAddress inetSocketAddress) {
        return inetSocketAddress.getHostString();
    }

    private static ClassLoader g() {
        if (System.getSecurityManager() == null) {
            return ClassLoader.getSystemClassLoader();
        }
        return (ClassLoader) AccessController.doPrivileged(new a());
    }

    private static boolean h() {
        try {
            Class.forName("android.app.Application", false, g());
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i(String str) {
        String property;
        boolean z10 = false;
        if (str == null || (property = Security.getProperty("conscrypt.ct.enable")) == null || !Boolean.valueOf(property.toLowerCase()).booleanValue()) {
            return false;
        }
        List<String> asList = Arrays.asList(str.split("\\."));
        Collections.reverse(asList);
        StringBuilder sb2 = new StringBuilder("conscrypt.ct.enforce");
        for (String str2 : asList) {
            String property2 = Security.getProperty(((Object) sb2) + ".*");
            if (property2 != null) {
                z10 = Boolean.valueOf(property2.toLowerCase()).booleanValue();
            }
            sb2.append(".");
            sb2.append(str2);
        }
        String property3 = Security.getProperty(sb2.toString());
        return property3 != null ? Boolean.valueOf(property3.toLowerCase()).booleanValue() : z10;
    }

    private static int j() {
        if (h()) {
            return 6;
        }
        return l();
    }

    private static int k(String str) {
        String[] split = str.split("\\.", -1);
        int[] iArr = new int[split.length];
        for (int i9 = 0; i9 < split.length; i9++) {
            iArr[i9] = Integer.parseInt(split[i9]);
        }
        if (iArr[0] == 1) {
            return iArr[1];
        }
        return iArr[0];
    }

    private static int l() {
        return k(System.getProperty("java.specification.version", "1.6"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d m() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j n() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static gl.a o() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static gl.b p(gl.a aVar) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String q(String str) {
        try {
            return AlgorithmId.get(str).getName();
        } catch (Exception | IllegalAccessError unused) {
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean r() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void s(ECParameterSpec eCParameterSpec, String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void t() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean u() {
        return false;
    }
}
