package eb;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.widget.PopupWindow;
import androidx.fragment.app.Fragment;
import androidx.webkit.internal.AssetHelper;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ShareLogData;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.TailWaterMark;
import com.guochao.faceshow.utils.Tool;
import com.guochao.faceshow.utils.Tools;
import com.tencent.rtmp.TXLivePlayer;
import com.tencent.rtmp.TXVodPlayer;
/* loaded from: classes4.dex */
public class b {
    private com.guochao.faceshow.views.m A;
    private TailWaterMark C;
    private int D;

    /* renamed from: a  reason: collision with root package name */
    private PopupWindow f38510a;

    /* renamed from: b  reason: collision with root package name */
    private Window f38511b;

    /* renamed from: c  reason: collision with root package name */
    private View f38512c;

    /* renamed from: d  reason: collision with root package name */
    private View f38513d;

    /* renamed from: e  reason: collision with root package name */
    private View f38514e;

    /* renamed from: f  reason: collision with root package name */
    private View f38515f;

    /* renamed from: g  reason: collision with root package name */
    private View f38516g;

    /* renamed from: h  reason: collision with root package name */
    private View f38517h;

    /* renamed from: i  reason: collision with root package name */
    private View f38518i;

    /* renamed from: j  reason: collision with root package name */
    private View f38519j;

    /* renamed from: k  reason: collision with root package name */
    private View f38520k;

    /* renamed from: l  reason: collision with root package name */
    private String f38521l;

    /* renamed from: m  reason: collision with root package name */
    private String f38522m;

    /* renamed from: n  reason: collision with root package name */
    private String f38523n;

    /* renamed from: o  reason: collision with root package name */
    private String f38524o;

    /* renamed from: p  reason: collision with root package name */
    private VideoItem f38525p;

    /* renamed from: q  reason: collision with root package name */
    private TXLivePlayer f38526q;

    /* renamed from: r  reason: collision with root package name */
    private TXVodPlayer f38527r;

    /* renamed from: s  reason: collision with root package name */
    private String f38528s;

    /* renamed from: t  reason: collision with root package name */
    private String f38529t;

    /* renamed from: u  reason: collision with root package name */
    private String f38530u;

    /* renamed from: v  reason: collision with root package name */
    private String f38531v;

    /* renamed from: w  reason: collision with root package name */
    private String f38532w;

    /* renamed from: x  reason: collision with root package name */
    private Activity f38533x;

    /* renamed from: z  reason: collision with root package name */
    private Fragment f38535z;

    /* renamed from: y  reason: collision with root package name */
    private String f38534y = "";
    private int B = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f38536a;

