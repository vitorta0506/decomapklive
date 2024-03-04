package cn.jiguang.g;

import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import com.meizu.cloud.pushsdk.constants.PushConstants;
/* loaded from: classes.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    public static String f2585a = "cn.jiguang.sdk.share.profile";

    /* renamed from: b  reason: collision with root package name */
    public static String f2586b = "cn.jpush.preferences.v2";

    /* renamed from: c  reason: collision with root package name */
    String f2587c;

    /* renamed from: d  reason: collision with root package name */
    String f2588d;

    /* renamed from: e  reason: collision with root package name */
    T f2589e;

    /* renamed from: f  reason: collision with root package name */
    boolean f2590f;

    /* renamed from: g  reason: collision with root package name */
    boolean f2591g;

    public a(String str, String str2, T t10) {
        this.f2587c = str;
        this.f2588d = str2;
        if (t10 == null) {
            throw new IllegalArgumentException("default value can not be null");
        }
        this.f2589e = t10;
    }

    public static a<Boolean> A() {
        return new a<>("cn.jpush.android.user.profile", "is_tcp_close", Boolean.FALSE);
    }

    public static a<Integer> B() {
        return new a("cn.jpush.android.user.profile", "jpush_register_code", -1).X();
    }

    public static a<String> C() {
        return new a<>(f2586b, "device_config_appkey", "");
    }

    public static a<String> D() {
        return new a<>(f2586b, "i_new", "");
    }

    public static a<String> E() {
        return new a<>(f2586b, "push_udid", "");
    }

    public static a<String> F() {
        return new a<>(f2586b, "last_connection_type", "");
    }

    public static a<String> G() {
        return new a(f2586b, "sis_report_history", "").Y();
    }

    public static a<Long> H() {
        return new a<>("cn.jpush.preferences.v2.rid", "next_rid", -1L);
    }

    public static a<Integer> I() {
        return new a<>("cn.jpush.preferences.v2.rid", PushConstants.SEQ_ID, -1);
    }

    public static a<String> J() {
        return new a("cn.jiguang.sdk.address", "ips_in_last_good_sis", "").Y();
    }

    public static a<String> K() {
        return new a("cn.jiguang.sdk.address", "ssl_ips_in_last_good_sis", "").Y();
    }

    public static a<Boolean> L() {
        return new a<>("cn.jiguang.sdk.address", "udp_data_report", Boolean.FALSE);
    }

    public static a<Long> M() {
        return new a<>("cn.jiguang.sdk.address", "sis_last_update", 0L);
    }

    public static a<Long> N() {
        return new a<>("cn.jiguang.sdk.address", "last_sis_report_time", 0L);
    }

    public static a<String> O() {
        return new a("cn.jiguang.sdk.address", "default_sis_ips", "").Y();
    }

    public static a<String> P() {
        return new a("cn.jiguang.sdk.address", "default_conn", "").Y();
    }

    public static a<String> Q() {
        return new a("cn.jiguang.sdk.address", "default_conn_srv", "").Y();
    }

    public static a<String> R() {
        return (a<T>) new a("cn.jiguang.sdk.address", "tcp_report", "").X().Y();
    }

    public static a<String> S() {
        return new a<>("PrefsFile", "key", "");
    }

    public static a<Integer> T() {
        return new a<>("WakeViolation", "violation_count", 0);
    }

    public static a<Integer> U() {
        return new a("internal_debug", "log_enable", 0).X();
    }

    public static a<Long> V() {
        return new a("internal_debug", "expire", 0L).X();
    }

    public static a<Integer> W() {
        return new a("internal_debug", "delay_upload", 0).X();
    }

    private a<T> X() {
        this.f2590f = true;
        return this;
    }

    private a<T> Y() {
        this.f2591g = true;
        return this;
    }

    public static a<String> a() {
        return new a("cn.jpush.android.user.profile", "devcie_id_generated", "").X();
    }

    public static a<String> a(String str) {
        return new a<>("cn.jpush.android.user.profile", "sdk_version_" + str, "");
    }

    public static a<String> a(boolean z10) {
        return (a<T>) new a("cn.jiguang.sdk.address", z10 ? "default_https_report" : "default_http_report", "").X().Y();
    }

    public static a<Boolean> b() {
        return new a<>("cn.jpush.android.user.profile", "upload_crash", Boolean.TRUE);
    }

    public static a<String> b(String str) {
        return new a("cn.jiguang.sdk.address", "dns_" + str, "").Y();
    }

    public static a<String> b(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("last_good_sis_address");
        sb2.append(z10 ? "_V4" : "_V6");
        return new a("cn.jiguang.sdk.address", sb2.toString(), "").Y();
    }

    public static a<Long> c() {
        return new a("cn.jiguang.sdk.user.profile", "key_uid", 0L).X();
    }

    public static a<Long> c(String str) {
        return new a<>("cn.jiguang.sdk.address", "dns_last_update_" + str, 0L);
    }

    public static a<String> c(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("last_good_conn");
        sb2.append(z10 ? "_V4" : "_V6");
        return new a("cn.jiguang.sdk.address", sb2.toString(), "").Y();
    }

    public static a<String> d() {
        return new a("cn.jiguang.sdk.user.profile", "key_rid", "").X();
    }

    public static a<String> d(String str) {
        return new a("cn.jiguang.sdk.address", "srv_" + str, "").Y();
    }

    public static a<String> d(boolean z10) {
        return (a<T>) new a("cn.jiguang.sdk.address", z10 ? "default_https_report" : "default_http_report", "").X().Y();
    }

    public static a<String> e() {
        return new a("cn.jiguang.sdk.user.profile", "key_pwd", "").X();
    }

    public static a<Long> e(String str) {
        return new a<>("cn.jiguang.sdk.address", "srv_last_update_" + str, 0L);
    }

    public static a<Integer> f() {
        return new a("cn.jiguang.sdk.user.profile", "idc", -1).X();
    }

    public static a<String> f(String str) {
        return new a("IpInfos", str, "").Y();
    }

    public static a<Long> g() {
        return new a<>("cn.jiguang.sdk.user.profile", "login_local_time", -1L);
    }

    public static a<Integer> g(String str) {
        return new a<>("netinfo", str, 0);
    }

    public static a<Long> h() {
        return new a<>("cn.jiguang.sdk.user.profile", "login_server_time", -1L);
    }

    public static a<String> i() {
        return new a(f2585a, "key_share_process_uuid", "").X();
    }

    public static a<Long> j() {
        return new a(f2585a, "key_share_process_uuid_creattime", -1L).X();
    }

    public static a<Integer> k() {
        return new a(f2585a, "sp_state", -1).X();
    }

    public static a<String> l() {
        return new a<>("cn.jiguang.sdk.user.set.profile", "option_channel", "");
    }

    public static a<String> m() {
        return new a<>("cn.jiguang.sdk.user.set.profile", "analytics_account_id", "");
    }

    public static a<Boolean> n() {
        return new a<>("cn.jiguang.sdk.user.set.profile", "is_ups_register", Boolean.TRUE);
    }

    public static a<Long> o() {
        return new a<>("Push_Page_Config", "css", 0L);
    }

    public static a<Long> p() {
        return new a<>("Push_Page_Config", "cse", 0L);
    }

    public static a<Long> q() {
        return new a<>("Push_Page_Config", "last_pause", -1L);
    }

    public static a<String> r() {
        return new a<>("Push_Page_Config", "session_id", "");
    }

    public static a<String> s() {
        return new a("cn.jiguang.sdk.report", "report_urls", "").Y();
    }

    public static a<String> t() {
        return new a("cn.jiguang.sdk.report", "report_sis_urls", "").Y();
    }

    public static a<Long> u() {
        return new a<>("cn.jiguang.sdk.report", "last_update_report_urls", 0L);
    }

    public static a<Long> v() {
        return new a<>("cn.jiguang.sdk.report", "report_urls_ttl_millis", 3600000L);
    }

    public static a<String> w() {
        return new a(f2586b, HianalyticsBaseData.SDK_VERSION, "").X();
    }

    public static a<Long> x() {
        return new a<>(f2586b, "first_init", 0L);
    }

    public static a<Long> y() {
        return new a<>(f2586b, "lbs_delay", 0L);
    }

    public static a<Boolean> z() {
        return new a<>(f2586b, "jcore_lbs_enable", Boolean.TRUE);
    }

    public a<T> a(T t10) {
        this.f2589e = t10;
        return this;
    }

    public a<T> h(String str) {
        this.f2587c = str;
        return this;
    }

    public a<T> i(String str) {
        this.f2588d = str;
        return this;
    }
}
