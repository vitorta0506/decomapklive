package com.google.android.gms.dynamite;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.util.DynamiteApi;
import com.huawei.hms.framework.common.ExceptionCode;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public final class DynamiteModule {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static Boolean f7859h = null;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static String f7860i = null;

    /* renamed from: j  reason: collision with root package name */
    private static boolean f7861j = false;

    /* renamed from: k  reason: collision with root package name */
    private static int f7862k = -1;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static Boolean f7863l;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private static q f7868q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private static r f7869r;

    /* renamed from: a  reason: collision with root package name */
    private final Context f7870a;

    /* renamed from: m  reason: collision with root package name */
    private static final ThreadLocal f7864m = new ThreadLocal();

    /* renamed from: n  reason: collision with root package name */
    private static final ThreadLocal f7865n = new d();

    /* renamed from: o  reason: collision with root package name */
    private static final a.InterfaceC0088a f7866o = new e();
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f7853b = new f();
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f7854c = new g();
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f7855d = new h();
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f7856e = new i();
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f7857f = new j();
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f7858g = new k();
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f7867p = new l();

    @DynamiteApi
    /* loaded from: classes2.dex */
    public static class DynamiteLoaderClassLoader {
        @Nullable
        public static ClassLoader sClassLoader;
    }

    /* loaded from: classes2.dex */
    public static class LoadingException extends Exception {
        /* synthetic */ LoadingException(String str, p pVar) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, Throwable th2, p pVar) {
            super(str, th2);
        }
    }

    /* loaded from: classes2.dex */
    public interface a {

        /* renamed from: com.google.android.gms.dynamite.DynamiteModule$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public interface InterfaceC0088a {
            int a(@NonNull Context context, @NonNull String str, boolean z10) throws LoadingException;

            int b(@NonNull Context context, @NonNull String str);
        }

        /* loaded from: classes2.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            public int f7871a = 0;

            /* renamed from: b  reason: collision with root package name */
            public int f7872b = 0;

            /* renamed from: c  reason: collision with root package name */
            public int f7873c = 0;
        }

        @NonNull
        b a(@NonNull Context context, @NonNull String str, @NonNull InterfaceC0088a interfaceC0088a) throws LoadingException;
    }

    private DynamiteModule(Context context) {
        com.google.android.gms.common.internal.p.j(context);
        this.f7870a = context;
    }

    public static int a(@NonNull Context context, @NonNull String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            Class<?> loadClass = classLoader.loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (!com.google.android.gms.common.internal.n.b(declaredField.get(null), str)) {
                String valueOf = String.valueOf(declaredField.get(null));
                Log.e("DynamiteModule", "Module descriptor id '" + valueOf + "' didn't match expected id '" + str + "'");
                return 0;
            }
            return declaredField2.getInt(null);
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for " + str + " not found.");
            return 0;
        } catch (Exception e10) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e10.getMessage())));
            return 0;
        }
    }

    public static int b(@NonNull Context context, @NonNull String str) {
        return e(context, str, false);
    }

    @NonNull
    public static DynamiteModule d(@NonNull Context context, @NonNull a aVar, @NonNull String str) throws LoadingException {
        Boolean bool;
        h4.a G0;
        DynamiteModule dynamiteModule;
        r rVar;
        Boolean valueOf;
        h4.a D0;
        ThreadLocal threadLocal = f7864m;
        n nVar = (n) threadLocal.get();
        n nVar2 = new n(null);
        threadLocal.set(nVar2);
        ThreadLocal threadLocal2 = f7865n;
        long longValue = ((Long) threadLocal2.get()).longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            a.b a10 = aVar.a(context, str, f7866o);
            int i9 = a10.f7871a;
            int i10 = a10.f7872b;
            Log.i("DynamiteModule", "Considering local module " + str + CertificateUtil.DELIMITER + i9 + " and remote module " + str + CertificateUtil.DELIMITER + i10);
            int i11 = a10.f7873c;
            if (i11 != 0) {
                if (i11 == -1) {
                    if (a10.f7871a != 0) {
                        i11 = -1;
                    }
                }
                if (i11 != 1 || a10.f7872b != 0) {
                    if (i11 == -1) {
                        DynamiteModule g10 = g(context, str);
                        if (longValue == 0) {
                            threadLocal2.remove();
                        } else {
                            threadLocal2.set(Long.valueOf(longValue));
                        }
                        Cursor cursor = nVar2.f7876a;
                        if (cursor != null) {
                            cursor.close();
                        }
                        threadLocal.set(nVar);
                        return g10;
                    } else if (i11 == 1) {
                        try {
                            int i12 = a10.f7872b;
                            try {
                                synchronized (DynamiteModule.class) {
                                    if (j(context)) {
                                        bool = f7859h;
                                    } else {
                                        throw new LoadingException("Remote loading disabled", null);
                                    }
                                }
                                if (bool != null) {
                                    if (bool.booleanValue()) {
                                        Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i12);
                                        synchronized (DynamiteModule.class) {
                                            rVar = f7869r;
                                        }
                                        if (rVar != null) {
                                            n nVar3 = (n) threadLocal.get();
                                            if (nVar3 != null && nVar3.f7876a != null) {
                                                Context applicationContext = context.getApplicationContext();
                                                Cursor cursor2 = nVar3.f7876a;
                                                h4.b.E0(null);
                                                synchronized (DynamiteModule.class) {
                                                    valueOf = Boolean.valueOf(f7862k >= 2);
                                                }
                                                if (valueOf.booleanValue()) {
                                                    Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                                    D0 = rVar.E0(h4.b.E0(applicationContext), str, i12, h4.b.E0(cursor2));
                                                } else {
                                                    Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                                    D0 = rVar.D0(h4.b.E0(applicationContext), str, i12, h4.b.E0(cursor2));
                                                }
                                                Context context2 = (Context) h4.b.D0(D0);
                                                if (context2 != null) {
                                                    dynamiteModule = new DynamiteModule(context2);
                                                } else {
                                                    throw new LoadingException("Failed to get module context", null);
                                                }
                                            } else {
                                                throw new LoadingException("No result cursor", null);
                                            }
                                        } else {
                                            throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                        }
                                    } else {
                                        Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i12);
                                        q k10 = k(context);
                                        if (k10 != null) {
                                            int D02 = k10.D0();
                                            if (D02 >= 3) {
                                                n nVar4 = (n) threadLocal.get();
                                                if (nVar4 != null) {
                                                    G0 = k10.H0(h4.b.E0(context), str, i12, h4.b.E0(nVar4.f7876a));
                                                } else {
                                                    throw new LoadingException("No cached result cursor holder", null);
                                                }
                                            } else if (D02 == 2) {
                                                Log.w("DynamiteModule", "IDynamite loader version = 2");
                                                G0 = k10.I0(h4.b.E0(context), str, i12);
                                            } else {
                                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                                G0 = k10.G0(h4.b.E0(context), str, i12);
                                            }
                                            Object D03 = h4.b.D0(G0);
                                            if (D03 != null) {
                                                dynamiteModule = new DynamiteModule((Context) D03);
                                            } else {
                                                throw new LoadingException("Failed to load remote module.", null);
                                            }
                                        } else {
                                            throw new LoadingException("Failed to create IDynamiteLoader.", null);
                                        }
                                    }
                                    if (longValue == 0) {
                                        threadLocal2.remove();
                                    } else {
                                        threadLocal2.set(Long.valueOf(longValue));
                                    }
                                    Cursor cursor3 = nVar2.f7876a;
                                    if (cursor3 != null) {
                                        cursor3.close();
                                    }
                                    threadLocal.set(nVar);
                                    return dynamiteModule;
                                }
                                throw new LoadingException("Failed to determine which loading route to use.", null);
                            } catch (RemoteException e10) {
                                throw new LoadingException("Failed to load remote module.", e10, null);
                            } catch (LoadingException e11) {
                                throw e11;
                            } catch (Throwable th2) {
                                e4.f.a(context, th2);
                                throw new LoadingException("Failed to load remote module.", th2, null);
                            }
                        } catch (LoadingException e12) {
                            String message = e12.getMessage();
                            Log.w("DynamiteModule", "Failed to load remote module: " + message);
                            int i13 = a10.f7871a;
                            if (i13 != 0 && aVar.a(context, str, new o(i13, 0)).f7873c == -1) {
                                DynamiteModule g11 = g(context, str);
                                if (longValue == 0) {
                                    f7865n.remove();
                                } else {
                                    f7865n.set(Long.valueOf(longValue));
                                }
                                Cursor cursor4 = nVar2.f7876a;
                                if (cursor4 != null) {
                                    cursor4.close();
                                }
                                f7864m.set(nVar);
                                return g11;
                            }
                            throw new LoadingException("Remote load failed. No local fallback found.", e12, null);
                        }
                    } else {
                        throw new LoadingException("VersionPolicy returned invalid code:" + i11, null);
                    }
                }
            }
            int i14 = a10.f7871a;
            int i15 = a10.f7872b;
            throw new LoadingException("No acceptable module " + str + " found. Local version is " + i14 + " and remote version is " + i15 + ".", null);
        } catch (Throwable th3) {
            if (longValue == 0) {
                f7865n.remove();
            } else {
                f7865n.set(Long.valueOf(longValue));
            }
            Cursor cursor5 = nVar2.f7876a;
            if (cursor5 != null) {
                cursor5.close();
            }
            f7864m.set(nVar);
            throw th3;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x01b1 -> B:128:0x01b6). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x01b3 -> B:128:0x01b6). Please submit an issue!!! */
    public static int e(@NonNull Context context, @NonNull String str, boolean z10) {
        Field declaredField;
        Throwable th2;
        RemoteException e10;
        Cursor cursor;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = f7859h;
                Cursor cursor2 = null;
                int i9 = 0;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e11) {
                        String obj = e11.toString();
                        Log.w("DynamiteModule", "Failed to load module via V2: " + obj);
                        bool = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader == ClassLoader.getSystemClassLoader()) {
                            bool = Boolean.FALSE;
                        } else if (classLoader != null) {
                            try {
                                h(classLoader);
                            } catch (LoadingException unused) {
                            }
                            bool = Boolean.TRUE;
                        } else if (!j(context)) {
                            return 0;
                        } else {
                            if (!f7861j) {
                                Boolean bool2 = Boolean.TRUE;
                                if (!bool2.equals(null)) {
                                    try {
                                        int f10 = f(context, str, z10, true);
                                        String str2 = f7860i;
                                        if (str2 != null && !str2.isEmpty()) {
                                            ClassLoader a10 = b.a();
                                            if (a10 == null) {
                                                if (Build.VERSION.SDK_INT >= 29) {
                                                    String str3 = f7860i;
                                                    com.google.android.gms.common.internal.p.j(str3);
                                                    a10 = new DelegateLastClassLoader(str3, ClassLoader.getSystemClassLoader());
                                                } else {
                                                    String str4 = f7860i;
                                                    com.google.android.gms.common.internal.p.j(str4);
                                                    a10 = new c(str4, ClassLoader.getSystemClassLoader());
                                                }
                                            }
                                            h(a10);
                                            declaredField.set(null, a10);
                                            f7859h = bool2;
                                            return f10;
                                        }
                                        return f10;
                                    } catch (LoadingException unused2) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    }
                                }
                            }
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        }
                        f7859h = bool;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return f(context, str, z10, false);
                    } catch (LoadingException e12) {
                        String message = e12.getMessage();
                        Log.w("DynamiteModule", "Failed to retrieve remote module version: " + message);
                        return 0;
                    }
                }
                q k10 = k(context);
                try {
                    if (k10 != null) {
                        try {
                            int D0 = k10.D0();
                            if (D0 >= 3) {
                                n nVar = (n) f7864m.get();
                                if (nVar != null && (cursor = nVar.f7876a) != null) {
                                    i9 = cursor.getInt(0);
                                } else {
                                    Cursor cursor3 = (Cursor) h4.b.D0(k10.J0(h4.b.E0(context), str, z10, ((Long) f7865n.get()).longValue()));
                                    if (cursor3 != null) {
                                        try {
                                            if (cursor3.moveToFirst()) {
                                                int i10 = cursor3.getInt(0);
                                                if (i10 <= 0 || !i(cursor3)) {
                                                    cursor2 = cursor3;
                                                }
                                                if (cursor2 != null) {
                                                    cursor2.close();
                                                }
                                                i9 = i10;
                                            }
                                        } catch (RemoteException e13) {
                                            e10 = e13;
                                            cursor2 = cursor3;
                                            String message2 = e10.getMessage();
                                            Log.w("DynamiteModule", "Failed to retrieve remote module version: " + message2);
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            return i9;
                                        } catch (Throwable th3) {
                                            th2 = th3;
                                            cursor2 = cursor3;
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            throw th2;
                                        }
                                    }
                                    Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                    if (cursor3 != null) {
                                        cursor3.close();
                                    }
                                }
                            } else if (D0 == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                i9 = k10.F0(h4.b.E0(context), str, z10);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                i9 = k10.E0(h4.b.E0(context), str, z10);
                            }
                        } catch (RemoteException e14) {
                            e10 = e14;
                        }
                    }
                    return i9;
                } catch (Throwable th4) {
                    th2 = th4;
                }
            }
        } catch (Throwable th5) {
            e4.f.a(context, th5);
            throw th5;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x009f, code lost:
        r10.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c9  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int f(android.content.Context r10, java.lang.String r11, boolean r12, boolean r13) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            r0 = 0
            java.lang.ThreadLocal r1 = com.google.android.gms.dynamite.DynamiteModule.f7865n     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            java.lang.Object r1 = r1.get()     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            java.lang.Long r1 = (java.lang.Long) r1     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            long r1 = r1.longValue()     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            android.content.ContentResolver r3 = r10.getContentResolver()     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            java.lang.String r10 = "api_force_staging"
            java.lang.String r4 = "api"
            r9 = 1
            if (r9 == r12) goto L19
            r10 = r4
        L19:
            android.net.Uri$Builder r12 = new android.net.Uri$Builder     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            r12.<init>()     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            java.lang.String r4 = "content"
            android.net.Uri$Builder r12 = r12.scheme(r4)     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            java.lang.String r4 = "com.google.android.gms.chimera"
            android.net.Uri$Builder r12 = r12.authority(r4)     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            android.net.Uri$Builder r10 = r12.path(r10)     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            android.net.Uri$Builder r10 = r10.appendPath(r11)     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            java.lang.String r11 = "requestStartTime"
            java.lang.String r12 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            android.net.Uri$Builder r10 = r10.appendQueryParameter(r11, r12)     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            android.net.Uri r4 = r10.build()     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r10 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> Lb2 java.lang.Exception -> Lb5
            if (r10 == 0) goto La3
            boolean r11 = r10.moveToFirst()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lc5
            if (r11 == 0) goto La3
            r11 = 0
            int r12 = r10.getInt(r11)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lc5
            if (r12 <= 0) goto L8e
            java.lang.Class<com.google.android.gms.dynamite.DynamiteModule> r1 = com.google.android.gms.dynamite.DynamiteModule.class
            monitor-enter(r1)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lc5
            r2 = 2
            java.lang.String r2 = r10.getString(r2)     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.dynamite.DynamiteModule.f7860i = r2     // Catch: java.lang.Throwable -> L8b
            java.lang.String r2 = "loaderVersion"
            int r2 = r10.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L8b
            if (r2 < 0) goto L6f
            int r2 = r10.getInt(r2)     // Catch: java.lang.Throwable -> L8b
            com.google.android.gms.dynamite.DynamiteModule.f7862k = r2     // Catch: java.lang.Throwable -> L8b
        L6f:
            java.lang.String r2 = "disableStandaloneDynamiteLoader2"
            int r2 = r10.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L8b
            if (r2 < 0) goto L82
            int r2 = r10.getInt(r2)     // Catch: java.lang.Throwable -> L8b
            if (r2 == 0) goto L7e
            goto L7f
        L7e:
            r9 = 0
        L7f:
            com.google.android.gms.dynamite.DynamiteModule.f7861j = r9     // Catch: java.lang.Throwable -> L8b
            r11 = r9
        L82:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L8b
            boolean r1 = i(r10)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lc5
            if (r1 == 0) goto L8e
            r10 = r0
            goto L8e
        L8b:
            r11 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L8b
            throw r11     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lc5
        L8e:
            if (r13 == 0) goto L9d
            if (r11 != 0) goto L93
            goto L9d
        L93:
            com.google.android.gms.dynamite.DynamiteModule$LoadingException r11 = new com.google.android.gms.dynamite.DynamiteModule$LoadingException     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lc5
            java.lang.String r12 = "forcing fallback to container DynamiteLoader impl"
            r11.<init>(r12, r0)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lc5
            throw r11     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lc5
        L9b:
            r11 = move-exception
            goto Lb8
        L9d:
            if (r10 == 0) goto La2
            r10.close()
        La2:
            return r12
        La3:
            java.lang.String r11 = "DynamiteModule"
            java.lang.String r12 = "Failed to retrieve remote module version."
            android.util.Log.w(r11, r12)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lc5
            com.google.android.gms.dynamite.DynamiteModule$LoadingException r11 = new com.google.android.gms.dynamite.DynamiteModule$LoadingException     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lc5
            java.lang.String r12 = "Failed to connect to dynamite module ContentResolver."
            r11.<init>(r12, r0)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lc5
            throw r11     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lc5
        Lb2:
            r10 = move-exception
            r11 = r10
            goto Lc7
        Lb5:
            r10 = move-exception
            r11 = r10
            r10 = r0
        Lb8:
            boolean r12 = r11 instanceof com.google.android.gms.dynamite.DynamiteModule.LoadingException     // Catch: java.lang.Throwable -> Lc5
            if (r12 == 0) goto Lbd
            throw r11     // Catch: java.lang.Throwable -> Lc5
        Lbd:
            com.google.android.gms.dynamite.DynamiteModule$LoadingException r12 = new com.google.android.gms.dynamite.DynamiteModule$LoadingException     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r13 = "V2 version check failed"
            r12.<init>(r13, r11, r0)     // Catch: java.lang.Throwable -> Lc5
            throw r12     // Catch: java.lang.Throwable -> Lc5
        Lc5:
            r11 = move-exception
            r0 = r10
        Lc7:
            if (r0 == 0) goto Lcc
            r0.close()
        Lcc:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.f(android.content.Context, java.lang.String, boolean, boolean):int");
    }

    private static DynamiteModule g(Context context, String str) {
        Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
        return new DynamiteModule(context.getApplicationContext());
    }

    private static void h(ClassLoader classLoader) throws LoadingException {
        r rVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                rVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                if (queryLocalInterface instanceof r) {
                    rVar = (r) queryLocalInterface;
                } else {
                    rVar = new r(iBinder);
                }
            }
            f7869r = rVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            throw new LoadingException("Failed to instantiate dynamite loader", e10, null);
        }
    }

    private static boolean i(Cursor cursor) {
        n nVar = (n) f7864m.get();
        if (nVar == null || nVar.f7876a != null) {
            return false;
        }
        nVar.f7876a = cursor;
        return true;
    }

    private static boolean j(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f7863l)) {
            return true;
        }
        boolean z10 = false;
        if (f7863l == null) {
            ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            if (com.google.android.gms.common.b.f().h(context, ExceptionCode.CRASH_EXCEPTION) == 0 && resolveContentProvider != null && "com.google.android.gms".equals(resolveContentProvider.packageName)) {
                z10 = true;
            }
            Boolean valueOf = Boolean.valueOf(z10);
            f7863l = valueOf;
            z10 = valueOf.booleanValue();
            if (z10 && resolveContentProvider != null && (applicationInfo = resolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                f7861j = true;
            }
        }
        if (!z10) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z10;
    }

    @Nullable
    private static q k(Context context) {
        q qVar;
        synchronized (DynamiteModule.class) {
            q qVar2 = f7868q;
            if (qVar2 != null) {
                return qVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    qVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    qVar = queryLocalInterface instanceof q ? (q) queryLocalInterface : new q(iBinder);
                }
                if (qVar != null) {
                    f7868q = qVar;
                    return qVar;
                }
            } catch (Exception e10) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e10.getMessage());
            }
            return null;
        }
    }

    @NonNull
    public IBinder c(@NonNull String str) throws LoadingException {
        try {
            return (IBinder) this.f7870a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e10) {
            throw new LoadingException("Failed to instantiate module class: ".concat(String.valueOf(str)), e10, null);
        }
    }
}
