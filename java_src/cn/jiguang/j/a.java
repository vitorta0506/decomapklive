package cn.jiguang.j;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import cn.jiguang.o.b;
import cn.jiguang.o.d;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a extends cn.jiguang.o.a {

    /* renamed from: c  reason: collision with root package name */
    private static volatile a f2625c;

    /* renamed from: a  reason: collision with root package name */
    private Context f2626a;

    /* renamed from: b  reason: collision with root package name */
    private List<cn.jiguang.common.app.entity.a> f2627b;

    public static a a() {
        if (f2625c == null) {
            synchronized (a.class) {
                if (f2625c == null) {
                    f2625c = new a();
                }
            }
        }
        return f2625c;
    }

    private JSONArray a(List<cn.jiguang.common.app.entity.a> list) {
        JSONArray jSONArray = new JSONArray();
        for (cn.jiguang.common.app.entity.a aVar : list) {
            JSONObject a10 = aVar.a(128);
            if (a10 != null) {
                jSONArray.put(a10);
            }
        }
        return jSONArray;
    }

    private boolean f(Context context) {
        boolean z10 = Build.VERSION.SDK_INT <= 28 && (d.a(context, "android.permission.READ_EXTERNAL_STORAGE") || d.a(context, "android.permission.WRITE_EXTERNAL_STORAGE"));
        cn.jiguang.al.a.a("JPackageList", "pl has permission is " + z10);
        return z10;
    }

    @Override // cn.jiguang.o.a
    protected String a(Context context) {
        this.f2626a = context;
        return "JPackageList";
    }

    @Override // cn.jiguang.o.a
    protected boolean a(Context context, String str) {
        return b.A(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void b(Context context, String str) {
        if (f(context)) {
            try {
                String str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "Android/data";
                cn.jiguang.al.a.a("JPackageList", "Jpl dataDir is " + str2);
                String[] list = new File(str2).list(new FilenameFilter() { // from class: cn.jiguang.j.a.1
                    @Override // java.io.FilenameFilter
                    public boolean accept(File file, String str3) {
                        if (TextUtils.isEmpty(str3)) {
                            return false;
                        }
                        return str3.matches("^([A-Za-z]{1}[A-Za-z\\d_]*\\.)+[A-Za-z][A-Za-z\\d_]*$");
                    }
                });
                if (list == null || list.length <= 0) {
                    cn.jiguang.al.a.d("JPackageList", "collect failed, pl is empty");
                    return;
                }
                if (this.f2627b == null) {
                    this.f2627b = new ArrayList();
                }
                for (String str3 : list) {
                    cn.jiguang.common.app.entity.a aVar = new cn.jiguang.common.app.entity.a();
                    aVar.f2524a = str3;
                    aVar.f2525b = cn.jiguang.common.app.helper.b.a(context, str3, "MD5");
                    aVar.f2526c = cn.jiguang.common.app.helper.b.a(context, str3, "SHA-1");
                    aVar.f2527d = cn.jiguang.common.app.helper.b.a(context, str3, "SHA-256");
                    this.f2627b.add(aVar);
                }
                if (this.f2627b.size() > 0) {
                    cn.jiguang.al.a.a("JPackageList", "collect success, size is " + this.f2627b.size());
                    super.b(context, str);
                }
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JPackageList", "package json exception:" + th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public boolean c(Context context, String str) {
        return b.B(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void d(Context context, String str) {
        List<cn.jiguang.common.app.entity.a> list;
        if (f(context)) {
            try {
                list = this.f2627b;
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JPackageList", "package json exception:" + th2.getMessage());
            }
            if (list != null && !list.isEmpty()) {
                JSONArray a10 = a(this.f2627b);
                super.d(context, str);
                ArrayList<JSONArray> a11 = cn.jiguang.common.app.helper.b.a(a10);
                if (a11 != null && !a11.isEmpty()) {
                    int i9 = 0;
                    int size = a11.size();
                    while (i9 < size) {
                        JSONObject jSONObject = new JSONObject();
                        i9++;
                        jSONObject.put("slice_index", i9);
                        jSONObject.put("slice_count", size);
                        jSONObject.put("data", a11.get(i9));
                        d.a(context, jSONObject, "package_list");
                        d.a(context, (Object) jSONObject);
                        super.d(context, str);
                    }
                    this.f2627b = null;
                    return;
                }
                return;
            }
            cn.jiguang.al.a.d("JPackageList", "there are no data to report");
        }
    }
}
