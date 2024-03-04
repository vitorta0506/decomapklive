package cn.jpush.android.cache;
/* loaded from: classes.dex */
public class Key<T> {

    /* renamed from: a  reason: collision with root package name */
    String f2982a;

    /* renamed from: b  reason: collision with root package name */
    String f2983b;

    /* renamed from: c  reason: collision with root package name */
    T f2984c;

    /* renamed from: d  reason: collision with root package name */
    boolean f2985d;

    private Key(String str, String str2, T t10) {
        this.f2982a = str;
        this.f2983b = str2;
        if (t10 == null) {
            throw new IllegalArgumentException("default value can not be null");
        }
        this.f2984c = t10;
    }

    public static Key<Integer> BadgeCurNum() {
        return new Key("cn.jpush.config", "badgeCurNum", 0).a();
    }

    public static Key<Long> BlackPagesInternalTime() {
        return new Key("cn.jpush.config", "BInternalTime", 21600L).a();
    }

    public static Key<Long> BlackPagesLastReqTime() {
        return new Key("cn.jpush.config", "BLastReqTime", 0L).a();
    }

    public static Key<String> FCM_ClearFlag() {
        return new Key("cn.jpush.config", "fcm_clear_flag", "").a();
    }

    public static Key<Integer> IsNotificationEnabledLastTime() {
        return new Key("cn.jpush.config", "isNotificationEnabledLastTime", -1).a();
    }

    public static Key<String> LastAniConfigPath() {
        return new Key("cn.jpush.config", "LastAniConfigPath", "").a();
    }

    public static Key<Long> LastAniConfigReqTime() {
        return new Key("cn.jpush.config", "LastAniConfigReqTime", 0L).a();
    }

    public static Key<String> LocalAniConfigSign() {
        return new Key("cn.jpush.config", "LocalAniConfigSign", "").a();
    }

    public static Key<Integer> LocalAniConfigVersion() {
        return new Key("cn.jpush.config", "LocalAniConfigVersion", 0).a();
    }

    public static Key<String> NotiCancel() {
        return new Key("cn.jpush.config", "NotiCancel", "").a();
    }

    public static Key<String> NotiSchedule() {
        return new Key("cn.jpush.config", "NotiSchedule", "").a();
    }

    public static Key<String> NotiShow() {
        return new Key("cn.jpush.config", "NotiShow", "").a();
    }

    public static Key<Integer> PushVerCode() {
        return new Key("cn.jpush.config", "versionCode", 0).a();
    }

    public static Key<String> SvrAniConfigSign() {
        return new Key("cn.jpush.config", "SvrAniConfigSign", "").a();
    }

    public static Key<String> ThirdPush_ClearFlag() {
        return new Key("cn.jpush.config", "third_push_clear_flag", "").a();
    }

    public static Key<String> ThirdPush_RegID(byte b10) {
        return new Key("cn.jpush.config", "pluginPlatformRegid_v2" + ((int) b10), "").a();
    }

    public static Key<Boolean> ThirdPush_RegUpload(byte b10) {
        return new Key("cn.jpush.config", "pluginPlatformRegidupload" + ((int) b10), Boolean.FALSE).a();
    }

    public static Key<Boolean> UPSRegister() {
        return new Key<>("cn.jpush.config", "upsRegister", Boolean.TRUE);
    }

    private Key<T> a() {
        this.f2985d = true;
        return this;
    }

    public Key<T> file(String str) {
        this.f2982a = str;
        return this;
    }

    public Key<T> name(String str) {
        this.f2983b = str;
        return this;
    }

    public Key<T> set(T t10) {
        this.f2984c = t10;
        return this;
    }
}
