package p4;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzah;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.EnumMap;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    public static final a f56725b = new a(null, null);

    /* renamed from: a  reason: collision with root package name */
    private final EnumMap f56726a;

    public a(Boolean bool, Boolean bool2) {
        EnumMap enumMap = new EnumMap(zzah.class);
        this.f56726a = enumMap;
        enumMap.put((EnumMap) zzah.AD_STORAGE, (zzah) bool);
        enumMap.put((EnumMap) zzah.ANALYTICS_STORAGE, (zzah) bool2);
    }

    public static a a(Bundle bundle) {
        zzah[] values;
        if (bundle == null) {
            return f56725b;
        }
        EnumMap enumMap = new EnumMap(zzah.class);
        for (zzah zzahVar : zzah.values()) {
            enumMap.put((EnumMap) zzahVar, (zzah) n(bundle.getString(zzahVar.zzd)));
        }
        return new a(enumMap);
    }

    public static a b(String str) {
        EnumMap enumMap = new EnumMap(zzah.class);
        if (str != null) {
            int i9 = 0;
            while (true) {
                zzah[] zzahVarArr = zzah.zzc;
                int length = zzahVarArr.length;
                if (i9 >= 2) {
                    break;
                }
                zzah zzahVar = zzahVarArr[i9];
                int i10 = i9 + 2;
                if (i10 < str.length()) {
                    char charAt = str.charAt(i10);
                    Boolean bool = null;
                    if (charAt != '-') {
                        if (charAt == '0') {
                            bool = Boolean.FALSE;
                        } else if (charAt == '1') {
                            bool = Boolean.TRUE;
                        }
                    }
                    enumMap.put((EnumMap) zzahVar, (zzah) bool);
                }
                i9++;
            }
        }
        return new a(enumMap);
    }

    public static String g(Bundle bundle) {
        zzah[] values;
        String string;
        for (zzah zzahVar : zzah.values()) {
            if (bundle.containsKey(zzahVar.zzd) && (string = bundle.getString(zzahVar.zzd)) != null && n(string) == null) {
                return string;
            }
        }
        return null;
    }

    public static boolean j(int i9, int i10) {
        return i9 <= i10;
    }

    static final int m(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    private static Boolean n(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (str.equals("denied")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public final a c(a aVar) {
        zzah[] values;
        EnumMap enumMap = new EnumMap(zzah.class);
        for (zzah zzahVar : zzah.values()) {
            Boolean bool = (Boolean) this.f56726a.get(zzahVar);
            Boolean bool2 = (Boolean) aVar.f56726a.get(zzahVar);
            if (bool == null) {
                bool = bool2;
            } else if (bool2 != null) {
                bool = Boolean.valueOf(bool.booleanValue() && bool2.booleanValue());
            }
            enumMap.put((EnumMap) zzahVar, (zzah) bool);
        }
        return new a(enumMap);
    }

    public final a d(a aVar) {
        zzah[] values;
        EnumMap enumMap = new EnumMap(zzah.class);
        for (zzah zzahVar : zzah.values()) {
            Boolean bool = (Boolean) this.f56726a.get(zzahVar);
            if (bool == null) {
                bool = (Boolean) aVar.f56726a.get(zzahVar);
            }
            enumMap.put((EnumMap) zzahVar, (zzah) bool);
        }
        return new a(enumMap);
    }

    public final Boolean e() {
        return (Boolean) this.f56726a.get(zzah.AD_STORAGE);
    }

    public final boolean equals(Object obj) {
        zzah[] values;
        if (obj instanceof a) {
            a aVar = (a) obj;
            for (zzah zzahVar : zzah.values()) {
                if (m((Boolean) this.f56726a.get(zzahVar)) != m((Boolean) aVar.f56726a.get(zzahVar))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public final Boolean f() {
        return (Boolean) this.f56726a.get(zzah.ANALYTICS_STORAGE);
    }

    public final String h() {
        char c10;
        StringBuilder sb2 = new StringBuilder("G1");
        zzah[] zzahVarArr = zzah.zzc;
        int length = zzahVarArr.length;
        for (int i9 = 0; i9 < 2; i9++) {
            Boolean bool = (Boolean) this.f56726a.get(zzahVarArr[i9]);
            if (bool == null) {
                c10 = '-';
            } else {
                c10 = bool.booleanValue() ? '1' : '0';
            }
            sb2.append(c10);
        }
        return sb2.toString();
    }

    public final int hashCode() {
        int i9 = 17;
        for (Boolean bool : this.f56726a.values()) {
            i9 = (i9 * 31) + m(bool);
        }
        return i9;
    }

    public final boolean i(zzah zzahVar) {
        Boolean bool = (Boolean) this.f56726a.get(zzahVar);
        return bool == null || bool.booleanValue();
    }

    public final boolean k(a aVar) {
        return l(aVar, (zzah[]) this.f56726a.keySet().toArray(new zzah[0]));
    }

    public final boolean l(a aVar, zzah... zzahVarArr) {
        for (zzah zzahVar : zzahVarArr) {
            Boolean bool = (Boolean) this.f56726a.get(zzahVar);
            Boolean bool2 = (Boolean) aVar.f56726a.get(zzahVar);
            Boolean bool3 = Boolean.FALSE;
            if (bool == bool3 && bool2 != bool3) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("settings: ");
        zzah[] values = zzah.values();
        int length = values.length;
        for (int i9 = 0; i9 < length; i9++) {
            zzah zzahVar = values[i9];
            if (i9 != 0) {
                sb2.append(", ");
            }
            sb2.append(zzahVar.name());
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            Boolean bool = (Boolean) this.f56726a.get(zzahVar);
            if (bool == null) {
                sb2.append("uninitialized");
            } else {
                sb2.append(true != bool.booleanValue() ? "denied" : "granted");
            }
        }
        return sb2.toString();
    }

    public a(EnumMap enumMap) {
        EnumMap enumMap2 = new EnumMap(zzah.class);
        this.f56726a = enumMap2;
        enumMap2.putAll(enumMap);
    }
}
