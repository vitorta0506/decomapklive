package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import com.facebook.internal.security.CertificateUtil;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import io.jsonwebtoken.JwsHeader;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: h  reason: collision with root package name */
    private static int f7395h;

    /* renamed from: i  reason: collision with root package name */
    private static PendingIntent f7396i;

    /* renamed from: j  reason: collision with root package name */
    private static final Executor f7397j = new Executor() { // from class: com.google.android.gms.cloudmessaging.a0
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f7398k = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");

    /* renamed from: b  reason: collision with root package name */
    private final Context f7400b;

    /* renamed from: c  reason: collision with root package name */
    private final u f7401c;

    /* renamed from: d  reason: collision with root package name */
    private final ScheduledExecutorService f7402d;

    /* renamed from: f  reason: collision with root package name */
    private Messenger f7404f;

    /* renamed from: g  reason: collision with root package name */
    private zzd f7405g;

    /* renamed from: a  reason: collision with root package name */
    private final SimpleArrayMap<String, t4.h<Bundle>> f7399a = new SimpleArrayMap<>();

    /* renamed from: e  reason: collision with root package name */
    private Messenger f7403e = new Messenger(new d(this, Looper.getMainLooper()));

    public b(@NonNull Context context) {
        this.f7400b = context;
        this.f7401c = new u(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f7402d = scheduledThreadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ t4.g b(Bundle bundle) throws Exception {
        if (j(bundle)) {
            return t4.j.e(null);
        }
        return t4.j.e(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void d(b bVar, Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new f());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof zzd) {
                        bVar.f7405g = (zzd) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        bVar.f7404f = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
                    if (Log.isLoggable("Rpc", 3)) {
                        String valueOf = String.valueOf(action);
                        Log.d("Rpc", valueOf.length() != 0 ? "Unexpected response action: ".concat(valueOf) : new String("Unexpected response action: "));
                        return;
                    }
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                if (stringExtra == null) {
                    stringExtra = intent2.getStringExtra(PushConstants.EXTRA_UNREGISTERED);
                }
                if (stringExtra == null) {
                    String stringExtra2 = intent2.getStringExtra("error");
                    if (stringExtra2 == null) {
                        String valueOf2 = String.valueOf(intent2.getExtras());
                        StringBuilder sb2 = new StringBuilder(valueOf2.length() + 49);
                        sb2.append("Unexpected response, no error or registration id ");
                        sb2.append(valueOf2);
                        Log.w("Rpc", sb2.toString());
                        return;
                    }
                    if (Log.isLoggable("Rpc", 3)) {
                        Log.d("Rpc", stringExtra2.length() != 0 ? "Received InstanceID error ".concat(stringExtra2) : new String("Received InstanceID error "));
                    }
                    if (stringExtra2.startsWith(HiAnalyticsConstant.REPORT_VAL_SEPARATOR)) {
                        String[] split = stringExtra2.split("\\|");
                        if (split.length > 2 && "ID".equals(split[1])) {
                            String str = split[2];
                            String str2 = split[3];
                            if (str2.startsWith(CertificateUtil.DELIMITER)) {
                                str2 = str2.substring(1);
                            }
                            bVar.i(str, intent2.putExtra("error", str2).getExtras());
                            return;
                        }
                        Log.w("Rpc", stringExtra2.length() != 0 ? "Unexpected structured response ".concat(stringExtra2) : new String("Unexpected structured response "));
                        return;
                    }
                    synchronized (bVar.f7399a) {
                        for (int i9 = 0; i9 < bVar.f7399a.size(); i9++) {
                            bVar.i(bVar.f7399a.keyAt(i9), intent2.getExtras());
                        }
                    }
                    return;
                }
                Matcher matcher = f7398k.matcher(stringExtra);
                if (!matcher.matches()) {
                    if (Log.isLoggable("Rpc", 3)) {
                        Log.d("Rpc", stringExtra.length() != 0 ? "Unexpected response string: ".concat(stringExtra) : new String("Unexpected response string: "));
                        return;
                    }
                    return;
                }
                String group = matcher.group(1);
                String group2 = matcher.group(2);
                if (group != null) {
                    Bundle extras = intent2.getExtras();
                    extras.putString("registration_id", group2);
                    bVar.i(group, extras);
                    return;
                }
                return;
            }
        }
        Log.w("Rpc", "Dropping invalid message");
    }

    @AnyThread
    private final t4.g<Bundle> f(Bundle bundle) {
        final String g10 = g();
        final t4.h<Bundle> hVar = new t4.h<>();
        synchronized (this.f7399a) {
            this.f7399a.put(g10, hVar);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f7401c.b() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        h(this.f7400b, intent);
        StringBuilder sb2 = new StringBuilder(String.valueOf(g10).length() + 5);
        sb2.append("|ID|");
        sb2.append(g10);
        sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
        intent.putExtra(JwsHeader.KEY_ID, sb2.toString());
        if (Log.isLoggable("Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb3 = new StringBuilder(valueOf.length() + 8);
            sb3.append("Sending ");
            sb3.append(valueOf);
            Log.d("Rpc", sb3.toString());
        }
        intent.putExtra("google.messenger", this.f7403e);
        if (this.f7404f != null || this.f7405g != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.f7404f;
                if (messenger != null) {
                    messenger.send(obtain);
                } else {
                    this.f7405g.b(obtain);
                }
            } catch (RemoteException unused) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
            }
            final ScheduledFuture<?> schedule = this.f7402d.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.z
                @Override // java.lang.Runnable
                public final void run() {
                    if (t4.h.this.d(new IOException("TIMEOUT"))) {
                        Log.w("Rpc", "No response");
                    }
                }
            }, 30L, TimeUnit.SECONDS);
            hVar.a().b(f7397j, new t4.c() { // from class: com.google.android.gms.cloudmessaging.x
                @Override // t4.c
                public final void a(t4.g gVar) {
                    b.this.e(g10, schedule, gVar);
                }
            });
            return hVar.a();
        }
        if (this.f7401c.b() == 2) {
            this.f7400b.sendBroadcast(intent);
        } else {
            this.f7400b.startService(intent);
        }
        final ScheduledFuture schedule2 = this.f7402d.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.z
            @Override // java.lang.Runnable
            public final void run() {
                if (t4.h.this.d(new IOException("TIMEOUT"))) {
                    Log.w("Rpc", "No response");
                }
            }
        }, 30L, TimeUnit.SECONDS);
        hVar.a().b(f7397j, new t4.c() { // from class: com.google.android.gms.cloudmessaging.x
            @Override // t4.c
            public final void a(t4.g gVar) {
                b.this.e(g10, schedule2, gVar);
            }
        });
        return hVar.a();
    }

    private static synchronized String g() {
        String num;
        synchronized (b.class) {
            int i9 = f7395h;
            f7395h = i9 + 1;
            num = Integer.toString(i9);
        }
        return num;
    }

    private static synchronized void h(Context context, Intent intent) {
        synchronized (b.class) {
            if (f7396i == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                f7396i = l4.a.a(context, 0, intent2, l4.a.f54190a);
            }
            intent.putExtra(PushConstants.EXTRA_APPLICATION_PENDING_INTENT, f7396i);
        }
    }

    private final void i(String str, @Nullable Bundle bundle) {
        synchronized (this.f7399a) {
            t4.h<Bundle> remove = this.f7399a.remove(str);
            if (remove == null) {
                String valueOf = String.valueOf(str);
                Log.w("Rpc", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
                return;
            }
            remove.c(bundle);
        }
    }

    private static boolean j(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    @NonNull
    public t4.g<Bundle> a(@NonNull final Bundle bundle) {
        if (this.f7401c.a() < 12000000) {
            if (this.f7401c.b() != 0) {
                return f(bundle).i(f7397j, new t4.a() { // from class: com.google.android.gms.cloudmessaging.v
                    @Override // t4.a
                    public final Object a(t4.g gVar) {
                        return b.this.c(bundle, gVar);
                    }
                });
            }
            return t4.j.d(new IOException("MISSING_INSTANCEID_SERVICE"));
        }
        return t.b(this.f7400b).d(1, bundle).h(f7397j, new t4.a() { // from class: com.google.android.gms.cloudmessaging.w
            @Override // t4.a
            public final Object a(t4.g gVar) {
                if (gVar.o()) {
                    return (Bundle) gVar.k();
                }
                if (Log.isLoggable("Rpc", 3)) {
                    String valueOf = String.valueOf(gVar.j());
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 22);
                    sb2.append("Error making request: ");
                    sb2.append(valueOf);
                    Log.d("Rpc", sb2.toString());
                }
                throw new IOException("SERVICE_NOT_AVAILABLE", gVar.j());
            }
        });
    }

    @NonNull
    public final /* synthetic */ t4.g c(@NonNull Bundle bundle, @NonNull t4.g gVar) throws Exception {
        return (gVar.o() && j((Bundle) gVar.k())) ? f(bundle).p(f7397j, new t4.f() { // from class: com.google.android.gms.cloudmessaging.y
            @Override // t4.f
            public final t4.g a(Object obj) {
                return b.b((Bundle) obj);
            }
        }) : gVar;
    }

    public final /* synthetic */ void e(@NonNull String str, @NonNull ScheduledFuture scheduledFuture, @NonNull t4.g gVar) {
        synchronized (this.f7399a) {
            this.f7399a.remove(str);
        }
        scheduledFuture.cancel(false);
    }
}
