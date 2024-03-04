package com.tencent.thumbplayer.utils;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private a f34453a;

    /* renamed from: b  reason: collision with root package name */
    private a f34454b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<String> f34455c;

    /* renamed from: d  reason: collision with root package name */
    private String f34456d;

    public c(Context context, String str) {
        this.f34453a = null;
        this.f34454b = null;
        this.f34455c = null;
        this.f34456d = null;
        this.f34453a = a.a(context, str);
        String str2 = str + "_key";
        this.f34456d = str2;
        a a10 = a.a(context, str2);
        this.f34454b = a10;
        ArrayList<String> arrayList = (ArrayList) a10.b(this.f34456d);
        this.f34455c = arrayList;
        if (arrayList == null) {
            this.f34455c = new ArrayList<>();
        }
    }

    public synchronized Object a() {
        Object b10;
        ArrayList arrayList = (ArrayList) this.f34454b.b(this.f34456d);
        ArrayList arrayList2 = null;
        if (arrayList != null && arrayList.size() > 0) {
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                String str = (String) arrayList.get(i9);
                if (!TextUtils.isEmpty(str) && (b10 = this.f34453a.b(str)) != null) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(b10);
                }
            }
            this.f34453a.a();
            this.f34454b.a();
            this.f34455c.clear();
            return arrayList2;
        }
        return null;
    }

    public synchronized void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f34453a.c(str);
        this.f34455c.remove(str);
        this.f34454b.c(this.f34456d);
        if (!this.f34455c.isEmpty()) {
            this.f34454b.a(this.f34456d, this.f34455c);
        }
    }

    public synchronized void a(String str, Serializable serializable) {
        if (serializable != null) {
            if (!TextUtils.isEmpty(str)) {
                this.f34453a.c(str);
                this.f34453a.a(str, serializable);
                this.f34455c.remove(str);
                this.f34455c.add(str);
                this.f34454b.c(this.f34456d);
                this.f34454b.a(this.f34456d, this.f34455c);
            }
        }
    }

    public synchronized Object b(@NonNull String str) {
        return this.f34453a.b(str);
    }

    public synchronized ArrayList<String> b() {
        return (ArrayList) this.f34455c.clone();
    }

    public synchronized void c() {
        this.f34453a.a();
        this.f34454b.a();
        this.f34455c.clear();
    }
}
