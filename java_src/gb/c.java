package gb;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.content.FileProvider;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.PermissionTools;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.views.h;
import gb.a;
import gb.b;
import java.io.File;
import java.lang.ref.WeakReference;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: k  reason: collision with root package name */
    private static final Object f39995k = new Object();

    /* renamed from: l  reason: collision with root package name */
    private static c f39996l;

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<MainActivity> f39998b;

    /* renamed from: g  reason: collision with root package name */
    private d f40003g;

    /* renamed from: i  reason: collision with root package name */
    private int f40005i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f40006j;

    /* renamed from: c  reason: collision with root package name */
    private int f39999c = 4197;

    /* renamed from: d  reason: collision with root package name */
    private String f40000d = "";

    /* renamed from: e  reason: collision with root package name */
    private String f40001e = "";

    /* renamed from: h  reason: collision with root package name */
    private boolean f40004h = false;

    /* renamed from: a  reason: collision with root package name */
    private gb.a f39997a = new gb.a();

    /* renamed from: f  reason: collision with root package name */
    private gb.b f40002f = new gb.b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f40007a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Activity f40008b;

        a(boolean z10, Activity activity) {
            this.f40007a = z10;
            this.f40008b = activity;
        }

        @Override // gb.a.c
        public void a(Dialog dialog) {
            if (c.this.f40002f.f()) {
                dialog.dismiss();
                c.this.f40002f.d();
            } else {
                dialog.dismiss();
            }
            c.this.f40004h = false;
        }

        @Override // gb.a.c
        public void b(Dialog dialog) {
            if (this.f40007a) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + this.f40008b.getPackageName()));
                intent.setPackage("com.android.vending");
                try {
                    this.f40008b.startActivity(intent);
                } catch (ActivityNotFoundException e10) {
                    ToastUtils.debug("手机未安装谷歌商店");
                    PackageUtils.viewUri(this.f40008b, Uri.parse("https://www.buzzcast.info"));
                    e10.printStackTrace();
                }
            } else if (PermissionTools.checkStoragePer()) {
                c cVar = c.this;
                cVar.q(cVar.f40001e);
            } else {
                PermissionTools.requestStoragePer(this.f40008b, c.this.f39999c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements b.InterfaceC0431b {
        b() {
        }

        @Override // gb.b.InterfaceC0431b
        public void a(File file, String str) {
            c.this.f40004h = false;
            c.this.f40000d = str;
            c.this.f39997a.l(100);
            c.this.f39997a.d();
            if (!FileUtil.isFileExist(c.this.f40000d)) {
                ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getResources().getString(R.string.update_failed));
                if (c.this.f39997a.e()) {
                    return;
                }
                c.this.f40003g.a();
                return;
            }
            if (!c.this.f39997a.e()) {
                c.this.f40003g.c();
            }
            if (!PermissionTools.checkUnKnowResourcePer()) {
                c.this.v();
                String string = BaseApplication.getInstance().getResources().getString(R.string.update_failed);
                String string2 = BaseApplication.getInstance().getString(R.string.no_install_per);
                BaseApplication baseApplication = BaseApplication.getInstance();
                ToastUtils.showToast(baseApplication, string + "," + string2);
                return;
            }
            c cVar = c.this;
            cVar.r(cVar.f40000d);
        }

        @Override // gb.b.InterfaceC0431b
        public void onError(int i9, String str) {
            ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getResources().getString(R.string.update_failed));
            if (!c.this.f39997a.e()) {
                c.this.f40003g.a();
            }
            c.this.f39997a.d();
            c.this.f40004h = false;
        }

        @Override // gb.b.InterfaceC0431b
        public void onProgress(int i9) {
            if (i9 >= 100) {
                i9 = 99;
            }
            if (!c.this.f39997a.e()) {
                c.this.f40003g.b(i9);
            } else {
                c.this.f39997a.l(i9);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: gb.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0432c implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f40011a;

        C0432c(Activity activity) {
            this.f40011a = activity;
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
            if (Build.VERSION.SDK_INT >= 26) {
                this.f40011a.startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + BaseApplication.getInstance().getPackageName())), 107);
                return;
            }
            this.f40011a.startActivityForResult(new Intent("android.settings.SECURITY_SETTINGS"), 107);
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    private c() {
        d dVar = new d();
        this.f40003g = dVar;
        dVar.d();
    }

    private void m(Activity activity) {
        if (this.f40002f.f()) {
            ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getResources().getString(R.string.already_update_show_tips));
        } else if (this.f40004h) {
        } else {
            this.f40004h = true;
            try {
                this.f40005i = BaseApplication.getInstance().getPackageManager().getPackageInfo(BaseApplication.getInstance().getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
            }
            w(activity, true);
        }
    }

    private void n() {
        FileUtil.deleteFile(FilePathProvider.getApkPath());
    }

    public static c p() {
        if (f39996l == null) {
            synchronized (f39995k) {
                if (f39996l == null) {
                    f39996l = new c();
                }
            }
        }
        return f39996l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(String str) {
        if (!PermissionTools.checkUnKnowResourcePer()) {
            v();
            return;
        }
        this.f39997a.d();
        n();
        this.f40002f.e(str, new b());
        this.f39997a.i(BaseApplication.getInstance().getString(R.string.update_minimize));
        this.f39997a.o();
        this.f39997a.f(BaseApplication.getInstance().getResources().getString(R.string.str_no));
        this.f39997a.l(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(String str) {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        if (Build.VERSION.SDK_INT >= 24) {
            intent.addFlags(1);
            intent.setDataAndType(FileProvider.getUriForFile(currTopActivity, currTopActivity.getPackageName() + ".fileprovider", new File(str)), "application/vnd.android.package-archive");
        } else {
            intent.setDataAndType(Uri.parse("file://" + str), "application/vnd.android.package-archive");
        }
        intent.addFlags(268435456);
        currTopActivity.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity == null) {
            return;
        }
        h.b(currTopActivity, BaseApplication.getInstance().getString(R.string.unknown_resource_tips), new C0432c(currTopActivity));
    }

    private void w(Activity activity, boolean z10) {
        gb.a aVar = this.f39997a;
        if ((aVar != null && aVar.e()) || activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        UserBean c10 = b8.e.g().c();
        this.f40001e = c10.getDownloadlink();
        this.f39997a.c(activity);
        this.f39997a.g(false);
        this.f39997a.h(false);
        this.f39997a.j(this.f40006j);
        String updateCopywriting = c10.getUpdateCopywriting();
        if (!TextUtils.isEmpty(updateCopywriting)) {
            updateCopywriting = updateCopywriting.replace("\\n", IOUtils.LINE_SEPARATOR_UNIX);
        }
        this.f39997a.m(updateCopywriting);
        this.f39997a.i(activity.getString(R.string.update_now));
        this.f39997a.f(activity.getString(R.string.update_later));
        this.f39997a.k(new a(z10, activity));
        this.f39997a.n();
    }

    public void l(Activity activity) {
        m(activity);
    }

    public void o() {
        if (this.f39998b != null) {
            gb.a aVar = this.f39997a;
            if (aVar != null) {
                aVar.d();
            }
            this.f39998b.clear();
        }
        this.f40004h = false;
    }

    public void s(int i9, int i10) {
        if (i9 == 107) {
            if (!PermissionTools.checkUnKnowResourcePer()) {
                String string = BaseApplication.getInstance().getResources().getString(R.string.permission_rejection);
                String string2 = BaseApplication.getInstance().getString(R.string.no_install_per);
                BaseApplication baseApplication = BaseApplication.getInstance();
                ToastUtils.showToast(baseApplication, string + "," + string2);
                return;
            }
            q(this.f40001e);
        }
    }

    public void t() {
        if (TextUtils.isEmpty(this.f40001e)) {
            return;
        }
        q(this.f40001e);
    }

    public c u(boolean z10) {
        this.f40006j = z10;
        return this;
    }
}
