package com.xiaomi.push;

import android.util.Log;
import android.util.Pair;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f37452a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Throwable f37453b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ t f37454c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(t tVar, String str, Throwable th2) {
        this.f37454c = tVar;
        this.f37452a = str;
        this.f37453b = th2;
    }

    @Override // java.lang.Runnable
    public void run() {
        List list;
        SimpleDateFormat simpleDateFormat;
        String str;
        List list2;
        String str2;
        String str3;
        List list3;
        List list4;
        SimpleDateFormat simpleDateFormat2;
        String str4;
        List list5;
        List list6;
        list = t.f37435g;
        simpleDateFormat = t.f37433e;
        str = this.f37454c.f37437a;
        list.add(new Pair(String.format("%1$s %2$s %3$s ", simpleDateFormat.format(new Date()), str, this.f37452a), this.f37453b));
        list2 = t.f37435g;
        if (list2.size() > 20000) {
            list3 = t.f37435g;
            int size = (list3.size() - 20000) + 50;
            for (int i9 = 0; i9 < size; i9++) {
                try {
                    list5 = t.f37435g;
                    if (list5.size() > 0) {
                        list6 = t.f37435g;
                        list6.remove(0);
                    }
                } catch (IndexOutOfBoundsException unused) {
                }
            }
            list4 = t.f37435g;
            simpleDateFormat2 = t.f37433e;
            str4 = this.f37454c.f37437a;
            list4.add(new Pair(String.format("%1$s %2$s %3$s ", simpleDateFormat2.format(new Date()), str4, "flush " + size + " lines logs."), null));
        }
        try {
            if (z2.e()) {
                this.f37454c.f();
                return;
            }
            str3 = this.f37454c.f37437a;
            Log.w(str3, "SDCard is unavailable.");
        } catch (Exception e10) {
            str2 = this.f37454c.f37437a;
            Log.e(str2, "", e10);
        }
    }
}
