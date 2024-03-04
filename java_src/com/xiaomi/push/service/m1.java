package com.xiaomi.push.service;

import android.app.Notification;
import android.content.Context;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes5.dex */
public class m1 {

    /* renamed from: a  reason: collision with root package name */
    private static List<a> f37303a = new CopyOnWriteArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f37304a;

        /* renamed from: b  reason: collision with root package name */
        public final long f37305b;

        /* renamed from: c  reason: collision with root package name */
        public final int f37306c;

        /* renamed from: d  reason: collision with root package name */
        public final Notification.Action[] f37307d;

        a(String str, long j10, int i9, Notification.Action[] actionArr) {
            this.f37304a = str;
            this.f37305b = j10;
            this.f37306c = i9;
            this.f37307d = actionArr;
        }
    }

    private static void a() {
        for (int size = f37303a.size() - 1; size >= 0; size--) {
            a aVar = f37303a.get(size);
            if (SystemClock.elapsedRealtime() - aVar.f37305b > 5000) {
                f37303a.remove(aVar);
            }
        }
        if (f37303a.size() > 10) {
            f37303a.remove(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void b(Context context, StatusBarNotification statusBarNotification, int i9) {
        if (!sf.e.i(context) || i9 <= 0 || statusBarNotification == null) {
            return;
        }
        c(new a(statusBarNotification.getKey(), SystemClock.elapsedRealtime(), i9, s.s(statusBarNotification.getNotification())));
    }

    private static void c(a aVar) {
        f37303a.add(aVar);
        a();
    }
}