        a(Context context) {
            this.f38536a = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.A();
            ClipboardManager clipboardManager = (ClipboardManager) this.f38536a.getSystemService("clipboard");
            if (clipboardManager == null || b.this.f38524o == null) {
                return;
            }
            clipboardManager.setPrimaryClip(ClipData.newPlainText("Label", b.this.f38524o));
            ToastUtils.showToast(BaseApplication.getInstance(), this.f38536a.getString(R.string.copy_link_succ));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: eb.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class View$OnClickListenerC0387b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f38538a;

        View$OnClickListenerC0387b(Context context) {
            this.f38538a = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.A();
            if (b.this.f38525p != null) {
                Tools.addBlackList((Activity) this.f38538a, b.this.f38525p.getUserId());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements TailWaterMark.WaterMarkProcessListener {

        /* loaded from: classes4.dex */
        class a implements View.OnClickListener {

            /* renamed from: eb.b$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            class RunnableC0388a implements Runnable {
                RunnableC0388a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    b.this.A.c();
                }
            }

            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (b.this.C != null) {
                    b.this.C.cancelProcess();
                }
                HandlerGetter.getMainHandler().postDelayed(new RunnableC0388a(), 200L);
            }
        }

        c() {
        }

        @Override // com.guochao.faceshow.utils.TailWaterMark.WaterMarkProcessListener
        public void onNetWorkError() {
            if (b.this.A != null) {
                b.this.A.c();
            }
        }

        @Override // com.guochao.faceshow.utils.TailWaterMark.WaterMarkProcessListener
        public void onWaterMarkFinish(String str, Boolean bool, String str2) {
            if (bool.booleanValue()) {
                if (b.this.f38533x != null) {
                    v9.c.f(b.this.f38533x, str, b.this.f38523n, str2, b.this.z());
                }
                if (b.this.A != null) {
                    if (b.this.B == -1) {
                        b.this.A.d();
                    } else {
                        b.this.A.i(100);
                    }
                    b.this.A.k(b.this.f38533x.getResources().getString(R.string.save_successful));
                }
                if (b.this.A != null) {
                    b.this.A.c();
                }
                ToastUtils.showToast(BaseApplication.getInstance(), b.this.f38533x.getResources().getString(R.string.save_successful));
                return;
            }
            if (b.this.A != null) {
                b.this.A.c();
            }
            ToastUtils.showToast(BaseApplication.getInstance(), b.this.f38533x.getResources().getString(R.string.saved_error));
        }

        @Override // com.guochao.faceshow.utils.TailWaterMark.WaterMarkProcessListener
        public void onWaterMarkProgress(int i9) {
            if (b.this.A == null) {
                b.this.A = new com.guochao.faceshow.views.m();
                b.this.A.b(b.this.f38533x);
                b.this.A.g(false);
                b.this.A.h(false);
                b.this.A.j(b.this.f38533x.getResources().getString(R.string.view_in_album_tip));
                b.this.A.f(b.this.f38533x.getResources().getString(R.string.str_no), new a());
            }
            b.this.B = i9;
            if (i9 == -1) {
                b.this.A.d();
                com.guochao.faceshow.views.m mVar = b.this.A;
                mVar.k(b.this.f38533x.getResources().getString(R.string.Saving) + "…");
            } else {
                if (i9 >= 100) {
                    i9 = 99;
                }
                b.this.A.i(i9);
                b.this.A.k(b.this.f38533x.getResources().getString(R.string.Saving));
            }
            if (b.this.A.e()) {
                return;
            }
            b.this.A.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements u9.a {
        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.A();
            v9.a.c(b.this.f38533x, b.this.f38524o);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.A();
            if (b.this.f38533x != null) {
                if (b.this.f38521l != null && !b.this.f38521l.startsWith("http")) {
                    v9.c.e(b.this.f38533x, Constants.ThirdPartyLogin.PLATFORM_TWITTER, TextUtils.isEmpty(b.this.f38522m) ? BaseApplication.getInstance().getResources().getString(R.string.FaceCast_APP_Name) : b.this.f38522m, b.this.f38523n, b.this.f38521l, 2, b.this.f38524o, b.this.z());
                } else {
                    v9.c.g(b.this.f38533x, Constants.ThirdPartyLogin.PLATFORM_TWITTER, TextUtils.isEmpty(b.this.f38522m) ? BaseApplication.getInstance().getResources().getString(R.string.FaceCast_APP_Name) : b.this.f38522m, b.this.f38523n, b.this.f38521l, b.this.f38524o, 0, b.this.z());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.A();
            if (b.this.f38533x != null) {
                if (b.this.f38521l != null && !b.this.f38521l.startsWith("http")) {
                    v9.c.e(b.this.f38533x, SharePlatformBean.Wechat.NAME, TextUtils.isEmpty(b.this.f38522m) ? BaseApplication.getInstance().getResources().getString(R.string.FaceCast_APP_Name) : b.this.f38522m, b.this.f38523n, b.this.f38521l, 2, b.this.f38524o, b.this.z());
                } else {
                    v9.c.g(b.this.f38533x, SharePlatformBean.Wechat.NAME, TextUtils.isEmpty(b.this.f38522m) ? BaseApplication.getInstance().getResources().getString(R.string.FaceCast_APP_Name) : b.this.f38522m, b.this.f38523n, b.this.f38521l, b.this.f38524o, 0, b.this.z());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.A();
            if (b.this.f38533x != null) {
                if (b.this.f38521l != null && !b.this.f38521l.startsWith("http")) {
                    v9.c.e(b.this.f38533x, SharePlatformBean.WechatMoments.NAME, TextUtils.isEmpty(b.this.f38522m) ? BaseApplication.getInstance().getResources().getString(R.string.FaceCast_APP_Name) : b.this.f38522m, b.this.f38523n, b.this.f38521l, 2, b.this.f38524o, b.this.z());
                } else {
                    v9.c.g(b.this.f38533x, SharePlatformBean.WechatMoments.NAME, TextUtils.isEmpty(b.this.f38522m) ? BaseApplication.getInstance().getResources().getString(R.string.FaceCast_APP_Name) : b.this.f38522m, b.this.f38523n, b.this.f38521l, b.this.f38524o, 0, b.this.z());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.A();
            if (b.this.f38533x != null) {
                if (b.this.f38521l != null && !b.this.f38521l.startsWith("http")) {
                    v9.c.e(b.this.f38533x, SharePlatformBean.SinaWeibo.NAME, TextUtils.isEmpty(b.this.f38522m) ? BaseApplication.getInstance().getResources().getString(R.string.FaceCast_APP_Name) : b.this.f38522m, b.this.f38523n, b.this.f38521l, 2, b.this.f38524o, b.this.z());
                } else {
                    v9.c.g(b.this.f38533x, SharePlatformBean.SinaWeibo.NAME, TextUtils.isEmpty(b.this.f38522m) ? BaseApplication.getInstance().getResources().getString(R.string.FaceCast_APP_Name) : b.this.f38522m, b.this.f38523n, b.this.f38521l, b.this.f38524o, 0, b.this.z());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.A();
            b.this.f38534y = SharePlatformBean.Instagram.NAME;
            b.this.D(SharePlatformBean.Instagram.NAME, BaseApplication.getInstance().getString(R.string.share_video_storage_permission_tips));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.A();
            b.this.f38534y = SharePlatformBean.Youtube.NAME;
            b.this.D(SharePlatformBean.Youtube.NAME, BaseApplication.getInstance().getString(R.string.share_video_storage_permission_tips));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.A();
            b.this.f38534y = "";
            b.this.D(null, BaseApplication.getInstance().getString(R.string.save_video_storage_permission_tips));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.A();
            if (b.this.f38511b != null) {
                ReportController.report(b.this.f38533x, b.this.f38528s, b.this.f38529t, b.this.f38530u);
            } else if (b.this.f38526q != null) {
                ReportController.report(b.this.f38533x, b.this.f38528s, b.this.f38529t, b.this.f38530u);
            } else if (b.this.f38527r != null) {
                Activity activity = b.this.f38533x;
                String str = b.this.f38528s;
                ReportController.report(activity, str, b.this.f38529t + "", b.this.f38530u);
            } else {
                b.this.x("传入的player为null,无法截屏,举报页面弹出遭到拦截");
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface n {
        void l1(ShareLogData shareLogData);
    }

    public b(Activity activity) {
        this.f38533x = activity;
        B(activity);
        this.D = 4097;
    }

    private void B(Context context) {
        View inflate = View.inflate(context, R.layout.share_pop_ly, null);
        this.f38512c = inflate;
        View findViewById = inflate.findViewById(R.id.facebook);
        findViewById.setVisibility(com.guochao.faceshow.aaspring.manager.i.u().s().getFbShare() == 1 ? 0 : 8);
        View findViewById2 = this.f38512c.findViewById(R.id.share_titter);
        this.f38513d = this.f38512c.findViewById(R.id.share_instagram);
        this.f38514e = this.f38512c.findViewById(R.id.share_youtube);
        this.f38512c.findViewById(R.id.share_youtube);
        View findViewById3 = this.f38512c.findViewById(R.id.wechat);
        View findViewById4 = this.f38512c.findViewById(R.id.sina);
        this.f38520k = this.f38512c.findViewById(R.id.add_black);
        this.f38518i = this.f38512c.findViewById(R.id.copy_link);
        this.f38519j = this.f38512c.findViewById(R.id.report);
        View findViewById5 = this.f38512c.findViewById(R.id.wechat_moment);
        this.f38515f = this.f38512c.findViewById(R.id.delete_video);
        this.f38516g = this.f38512c.findViewById(R.id.upload_video);
        this.f38517h = this.f38512c.findViewById(R.id.save_btn);
        this.f38512c.findViewById(R.id.more).setOnClickListener(new View.OnClickListener() { // from class: eb.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.this.C(view);
            }
        });
        findViewById.setOnClickListener(new e());
        findViewById2.setOnClickListener(new f());
        findViewById3.setOnClickListener(new g());
        findViewById5.setOnClickListener(new h());
        findViewById4.setOnClickListener(new i());
        this.f38513d.setOnClickListener(new j());
        this.f38514e.setOnClickListener(new k());
        this.f38517h.setOnClickListener(new l());
        this.f38519j.setOnClickListener(new m());
        this.f38518i.setOnClickListener(new a(context));
        this.f38520k.setOnClickListener(new View$OnClickListenerC0387b(context));
        this.f38510a = Tool.createPopWindowBottomInstance(this.f38512c, -1, -2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(View view) {
        String str;
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setFlags(3);
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        String str2 = this.f38522m;
        if ((str2 != null && str2.equals(this.f38524o)) || ((str = this.f38523n) != null && str.equals(this.f38524o))) {
            String str3 = this.f38523n;
            if (str3 == null) {
                str3 = this.f38522m;
            }
            intent.putExtra("android.intent.extra.TEXT", str3);
        } else {
            StringBuilder sb2 = new StringBuilder();
            String str4 = this.f38523n;
            if (str4 == null) {
                str4 = this.f38522m;
            }
            sb2.append(str4);
            sb2.append(" ");
            sb2.append(this.f38524o);
            intent.putExtra("android.intent.extra.TEXT", sb2.toString());
        }
        view.getContext().startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(String str, String str2) {
        w(this.f38525p, TextUtils.isEmpty(str), str2, new c());
    }

    private void E(VideoItem videoItem) {
        if (videoItem == null) {
            x("传入的VideoItem == null,请检查你的代码..");
            return;
        }
        this.f38525p = videoItem;
        this.f38513d.setVisibility(0);
        this.f38514e.setVisibility(0);
        this.f38517h.setVisibility(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void w(com.guochao.faceshow.aaspring.beans.VideoItem r10, boolean r11, java.lang.String r12, com.guochao.faceshow.utils.TailWaterMark.WaterMarkProcessListener r13) {
        /*
            r9 = this;
            boolean r12 = com.guochao.faceshow.utils.PermissionTools.checkStoragePer()
            if (r12 != 0) goto L14
            androidx.fragment.app.Fragment r10 = r9.f38535z
            if (r10 == 0) goto Le
            com.guochao.faceshow.utils.PermissionTools.requestStoragePerByFragment(r10)
            goto L13
        Le:
            android.app.Activity r10 = r9.f38533x
            com.guochao.faceshow.utils.PermissionTools.requestStoragePer(r10)
        L13:
            return
        L14:
            if (r10 != 0) goto L17
            return
        L17:
            r12 = 0
            java.lang.String r0 = r10.getWidth()     // Catch: java.lang.Exception -> L2d
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> L2d
            java.lang.String r1 = r10.getHeight()     // Catch: java.lang.Exception -> L2b
            int r12 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Exception -> L2b
            r8 = r12
            r7 = r0
            goto L34
        L2b:
            r1 = move-exception
            goto L2f
        L2d:
            r1 = move-exception
            r0 = 0
        L2f:
            r1.printStackTrace()
            r7 = r0
            r8 = 0
        L34:
            com.guochao.faceshow.utils.TailWaterMark r12 = r9.C
            if (r12 != 0) goto L41
            com.guochao.faceshow.utils.TailWaterMark r12 = new com.guochao.faceshow.utils.TailWaterMark
            android.app.Activity r0 = r9.f38533x
            r12.<init>(r0)
            r9.C = r12
        L41:
            if (r11 == 0) goto L55
            com.guochao.faceshow.utils.TailWaterMark r2 = r9.C
            r3 = 0
            java.lang.String r4 = r10.getVideoUrl()
            java.lang.String r5 = r10.getVideoId()
            java.lang.String r6 = r10.getUserId()
            r2.makeWaterMarkVideoToDCMI(r3, r4, r5, r6, r7, r8)
        L55:
            com.guochao.faceshow.utils.TailWaterMark r10 = r9.C
            r10.setWaterMarkProcessListener(r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.b.w(com.guochao.faceshow.aaspring.beans.VideoItem, boolean, java.lang.String, com.guochao.faceshow.utils.TailWaterMark$WaterMarkProcessListener):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(String str) {
        LogUtils.e("SharePopWindowController", str);
    }

    public static String y() {
        return BaseApplication.getInstance().getString(R.string.FaceCast_APP_Name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public u9.a z() {
        return new d();
    }

    public void A() {
        PopupWindow popupWindow = this.f38510a;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        TailWaterMark tailWaterMark = this.C;
        if (tailWaterMark != null) {
            tailWaterMark.cancelProcess();
        }
    }

    public void F(View view, String str, String str2, String str3, String str4, String str5) {
        this.f38531v = "SHARE_TYPE_PAGE";
        this.f38532w = str5;
        this.f38522m = str;
        G(view, str2, str3, str4);
    }

    public void G(View view, String str, String str2, String str3) {
        this.f38523n = str;
        this.f38521l = str2;
        this.f38524o = str3;
        PopupWindow popupWindow = this.f38510a;
        if (popupWindow != null) {
            popupWindow.showAtLocation(view, 83, 0, 0);
        }
    }

    public void H(View view, String str, String str2, String str3, VideoItem videoItem) {
        this.f38531v = "SHARE_TYPE_VIDEO";
        E(videoItem);
        VideoItem videoItem2 = this.f38525p;
        this.f38532w = videoItem2 == null ? "" : videoItem2.getVideoId();
        G(view, str, str2, str3);
    }

    public void setOnDeleteBtnClickListener(View.OnClickListener onClickListener) {
        this.f38515f.setOnClickListener(onClickListener);
        this.f38515f.setVisibility(0);
    }

    public void setOnUpLoadBtnClickListener(View.OnClickListener onClickListener) {
        this.f38516g.setOnClickListener(onClickListener);
        this.f38516g.setVisibility(0);
    }
}
