package com.tencent.liteav.txcvodplayer.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.tencent.liteav.base.datareport.Event4XReporter;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.liteav.txcplayer.common.c;
import com.tencent.ugc.datereport.UGCDataReportDef;
/* loaded from: classes4.dex */
public final class a {
    public String A;
    private int H;
    private int J;
    private int L;
    private Event4XReporter N;
    private Event4XReporter O;

    /* renamed from: a  reason: collision with root package name */
    public Context f31460a;

    /* renamed from: o  reason: collision with root package name */
    public int f31474o;

    /* renamed from: y  reason: collision with root package name */
    public String f31484y;

    /* renamed from: z  reason: collision with root package name */
    public String f31485z;
    private final String B = "TXCVodPlayCollection";
    private final String C = "1";

    /* renamed from: b  reason: collision with root package name */
    public String f31461b = null;

    /* renamed from: c  reason: collision with root package name */
    public long f31462c = 0;

    /* renamed from: d  reason: collision with root package name */
    public long f31463d = 0;

    /* renamed from: e  reason: collision with root package name */
    public long f31464e = 0;
    private boolean D = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f31465f = true;

    /* renamed from: g  reason: collision with root package name */
    public boolean f31466g = false;

    /* renamed from: h  reason: collision with root package name */
    public boolean f31467h = false;

    /* renamed from: i  reason: collision with root package name */
    public int f31468i = 0;

    /* renamed from: j  reason: collision with root package name */
    public int f31469j = 0;
    private int E = 0;

    /* renamed from: k  reason: collision with root package name */
    public long f31470k = 0;

    /* renamed from: l  reason: collision with root package name */
    public int f31471l = 0;

    /* renamed from: m  reason: collision with root package name */
    public int f31472m = 0;

    /* renamed from: n  reason: collision with root package name */
    public int f31473n = 0;

    /* renamed from: p  reason: collision with root package name */
    public boolean f31475p = false;

    /* renamed from: q  reason: collision with root package name */
    public boolean f31476q = false;
    private int G = 0;

    /* renamed from: r  reason: collision with root package name */
    public int f31477r = 0;

    /* renamed from: s  reason: collision with root package name */
    public String f31478s = "0";

    /* renamed from: t  reason: collision with root package name */
    public String f31479t = "";
    private String I = "";

    /* renamed from: u  reason: collision with root package name */
    public int f31480u = -1;

    /* renamed from: v  reason: collision with root package name */
    public int f31481v = 0;

    /* renamed from: w  reason: collision with root package name */
    public int f31482w = 0;

    /* renamed from: x  reason: collision with root package name */
    public int f31483x = 0;
    private float K = 1.0f;
    private String F = LiteavSystemInfo.getAppVersion();
    private String M = LiteavSystemInfo.getDeviceUuid();

    public a(Context context) {
        this.A = "";
        this.f31460a = context;
        String appId = LicenseChecker.getInstance().getAppId();
        LiteavLog.i("VodLicenseCheck", "getLicenseAppId = ".concat(String.valueOf(appId)));
        this.A = appId;
        this.O = new Event4XReporter(UGCDataReportDef.COMMAND_ID_DAU, 1004, "", true, 1);
    }

