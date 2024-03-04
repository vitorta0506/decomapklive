package ka;

import android.app.Dialog;
import android.content.Context;
import androidx.annotation.StringRes;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.BasePermissionObserver;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.views.e;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    Fragment f53649a;

    /* renamed from: b  reason: collision with root package name */
    FragmentActivity f53650b;

    /* renamed from: c  reason: collision with root package name */
    e f53651c;

    /* renamed from: d  reason: collision with root package name */
    String[] f53652d;

    /* renamed from: e  reason: collision with root package name */
    private int f53653e;

    /* renamed from: f  reason: collision with root package name */
    private int f53654f;

    /* renamed from: g  reason: collision with root package name */
    private int f53655g;

    /* renamed from: h  reason: collision with root package name */
    private int f53656h;

    /* renamed from: i  reason: collision with root package name */
    te.a f53657i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ka.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0551a extends BasePermissionObserver {
        C0551a() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onDenied(te.a aVar) {
            super.onDenied(aVar);
            a aVar2 = a.this;
            aVar2.f53657i = aVar;
            if (aVar2.f53656h > 0) {
                a.this.j();
                return;
            }
            e eVar = a.this.f53651c;
            if (eVar != null) {
                eVar.d(aVar);
            }
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onGranted(te.a aVar) {
            a aVar2 = a.this;
            aVar2.f53657i = aVar;
            e eVar = aVar2.f53651c;
            if (eVar != null) {
                eVar.e(aVar);
            }
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onShouldShowRequestPermissionRationale(te.a aVar) {
            super.onShouldShowRequestPermissionRationale(aVar);
            a aVar2 = a.this;
            aVar2.f53657i = aVar;
            if (aVar2.f53655g > 0) {
                a.this.i();
                return;
            }
            e eVar = a.this.f53651c;
            if (eVar != null) {
                eVar.a(aVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements e.a {
        b() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                a.this.k();
                return;
            }
            a aVar = a.this;
            e eVar = aVar.f53651c;
            if (eVar != null) {
                eVar.d(aVar.f53657i);
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f53660a;

        c(Context context) {
            this.f53660a = context;
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                PackageUtils.gotoSetting(this.f53660a);
                a aVar = a.this;
                e eVar = aVar.f53651c;
                if (eVar != null) {
                    eVar.c(aVar.f53657i);
                    return;
                }
                return;
            }
            a aVar2 = a.this;
            e eVar2 = aVar2.f53651c;
            if (eVar2 != null) {
                eVar2.b(aVar2.f53657i);
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class d implements e {
        @Override // ka.a.e
        public void a(te.a aVar) {
        }

        @Override // ka.a.e
        public void b(te.a aVar) {
        }

        @Override // ka.a.e
        public void c(te.a aVar) {
        }

        @Override // ka.a.e
        public void d(te.a aVar) {
        }

        @Override // ka.a.e
        public void e(te.a aVar) {
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void a(te.a aVar);

        void b(te.a aVar);

        void c(te.a aVar);

        void d(te.a aVar);

        void e(te.a aVar);
    }

    private void h() {
        com.tbruyelle.rxpermissions2.a aVar;
        if (this.f53649a != null) {
            aVar = new com.tbruyelle.rxpermissions2.a(this.f53649a);
        } else {
            aVar = this.f53650b != null ? new com.tbruyelle.rxpermissions2.a(this.f53650b) : null;
        }
        if (aVar != null) {
            aVar.p(this.f53652d).subscribe(new C0551a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        Context context;
        Fragment fragment = this.f53649a;
        if (fragment != null) {
            context = fragment.getContext();
        } else {
            context = this.f53650b;
            if (context == null) {
                context = null;
            }
        }
        if (context == null) {
            return;
        }
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(context, new c(context));
        int i9 = this.f53653e;
        if (i9 > 0) {
            eVar.i(context.getText(i9));
        } else {
            eVar.i(context.getText(R.string.rating_cancle));
        }
        if (this.f53654f > 0) {
            eVar.k(context.getText(this.f53653e));
        } else {
            eVar.k(context.getText(R.string.payment_password_setting));
        }
        int i10 = this.f53655g;
        if (i10 > 0) {
            eVar.f(context.getText(i10));
        }
        eVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        Context context;
        Fragment fragment = this.f53649a;
        if (fragment != null) {
            context = fragment.getContext();
        } else {
            context = this.f53650b;
            if (context == null) {
                context = null;
            }
        }
        if (context == null) {
            return;
        }
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(context, new b());
        int i9 = this.f53653e;
        if (i9 > 0) {
            eVar.i(context.getText(i9));
        } else {
            eVar.i(context.getText(R.string.rating_cancle));
        }
        int i10 = this.f53654f;
        if (i10 > 0) {
            eVar.k(context.getText(i10));
        } else {
            eVar.k(context.getText(R.string.payment_password_setting));
        }
        int i11 = this.f53656h;
        if (i11 > 0) {
            eVar.f(context.getText(i11));
        }
        eVar.show();
    }

    public a e(e eVar) {
        this.f53651c = eVar;
        return this;
    }

    public a f(String... strArr) {
        this.f53652d = strArr;
        return this;
    }

    public a g(@StringRes int i9) {
        this.f53653e = i9;
        return this;
    }

    public a k() {
        h();
        return this;
    }

    public a l(@StringRes int i9) {
        this.f53655g = i9;
        return this;
    }

    public a m(FragmentActivity fragmentActivity) {
        this.f53650b = fragmentActivity;
        return this;
    }
}
