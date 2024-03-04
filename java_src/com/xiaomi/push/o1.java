package com.xiaomi.push;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* loaded from: classes5.dex */
public class o1 implements s1 {

    /* renamed from: a  reason: collision with root package name */
    private String f37012a;

    /* renamed from: b  reason: collision with root package name */
    private String f37013b;

    /* renamed from: c  reason: collision with root package name */
    private String[] f37014c;

    /* renamed from: d  reason: collision with root package name */
    private String[] f37015d;

    /* renamed from: e  reason: collision with root package name */
    private String f37016e;

    /* renamed from: f  reason: collision with root package name */
    private List<o1> f37017f;

    public o1(String str, String str2, String[] strArr, String[] strArr2) {
        this.f37017f = null;
        this.f37012a = str;
        this.f37013b = str2;
        this.f37014c = strArr;
        this.f37015d = strArr2;
    }

    public o1(String str, String str2, String[] strArr, String[] strArr2, String str3, List<o1> list) {
        this.f37012a = str;
        this.f37013b = str2;
        this.f37014c = strArr;
        this.f37015d = strArr2;
        this.f37016e = str3;
        this.f37017f = list;
    }

    public static o1 c(Bundle bundle) {
        ArrayList arrayList;
        String string = bundle.getString("ext_ele_name");
        String string2 = bundle.getString("ext_ns");
        String string3 = bundle.getString("ext_text");
        Bundle bundle2 = bundle.getBundle("attributes");
        Set<String> keySet = bundle2.keySet();
        String[] strArr = new String[keySet.size()];
        String[] strArr2 = new String[keySet.size()];
        int i9 = 0;
        for (String str : keySet) {
            strArr[i9] = str;
            strArr2[i9] = bundle2.getString(str);
            i9++;
        }
        if (bundle.containsKey("children")) {
            Parcelable[] parcelableArray = bundle.getParcelableArray("children");
            ArrayList arrayList2 = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                arrayList2.add(c((Bundle) parcelable));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        return new o1(string, string2, strArr, strArr2, string3, arrayList);
    }

    public static Parcelable[] h(List<o1> list) {
        return i((o1[]) list.toArray(new o1[list.size()]));
    }

    public static Parcelable[] i(o1[] o1VarArr) {
        if (o1VarArr == null) {
            return null;
        }
        Parcelable[] parcelableArr = new Parcelable[o1VarArr.length];
        for (int i9 = 0; i9 < o1VarArr.length; i9++) {
            parcelableArr[i9] = o1VarArr[i9].b();
        }
        return parcelableArr;
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("ext_ele_name", this.f37012a);
        bundle.putString("ext_ns", this.f37013b);
        bundle.putString("ext_text", this.f37016e);
        Bundle bundle2 = new Bundle();
        String[] strArr = this.f37014c;
        if (strArr != null && strArr.length > 0) {
            int i9 = 0;
            while (true) {
                String[] strArr2 = this.f37014c;
                if (i9 >= strArr2.length) {
                    break;
                }
                bundle2.putString(strArr2[i9], this.f37015d[i9]);
                i9++;
            }
        }
        bundle.putBundle("attributes", bundle2);
        List<o1> list = this.f37017f;
        if (list != null && list.size() > 0) {
            bundle.putParcelableArray("children", h(this.f37017f));
        }
        return bundle;
    }

    public Parcelable b() {
        return a();
    }

    @Override // com.xiaomi.push.s1
    public String d() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<");
        sb2.append(this.f37012a);
        if (!TextUtils.isEmpty(this.f37013b)) {
            sb2.append(" ");
            sb2.append("xmlns=");
            sb2.append("\"");
            sb2.append(this.f37013b);
            sb2.append("\"");
        }
        String[] strArr = this.f37014c;
        if (strArr != null && strArr.length > 0) {
            for (int i9 = 0; i9 < this.f37014c.length; i9++) {
                if (!TextUtils.isEmpty(this.f37015d[i9])) {
                    sb2.append(" ");
                    sb2.append(this.f37014c[i9]);
                    sb2.append("=\"");
                    sb2.append(b2.b(this.f37015d[i9]));
                    sb2.append("\"");
                }
            }
        }
        if (TextUtils.isEmpty(this.f37016e)) {
            List<o1> list = this.f37017f;
            if (list == null || list.size() <= 0) {
                sb2.append("/>");
                return sb2.toString();
            }
            sb2.append(">");
            for (o1 o1Var : this.f37017f) {
                sb2.append(o1Var.d());
            }
        } else {
            sb2.append(">");
            sb2.append(this.f37016e);
        }
        sb2.append("</");
        sb2.append(this.f37012a);
        sb2.append(">");
        return sb2.toString();
    }

    public String e() {
        return this.f37012a;
    }

    public String f(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        if (this.f37014c == null) {
            return null;
        }
        int i9 = 0;
        while (true) {
            String[] strArr = this.f37014c;
            if (i9 >= strArr.length) {
                return null;
            }
            if (str.equals(strArr[i9])) {
                return this.f37015d[i9];
            }
            i9++;
        }
    }

    public void g(String str) {
        if (!TextUtils.isEmpty(str)) {
            str = b2.b(str);
        }
        this.f37016e = str;
    }

    public String j() {
        return this.f37013b;
    }

    public String k() {
        return !TextUtils.isEmpty(this.f37016e) ? b2.e(this.f37016e) : this.f37016e;
    }

    public String toString() {
        return d();
    }
}
