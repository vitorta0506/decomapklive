package org.bouncycastle.jce.provider;

import java.security.Permission;
import java.security.spec.ECParameterSpec;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.jcajce.provider.config.ProviderConfigurationPermission;
/* loaded from: classes7.dex */
class a implements zj.b {

    /* renamed from: g  reason: collision with root package name */
    private static Permission f56097g = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "threadLocalEcImplicitlyCa");

    /* renamed from: h  reason: collision with root package name */
    private static Permission f56098h = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "ecImplicitlyCa");

    /* renamed from: i  reason: collision with root package name */
    private static Permission f56099i = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "threadLocalDhDefaultParams");

    /* renamed from: j  reason: collision with root package name */
    private static Permission f56100j = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "DhDefaultParams");

    /* renamed from: k  reason: collision with root package name */
    private static Permission f56101k = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "acceptableEcCurves");

    /* renamed from: l  reason: collision with root package name */
    private static Permission f56102l = new ProviderConfigurationPermission(BouncyCastleProvider.PROVIDER_NAME, "additionalEcParameters");

    /* renamed from: c  reason: collision with root package name */
    private volatile ek.d f56105c;

    /* renamed from: d  reason: collision with root package name */
    private volatile Object f56106d;

    /* renamed from: a  reason: collision with root package name */
    private ThreadLocal f56103a = new ThreadLocal();

    /* renamed from: b  reason: collision with root package name */
    private ThreadLocal f56104b = new ThreadLocal();

    /* renamed from: e  reason: collision with root package name */
    private volatile Set f56107e = new HashSet();

    /* renamed from: f  reason: collision with root package name */
    private volatile Map f56108f = new HashMap();

    @Override // zj.b
    public Map a() {
        return Collections.unmodifiableMap(this.f56108f);
    }

    @Override // zj.b
    public ek.d b() {
        ek.d dVar = (ek.d) this.f56103a.get();
        return dVar != null ? dVar : this.f56105c;
    }

    @Override // zj.b
    public Set c() {
        return Collections.unmodifiableSet(this.f56107e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(String str, Object obj) {
        ThreadLocal threadLocal;
        SecurityManager securityManager = System.getSecurityManager();
        if (str.equals("threadLocalEcImplicitlyCa")) {
            if (securityManager != null) {
                securityManager.checkPermission(f56097g);
            }
            ek.d g10 = ((obj instanceof ek.d) || obj == null) ? (ek.d) obj : yj.b.g((ECParameterSpec) obj);
            if (g10 != null) {
                this.f56103a.set(g10);
                return;
            }
            threadLocal = this.f56103a;
        } else if (str.equals("ecImplicitlyCa")) {
            if (securityManager != null) {
                securityManager.checkPermission(f56098h);
            }
            if ((obj instanceof ek.d) || obj == null) {
                this.f56105c = (ek.d) obj;
                return;
            } else {
                this.f56105c = yj.b.g((ECParameterSpec) obj);
                return;
            }
        } else if (!str.equals("threadLocalDhDefaultParams")) {
            if (str.equals("DhDefaultParams")) {
                if (securityManager != null) {
                    securityManager.checkPermission(f56100j);
                }
                if (!(obj instanceof DHParameterSpec) && !(obj instanceof DHParameterSpec[]) && obj != null) {
                    throw new IllegalArgumentException("not a valid DHParameterSpec or DHParameterSpec[]");
                }
                this.f56106d = obj;
                return;
            } else if (str.equals("acceptableEcCurves")) {
                if (securityManager != null) {
                    securityManager.checkPermission(f56101k);
                }
                this.f56107e = (Set) obj;
                return;
            } else if (str.equals("additionalEcParameters")) {
                if (securityManager != null) {
                    securityManager.checkPermission(f56102l);
                }
                this.f56108f = (Map) obj;
                return;
            } else {
                return;
            }
        } else {
            if (securityManager != null) {
                securityManager.checkPermission(f56099i);
            }
            if (!(obj instanceof DHParameterSpec) && !(obj instanceof DHParameterSpec[]) && obj != null) {
                throw new IllegalArgumentException("not a valid DHParameterSpec");
            }
            threadLocal = this.f56104b;
            if (obj != null) {
                threadLocal.set(obj);
                return;
            }
        }
        threadLocal.remove();
    }
}
