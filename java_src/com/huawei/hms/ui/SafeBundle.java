package com.huawei.hms.ui;

import android.os.Bundle;
import com.huawei.hms.base.ui.a;
/* loaded from: classes4.dex */
public class SafeBundle {

    /* renamed from: a  reason: collision with root package name */
    public final Bundle f27836a;

    public SafeBundle() {
        this(new Bundle());
    }

    public boolean containsKey(String str) {
        try {
            return this.f27836a.containsKey(str);
        } catch (Exception unused) {
            a.a("SafeBundle", "containsKey exception. key:");
            return false;
        }
    }

    public Object get(String str) {
        try {
            return this.f27836a.get(str);
        } catch (Exception e10) {
            a.a("SafeBundle", "get exception: " + e10.getMessage(), true);
            return null;
        }
    }

    public Bundle getBundle() {
        return this.f27836a;
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public String getString(String str) {
        try {
            return this.f27836a.getString(str);
        } catch (Exception e10) {
            a.a("SafeBundle", "getString exception: " + e10.getMessage(), true);
            return "";
        }
    }

    public boolean isEmpty() {
        try {
            return this.f27836a.isEmpty();
        } catch (Exception unused) {
            a.a("SafeBundle", "isEmpty exception");
            return true;
        }
    }

    public int size() {
        try {
            return this.f27836a.size();
        } catch (Exception unused) {
            a.a("SafeBundle", "size exception");
            return 0;
        }
    }

    public String toString() {
        return this.f27836a.toString();
    }

    public SafeBundle(Bundle bundle) {
        this.f27836a = bundle == null ? new Bundle() : bundle;
    }

    public int getInt(String str, int i9) {
        try {
            return this.f27836a.getInt(str, i9);
        } catch (Exception e10) {
            a.a("SafeBundle", "getInt exception: " + e10.getMessage(), true);
            return i9;
        }
    }

    public String getString(String str, String str2) {
        try {
            return this.f27836a.getString(str, str2);
        } catch (Exception e10) {
            a.a("SafeBundle", "getString exception: " + e10.getMessage(), true);
            return str2;
        }
    }
}
