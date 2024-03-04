package com.tencent.liteav.sdkcommon;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import android.view.WindowManager;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.sdkcommon.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.light.utils.IOUtils;
@JNINamespace("liteav::dashboard")
/* loaded from: classes4.dex */
public class DashboardManager {
    private static final int LOG_MAX_SIZE = 15000;
    private static final String TAG = "DashboardManager";
    private final Context mAppContext;
    private final g mDashboardManagerView;
    private boolean mIsInit;
    private final g.a mSelectedDashboardChangeListener;
    private String mSelectedDashboardId;
    private final Handler mUIHandler;
    private final ArrayList<String> mDashboards = new ArrayList<>();
    private final Map<String, String> mDashboardStatus = new HashMap();
    private final Map<String, StringBuilder> mDashboardLogs = new HashMap();

    @CalledByNative
    public DashboardManager() {
        g.a aVar = new g.a() { // from class: com.tencent.liteav.sdkcommon.DashboardManager.1
            @Override // com.tencent.liteav.sdkcommon.g.a
            public final void a(int i9) {
                if (DashboardManager.this.mDashboards.size() <= i9) {
                    return;
                }
                DashboardManager dashboardManager = DashboardManager.this;
                dashboardManager.mSelectedDashboardId = (String) dashboardManager.mDashboards.get(i9);
                if (DashboardManager.this.mDashboards.contains(DashboardManager.this.mSelectedDashboardId)) {
                    DashboardManager.this.mDashboardManagerView.b((String) DashboardManager.this.mDashboardStatus.get(DashboardManager.this.mSelectedDashboardId));
                    StringBuilder sb2 = (StringBuilder) DashboardManager.this.mDashboardLogs.get(DashboardManager.this.mSelectedDashboardId);
                    if (sb2 != null) {
                        DashboardManager.this.mDashboardManagerView.a(sb2.toString());
                    } else {
                        DashboardManager.this.mDashboardManagerView.a("");
                    }
                }
            }
        };
        this.mSelectedDashboardChangeListener = aVar;
        LiteavLog.i(TAG, "java DashBoardManager Construct");
        this.mIsInit = false;
        Context applicationContext = ContextUtils.getApplicationContext();
        this.mAppContext = applicationContext;
        this.mDashboardManagerView = new g(applicationContext, aVar);
        this.mUIHandler = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addDashboardInternal(String str) {
        if (this.mDashboards.contains(str)) {
            return;
        }
        this.mDashboards.add(str);
        g gVar = this.mDashboardManagerView;
        gVar.f31284k.add(str);
        if (gVar.f31287n == null) {
            gVar.f31287n = gVar.f31284k.getItem(0);
            gVar.f31289p.a(0);
        }
        gVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void appendLogInternal(String str, String str2) {
        if (this.mDashboards.contains(str)) {
            StringBuilder sb2 = this.mDashboardLogs.get(str);
            if (sb2 == null) {
                sb2 = new StringBuilder();
                this.mDashboardLogs.put(str, sb2);
            }
            sb2.append(str2);
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            if (sb2.length() > LOG_MAX_SIZE) {
                sb2.delete(0, sb2.length() / 2);
            }
            if (str.equals(this.mSelectedDashboardId)) {
                g gVar = this.mDashboardManagerView;
                TextView textView = gVar.f31282i;
                if (textView != null) {
                    textView.append(str2 + IOUtils.LINE_SEPARATOR_UNIX);
                }
                ScrollView scrollView = gVar.f31285l;
                if (scrollView != null) {
                    scrollView.fullScroll(130);
                }
            }
        }
    }

    private boolean checkPermission() {
        if (LiteavSystemInfo.getSystemOSVersionInt() <= 23 || Settings.canDrawOverlays(this.mAppContext)) {
            return true;
        }
        Toast.makeText(this.mAppContext, "no system alert window permission, please authorize", 0).show();
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0052 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean init() {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.sdkcommon.DashboardManager.init():boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAllDashboardInternal() {
        this.mDashboards.clear();
        this.mDashboardStatus.clear();
        this.mDashboardLogs.clear();
        g gVar = this.mDashboardManagerView;
        gVar.f31284k.clear();
        TextView textView = gVar.f31281h;
        if (textView != null) {
            textView.setText("");
        }
        TextView textView2 = gVar.f31282i;
        if (textView2 != null) {
            textView2.setText("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeDashboardInternal(String str) {
        if (this.mDashboards.contains(str)) {
            this.mDashboards.remove(str);
            this.mDashboardStatus.remove(str);
            this.mDashboardLogs.remove(str);
            g gVar = this.mDashboardManagerView;
            if (str.equals(gVar.f31287n)) {
                int position = gVar.f31284k.getPosition(gVar.f31287n);
                if (position != gVar.f31284k.getCount() - 1) {
                    int i9 = position + 1;
                    gVar.f31287n = gVar.f31284k.getItem(i9);
                    gVar.f31289p.a(i9 - 1);
                }
                if (gVar.f31284k.getCount() == 1) {
                    gVar.f31287n = null;
                }
            }
            gVar.f31284k.remove(str);
            gVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStatusInternal(String str, String str2) {
        if (this.mDashboards.contains(str)) {
            this.mDashboardStatus.put(str, str2);
            if (str.equals(this.mSelectedDashboardId)) {
                this.mDashboardManagerView.b(str2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDashboardInternal(boolean z10) {
        View view;
        if (z10 && (!checkPermission() || !init())) {
            LiteavLog.i(TAG, "init or check permission is fail");
            return;
        }
        g gVar = this.mDashboardManagerView;
        if (z10 != gVar.f31286m) {
            if (z10) {
                WindowManager windowManager = gVar.f31276c;
                if (windowManager != null && (view = gVar.f31279f) != null) {
                    windowManager.addView(view, gVar.f31277d);
                    gVar.f31276c.addView(gVar.f31280g, gVar.f31278e);
                }
            } else {
                gVar.f31276c.removeView(gVar.f31279f);
                gVar.f31276c.removeView(gVar.f31280g);
            }
            gVar.f31286m = z10;
        }
    }

    @CalledByNative
    public int addDashboard(String str) {
        LiteavLog.i(TAG, "addDashboard dashboardId = ".concat(String.valueOf(str)));
        this.mUIHandler.post(b.a(this, str));
        return 0;
    }

    @CalledByNative
    public int appendLog(String str, String str2) {
        this.mUIHandler.post(f.a(this, str, str2));
        return 0;
    }

    @CalledByNative
    public int removeAllDashboard() {
        LiteavLog.i(TAG, "removeAllDashboard ");
        this.mUIHandler.post(d.a(this));
        return 0;
    }

    @CalledByNative
    public int removeDashboard(String str) {
        LiteavLog.i(TAG, "removeDashboard dashboardId = ".concat(String.valueOf(str)));
        this.mUIHandler.post(c.a(this, str));
        return 0;
    }

    @CalledByNative
    public int setStatus(String str, String str2) {
        this.mUIHandler.post(e.a(this, str, str2));
        return 0;
    }

    @CalledByNative
    public int showDashboard(boolean z10) {
        LiteavLog.i(TAG, "showDashBoard isShow = ".concat(String.valueOf(z10)));
        this.mUIHandler.post(a.a(this, z10));
        return 0;
    }
}