    private String f() {
        Context context = this.f31460a;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        int i9 = applicationInfo.labelRes;
        return i9 == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i9);
    }

    private void g() {
        this.N.setEventStringValue("str_sdk_name", "liteavSdk");
        this.N.setEventStringValue("str_brand_type", LiteavSystemInfo.getBrand());
        this.N.setEventStringValue("str_device_resolution", a(this.f31460a));
        this.N.setEventStringValue("str_device_type", LiteavSystemInfo.getModel());
        this.N.setEventIntValue("u32_network_type", LiteavSystemInfo.getNetworkType());
        String deviceUuid = LiteavSystemInfo.getDeviceUuid();
        this.N.setEventStringValue(UGCDataReportDef.DR_KEY_DEV_UUID, deviceUuid);
        this.N.setEventStringValue("str_app_version", this.F);
        this.N.setEventStringValue("str_app_name", f());
        this.N.setEventStringValue(UGCDataReportDef.DR_KEY_SYS_VER, String.valueOf(LiteavSystemInfo.getSystemOSVersionInt()));
        this.N.setEventStringValue("str_stream_url", this.f31461b);
        String deviceUuid2 = LiteavSystemInfo.getDeviceUuid();
        this.M = deviceUuid2;
        this.N.setEventStringValue(JThirdPlatFormInterface.KEY_TOKEN, deviceUuid2);
        this.N.setEventStringValue("str_user_id", "_".concat(String.valueOf(deviceUuid)));
        this.N.setEventStringValue("str_package_name", LiteavSystemInfo.getAppPackageName());
        this.N.setEventStringValue("u32_app_id", this.A);
    }

    private void h() {
        this.N = new Event4XReporter(40304, 1011, "", true, 1);
        g();
        this.N.setEventIntValue("u32_timeuse", this.E);
        this.N.setEventIntValue("u32_videotime", this.f31468i);
        Event4XReporter event4XReporter = this.N;
        int i9 = this.f31472m;
        event4XReporter.setEventIntValue("u32_avg_load", i9 == 0 ? 0L : this.f31473n / i9);
        this.N.setEventIntValue("u32_load_cnt", this.f31472m);
        this.N.setEventIntValue("u32_max_load", this.f31474o);
        this.N.setEventIntValue("u32_avg_block_time", this.f31473n);
        this.N.setEventIntValue("u32_player_type", this.f31477r);
        Event4XReporter event4XReporter2 = this.N;
        int i10 = this.f31482w;
        event4XReporter2.setEventIntValue("u32_dns_time", i10 > 0 ? i10 : 0L);
        Event4XReporter event4XReporter3 = this.N;
        int i11 = this.f31481v;
        event4XReporter3.setEventIntValue("u32_tcp_did_connect", i11 > 0 ? i11 : 0L);
        Event4XReporter event4XReporter4 = this.N;
        int i12 = this.f31483x;
        event4XReporter4.setEventIntValue("u32_first_video_packet", i12 > 0 ? i12 : 0L);
        Event4XReporter event4XReporter5 = this.N;
        int i13 = this.f31471l;
        event4XReporter5.setEventIntValue("u32_first_i_frame", i13 > 0 ? i13 : 0L);
        this.N.setEventStringValue("u32_server_ip", this.f31484y);
        this.N.setEventStringValue("u32_drm_type", this.f31485z);
        this.N.setEventStringValue("str_fileid", this.f31479t);
        this.N.setEventStringValue("u32_playmode", this.f31478s);
        this.N.setEventIntValue("u64_err_code", this.H);
        this.N.setEventStringValue("str_err_info", this.I);
        this.N.setEventIntValue("u32_video_decode_type", this.f31480u);
        this.N.setEventIntValue("u32_speed", (int) (this.K * 100.0f));
        this.N.sendReport();
        StringBuilder sb2 = new StringBuilder("report evt 40304: token=");
        sb2.append(this.M);
        sb2.append(" ,dev_uuid=");
        sb2.append(LiteavSystemInfo.getDeviceUuid());
        sb2.append(" ,str_app_version=");
        sb2.append(this.F);
        sb2.append(" ,sys_version=");
        sb2.append(LiteavSystemInfo.getSystemOSVersionInt());
        sb2.append(" ,str_stream_url=");
        sb2.append(this.f31461b);
        sb2.append(" ,u32_timeuse=");
        sb2.append(this.E);
        sb2.append(" ,u32_videotime=");
        sb2.append(this.f31468i);
        sb2.append(" ,u32_avg_load=");
        int i14 = this.f31472m;
        sb2.append(i14 == 0 ? 0 : this.f31473n / i14);
        sb2.append(" ,u32_load_cnt=");
        sb2.append(this.f31472m);
        sb2.append(" ,u32_max_load=");
        sb2.append(this.f31474o);
        sb2.append(" ,u32_avg_block_time=");
        sb2.append(this.f31473n);
        sb2.append(" ,u32_player_type=");
        sb2.append(this.f31477r);
        sb2.append(" ,u32_dns_time=");
        sb2.append(this.f31482w);
        sb2.append(" ,u32_tcp_did_connect=");
        int i15 = this.f31481v;
        if (i15 <= 0) {
            i15 = -1;
        }
        sb2.append(i15);
        sb2.append(" ,u32_first_video_packet=");
        int i16 = this.f31483x;
        sb2.append(i16 > 0 ? i16 : -1);
        sb2.append(" ,u32_first_i_frame=");
        sb2.append(this.f31471l);
        sb2.append(" ,u32_server_ip=");
        sb2.append(this.f31484y);
        sb2.append(" ,u32_drm_type=");
        sb2.append(this.f31485z);
        sb2.append(" ,str_fileid=");
        sb2.append(this.f31479t);
        sb2.append(" ,u32_playmode=");
        sb2.append(this.f31478s);
        sb2.append(" ,u64_err_code=");
        sb2.append(this.H);
        sb2.append(" ,str_err_info=");
        sb2.append(this.I);
        sb2.append(" ,u32_speed=");
        sb2.append(this.K * 100.0f);
        sb2.append(" ,u32_app_id= ,u32_video_decode_type=");
        sb2.append(this.f31480u);
        LiteavLog.i("TXCVodPlayCollection", sb2.toString());
    }

    private void i() {
        LiteavLog.i("TXCVodPlayCollection", "onSegmentReport");
        this.N = new Event4XReporter(40305, 1011, "", true, 1);
        g();
        this.N.setEventIntValue("u32_videotime", this.f31468i);
        this.N.setEventIntValue("u32_player_type", this.f31477r);
        this.N.setEventStringValue("u32_server_ip", this.f31484y);
        this.N.setEventStringValue("u32_drm_type", this.f31485z);
        this.N.setEventStringValue("str_fileid", this.f31479t);
        this.N.setEventStringValue("u32_playmode", this.f31478s);
        this.N.setEventIntValue("u32_videoindex", this.f31469j);
        this.N.setEventIntValue("u32_realplaytime", this.f31470k / 1000);
        this.N.setEventIntValue("u64_timestamp", System.currentTimeMillis());
        this.N.setEventIntValue("u32_speed", (int) (this.K * 100.0f));
        this.N.setEventIntValue("u32_segment_duration", b.a(this.f31460a).a(this.A));
        this.N.sendReport();
        LiteavLog.i("TXCVodPlayCollection", "report evt 40305: token=" + this.M + " ,dev_uuid=" + LiteavSystemInfo.getDeviceUuid() + " ,str_app_version=" + this.F + " ,sys_version=" + LiteavSystemInfo.getSystemOSVersionInt() + " ,str_stream_url=" + this.f31461b + " ,u32_videotime=" + this.f31468i + " ,u32_player_type=" + this.f31477r + " ,u32_server_ip=" + this.f31484y + " ,u32_drm_type=" + this.f31485z + " ,str_fileid=" + this.f31479t + " ,u32_playmode=" + this.f31478s + " ,u32_videoindex=" + this.f31469j + " ,u32_realplaytime=" + (this.f31470k / 1000) + " ,u32_speed=" + (this.K * 100.0f) + " ,u32_app_id= ,u64_timestamp=" + System.currentTimeMillis());
    }

    public final void a() {
        this.N = new Event4XReporter(40303, 1011, "", true, 1);
        g();
        this.N.setEventStringValue("str_fileid", this.f31479t);
        LicenseChecker.d a10 = c.a();
        this.N.setEventStringValue("u64_err_code", String.valueOf(a10.value));
        if (a10 != LicenseChecker.d.OK) {
            this.N.setEventStringValue("str_err_info", "player_license_error");
        }
        this.N.sendReport();
        LiteavLog.i("TXCVodPlayCollection", "report evt 40303: token=" + this.M);
    }

    public final void b() {
        if (0 == this.f31463d) {
            LiteavLog.i("TXCVodPlayCollection", "calculateSegmentPlayTime mBeginPlayTS == 0");
            return;
        }
        LiteavLog.i("TXCVodPlayCollection", "calculateSegmentPlayTime mCurIndexPlayTime= " + this.f31470k + ", mBeginPlayTS=" + this.f31463d);
        this.f31470k = this.f31470k + ((long) ((int) (System.currentTimeMillis() - this.f31463d)));
        this.f31463d = System.currentTimeMillis();
        if (this.f31478s.equals("1")) {
            boolean b10 = b.a(this.f31460a).b(this.A);
            if (!b10) {
                b.a(this.f31460a).c(this.A);
            }
            if (this.D && b10) {
                i();
            }
            long j10 = this.f31470k;
            this.E = (int) (this.E + (j10 / 1000));
            this.f31470k = j10 % 1000;
        }
    }

    public final void c() {
        LiteavLog.i("TXCVodPlayCollection", "stop " + this.f31470k);
        if (this.f31465f) {
            this.f31463d = System.currentTimeMillis();
        }
        if (this.D && !this.f31466g) {
            b();
            this.E = (int) (this.E + (this.f31470k / 1000));
            this.f31470k = 0L;
            h();
            this.D = false;
        }
        this.f31475p = false;
        this.f31476q = false;
        this.f31465f = false;
        this.f31471l = 0;
        this.f31466g = false;
        this.f31467h = false;
    }

    public final void d() {
        LiteavLog.i("TXCVodPlayCollection", "setBitrateRenderStart");
        this.f31467h = false;
    }

    public final void e() {
        this.f31475p = true;
        this.G++;
        this.O.reportDau(1551, 0, "");
        LiteavLog.d("TXCVodPlayCollection", "mSeekCnt= " + this.G);
    }

    private static String a(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        Display defaultDisplay = windowManager.getDefaultDisplay();
        try {
            Class<?> cls = Class.forName("android.view.Display");
            if (LiteavSystemInfo.getSystemOSVersionInt() > 8) {
                cls.getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            }
            int i9 = displayMetrics.heightPixels;
            int i10 = displayMetrics.widthPixels;
            return i10 + "_" + i9;
        } catch (Throwable unused) {
            return "";
        }
    }

    public final void b(boolean z10) {
        if (z10) {
            this.J = 1;
            this.O.reportDau(1553, 0, "");
        } else {
            this.J = 0;
        }
        LiteavLog.i("TXCVodPlayCollection", "mIsMirror= " + this.J);
    }

    public final void c(boolean z10) {
        if (!z10) {
            this.f31467h = true;
        }
        this.L++;
        this.O.reportDau(1554, 0, "");
        LiteavLog.d("TXCVodPlayCollection", "mSetBitrateIndexCnt= " + this.L);
    }

    public final void a(boolean z10) {
        this.D = true;
        long currentTimeMillis = System.currentTimeMillis();
        this.f31463d = currentTimeMillis;
        this.f31462c = currentTimeMillis;
        this.E = 0;
        this.f31470k = 0L;
        this.f31469j = 0;
        this.f31464e = 0L;
        this.f31472m = 0;
        this.f31473n = 0;
        this.f31474o = 0;
        if (z10) {
            this.f31465f = false;
        } else {
            this.f31466g = true;
        }
        LiteavLog.i("TXCVodPlayCollection", "start " + this.f31463d + ", mIsPaused = " + this.f31465f + " mIsPreLoading = " + this.f31466g);
    }

    public final void a(float f10) {
        this.K = f10;
        this.O.reportDau(1552, 0, "");
        LiteavLog.i("TXCVodPlayCollection", "mSpeed = " + this.K);
    }

    public final void a(int i9, String str) {
        LiteavLog.i("TXCVodPlayCollection", "errorCode= " + i9 + " ，errorInfo= " + str);
        if (this.f31471l == 0) {
            this.H = i9;
            this.I = str;
            if (str == null) {
                this.I = "";
            }
        }
        if (this.D) {
            c();
        }
    }
}
