package com.google.auth.oauth2;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Date;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class b extends GoogleCredentials {
    private static final long serialVersionUID = -493219027336622194L;

    /* renamed from: a  reason: collision with root package name */
    private final Collection<String> f11607a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f11608b;

    /* renamed from: c  reason: collision with root package name */
    private transient Object f11609c;

    /* renamed from: d  reason: collision with root package name */
    private transient Method f11610d;

    /* renamed from: e  reason: collision with root package name */
    private transient Method f11611e;

    /* renamed from: f  reason: collision with root package name */
    private transient Method f11612f;

    /* renamed from: g  reason: collision with root package name */
    private transient Method f11613g;

    /* renamed from: h  reason: collision with root package name */
    private transient Method f11614h;

    /* renamed from: i  reason: collision with root package name */
    private transient String f11615i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Collection<String> collection, Collection<String> collection2) throws IOException {
        if (collection != null && !collection.isEmpty()) {
            this.f11607a = ImmutableList.copyOf((Collection) collection);
        } else {
            this.f11607a = collection2 == null ? ImmutableList.of() : ImmutableList.copyOf((Collection) collection2);
        }
        this.f11608b = this.f11607a.isEmpty();
        b();
    }

    private void b() throws IOException {
        try {
            this.f11609c = a("com.google.appengine.api.appidentity.AppIdentityServiceFactory").getMethod("getAppIdentityService", new Class[0]).invoke(null, new Object[0]);
            Class<?> a10 = a("com.google.appengine.api.appidentity.AppIdentityService");
            Class<?> a11 = a("com.google.appengine.api.appidentity.AppIdentityService$GetAccessTokenResult");
            this.f11611e = a10.getMethod("getAccessToken", Iterable.class);
            this.f11610d = a11.getMethod("getAccessToken", new Class[0]);
            this.f11612f = a11.getMethod("getExpirationTime", new Class[0]);
            this.f11615i = (String) a10.getMethod("getServiceAccountName", new Class[0]).invoke(this.f11609c, new Object[0]);
            this.f11613g = a10.getMethod("signForApp", byte[].class);
            this.f11614h = a("com.google.appengine.api.appidentity.AppIdentityService$SigningResult").getMethod("getSignature", new Class[0]);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e10) {
            throw new IOException("Application Default Credentials failed to create the Google App Engine service account credentials. Check that the App Engine SDK is deployed.", e10);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b();
    }

    Class<?> a(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public GoogleCredentials createScoped(Collection<String> collection) {
        return new b(collection, null, this);
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public boolean createScopedRequired() {
        return this.f11608b;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            return this.f11608b == bVar.f11608b && Objects.equals(this.f11607a, bVar.f11607a);
        }
        return false;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public int hashCode() {
        return Objects.hash(this.f11607a, Boolean.valueOf(this.f11608b));
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public AccessToken refreshAccessToken() throws IOException {
        if (!createScopedRequired()) {
            try {
                Object invoke = this.f11611e.invoke(this.f11609c, this.f11607a);
                return new AccessToken((String) this.f11610d.invoke(invoke, new Object[0]), (Date) this.f11612f.invoke(invoke, new Object[0]));
            } catch (Exception e10) {
                throw new IOException("Could not get the access token.", e10);
            }
        }
        throw new IOException("AppEngineCredentials requires createScoped call before use.");
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public String toString() {
        return com.google.common.base.j.c(this).d("scopes", this.f11607a).e("scopesRequired", this.f11608b).toString();
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public GoogleCredentials createScoped(Collection<String> collection, Collection<String> collection2) {
        return new b(collection, collection2, this);
    }

    b(Collection<String> collection, Collection<String> collection2, b bVar) {
        this.f11609c = bVar.f11609c;
        this.f11610d = bVar.f11610d;
        this.f11611e = bVar.f11611e;
        this.f11612f = bVar.f11612f;
        if (collection != null && !collection.isEmpty()) {
            this.f11607a = ImmutableList.copyOf((Collection) collection);
        } else {
            this.f11607a = collection2 == null ? ImmutableSet.of() : ImmutableList.copyOf((Collection) collection2);
        }
        this.f11608b = this.f11607a.isEmpty();
    }
}
