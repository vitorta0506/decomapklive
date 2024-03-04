package cn.jpush.android.y;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.data.JPushLocalNotification;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f3540a;

    /* renamed from: e  reason: collision with root package name */
    private static final Object f3541e = new Object();

    /* renamed from: b  reason: collision with root package name */
    private Handler f3542b;

    /* renamed from: c  reason: collision with root package name */
    private Context f3543c;

    /* renamed from: d  reason: collision with root package name */
    private String f3544d;

    private a(Context context) {
        this.f3542b = null;
        this.f3543c = null;
        this.f3544d = "";
        Logger.d("JPushLocalNotificationCenter", "Constructor : JPushLocalNotificationCenter");
        this.f3542b = new Handler(Looper.getMainLooper());
        this.f3543c = context;
        this.f3544d = context.getPackageName();
    }

    public static a a(Context context) {
        Logger.v("JPushLocalNotificationCenter", "getInstance");
        if (f3540a == null) {
            synchronized (f3541e) {
                if (f3540a == null) {
                    f3540a = new a(context);
                }
            }
        }
        return f3540a;
    }

    private synchronized void a(final long j10, long j11, int i9) {
        Logger.d("JPushLocalNotificationCenter", "LocalNotification scheduleReadiedLN");
        if (this.f3542b != null) {
            Runnable runnable = new Runnable() { // from class: cn.jpush.android.y.a.2
                @Override // java.lang.Runnable
                public void run() {
                    long a10;
                    int i10;
                    int i11;
                    int i12;
                    String d10;
                    long f10;
                    long e10;
                    try {
                        b a11 = b.a(a.this.f3543c);
                        c a12 = a11.a(j10, 0);
                        if (a12 != null) {
                            if (a12.c() == 1) {
                                Logger.d("JPushLocalNotificationCenter", "remove ");
                                a10 = a12.a();
                                i10 = 0;
                                i11 = 1;
                                i12 = 0;
                                d10 = a12.d();
                                f10 = a12.f();
                                e10 = a12.e();
                            } else if (a12.b() > 1) {
                                Logger.d("JPushLocalNotificationCenter", "repeat add");
                                a11.b(a12.a(), a12.b() - 1, 0, 0, a12.d(), a12.f(), a12.e());
                                return;
                            } else if (a12.b() != 1) {
                                Logger.d("JPushLocalNotificationCenter", "already triggered");
                                return;
                            } else {
                                Logger.d("JPushLocalNotificationCenter", "send broadcast");
                                if (a12.f() > System.currentTimeMillis()) {
                                    Logger.d("JPushLocalNotificationCenter", "repeat add");
                                    return;
                                }
                                a aVar = a.this;
                                aVar.a(aVar.f3543c, a12.d());
                                a10 = a12.a();
                                i10 = 0;
                                i11 = 0;
                                i12 = 0;
                                d10 = a12.d();
                                f10 = a12.f();
                                e10 = a12.e();
                            }
                            a11.b(a10, i10, i11, i12, d10, f10, e10);
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        Logger.e("JPushLocalNotificationCenter", "exception:" + e11.getMessage());
                    }
                }
            };
            if (j11 <= 0) {
                Logger.d("JPushLocalNotificationCenter", "post right now ");
                this.f3542b.post(runnable);
            } else {
                Logger.d("JPushLocalNotificationCenter", "post delayed : " + j11);
                this.f3542b.postDelayed(runnable, j11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e(Context context) {
        Cursor a10;
        Logger.d("JPushLocalNotificationCenter", "triggerLNKillProcess");
        b a11 = b.a(context);
        if (a11.a(false)) {
            Cursor cursor = null;
            try {
                try {
                    a10 = a11.a(1, System.currentTimeMillis());
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
            } catch (Exception e11) {
                e = e11;
                cursor = a10;
                Logger.ww("JPushLocalNotificationCenter", "triggerLNKillProcess: " + e.getMessage());
                if (cursor != null) {
                    cursor.close();
                }
                a11.b(false);
            } catch (Throwable th3) {
                th = th3;
                cursor = a10;
                if (cursor != null) {
                    cursor.close();
                }
                a11.b(false);
                throw th;
            }
            if (a10.moveToFirst()) {
                do {
                    c a12 = b.a(a10);
                    if (a12 != null) {
                        a(context, a12.d());
                        a11.b(a12.a(), 0, 0, 0, a12.d(), a12.f(), a12.e());
                    }
                } while (a10.moveToNext());
                a10.close();
                a11.b(false);
            } else {
                a10.close();
                a11.b(false);
            }
        } else {
            Logger.e("JPushLocalNotificationCenter", "init LocalNotification cast expt: db open failed");
        }
    }

    public void a(Context context, String str) {
        Logger.d("JPushLocalNotificationCenter", "start LocalNotification broadCastToPushService");
        Bundle bundle = new Bundle();
        bundle.putString("local_notify_msg", str);
        JCoreHelper.runActionWithService(context, JPushConstants.SDK_TYPE, "show_local_notify", bundle);
        Logger.d("JPushLocalNotificationCenter", "end LocalNotification broadCastToPushService");
    }

    public synchronized boolean a(Context context, long j10) {
        c a10;
        Logger.dd("JPushLocalNotificationCenter", "remove LocalNotification ");
        long j11 = (int) j10;
        try {
            b a11 = b.a(context);
            if (a11.a(j11, 0) != null) {
                Logger.d("JPushLocalNotificationCenter", "remove local count : " + a10.b());
                a11.a(j11);
                JPushInterface.clearNotificationById(this.f3543c, (int) j11);
                return true;
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            Logger.e("JPushLocalNotificationCenter", "exception:" + e10.getMessage());
            return false;
        }
    }

    public synchronized boolean a(Context context, JPushLocalNotification jPushLocalNotification) {
        Logger.dd("JPushLocalNotificationCenter", "add LocalNotification");
        long currentTimeMillis = System.currentTimeMillis();
        long broadcastTime = jPushLocalNotification.getBroadcastTime() - currentTimeMillis;
        if (cn.jpush.android.cache.a.d(context)) {
            Logger.d("JPushLocalNotificationCenter", "push has stopped");
        }
        long notificationId = jPushLocalNotification.getNotificationId();
        try {
            b a10 = b.a(context);
            if (a10.a(notificationId, 0) != null) {
                a10.b(notificationId, 1, 0, 0, jPushLocalNotification.toJSON(), jPushLocalNotification.getBroadcastTime(), currentTimeMillis);
            } else {
                a10.a(notificationId, 1, 0, 0, jPushLocalNotification.toJSON(), jPushLocalNotification.getBroadcastTime(), currentTimeMillis);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            Logger.e("JPushLocalNotificationCenter", "exception:" + e10.getMessage());
        }
        if (broadcastTime < 300000) {
            a(jPushLocalNotification.getNotificationId(), broadcastTime, 0);
            return true;
        }
        return true;
    }

    public synchronized void b(Context context) {
        Logger.dd("JPushLocalNotificationCenter", "clear all local notification ");
        int[] a10 = b.a(context).a();
        if (a10 != null && a10.length > 0) {
            Logger.d("JPushLocalNotificationCenter", " success");
            for (int i9 : a10) {
                JPushInterface.clearNotificationById(this.f3543c, i9);
            }
        }
    }

    public synchronized void c(Context context) {
        long currentTimeMillis;
        Logger.d("JPushLocalNotificationCenter", "init LocalNotification");
        b a10 = b.a(context);
        if (a10.a(false)) {
            Cursor cursor = null;
            try {
                currentTimeMillis = System.currentTimeMillis();
                cursor = a10.a(currentTimeMillis, 300000L);
            } catch (Exception e10) {
                Logger.e("JPushLocalNotificationCenter", "init LocalNotification cast expt:" + e10);
                if (cursor != null) {
                    cursor.close();
                }
            }
            if (cursor.moveToFirst()) {
                do {
                    c a11 = b.a(cursor);
                    if (a11 != null) {
                        a(a11.a(), a11.f() - currentTimeMillis, 0);
                    }
                } while (cursor.moveToNext());
                cursor.close();
                a10.b(false);
            } else {
                cursor.close();
                a10.b(false);
            }
        } else {
            Logger.e("JPushLocalNotificationCenter", "init LocalNotification cast expt: db open failed");
        }
    }

    public void d(final Context context) {
        Logger.d("JPushLocalNotificationCenter", "LocalNotification onHeartBeat");
        JCoreHelper.futureExecutor(context, "JPushLocalNotificationCenter", new cn.jpush.android.af.e("JPushLocationNotificationCenter#onHeartBeat") { // from class: cn.jpush.android.y.a.1
            @Override // cn.jpush.android.af.e
            public void a() {
                a.this.e(context);
                a.this.c(context);
                cn.jpush.android.k.a.c(context);
            }
        });
    }
}
