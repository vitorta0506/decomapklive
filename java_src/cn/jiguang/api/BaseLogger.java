package cn.jiguang.api;
/* loaded from: classes.dex */
public abstract class BaseLogger {
    public static void flushCached2File() {
    }

    private void log(int i9, boolean z10, String str, String str2, Throwable th2) {
        JCoreManager.onEvent(null, getCommonTag(), 18, str, null, Integer.valueOf(i9), Boolean.valueOf(z10), str2, th2);
    }

    public void _d(String str, String str2, Object... objArr) {
    }

    public void d(String str, String str2) {
        log(3, true, str, str2, null);
    }

    public void d(String str, String str2, Throwable th2) {
        log(3, true, str, str2, th2);
    }

    public void dd(String str, String str2) {
        log(3, false, str, str2, null);
    }

    public void dd(String str, String str2, Throwable th2) {
        log(3, false, str, str2, th2);
    }

    public void e(String str, String str2) {
        log(6, true, str, str2, null);
    }

    public void e(String str, String str2, Throwable th2) {
        log(6, true, str, str2, th2);
    }

    public void ee(String str, String str2) {
        log(6, false, str, str2, null);
    }

    public void ee(String str, String str2, Throwable th2) {
        log(6, false, str, str2, th2);
    }

    public abstract String getCommonTag();

    public void i(String str, String str2) {
        log(4, true, str, str2, null);
    }

    public void i(String str, String str2, Throwable th2) {
        log(4, true, str, str2, th2);
    }

    public void ii(String str, String str2) {
        log(4, false, str, str2, null);
    }

    public void ii(String str, String str2, Throwable th2) {
        log(4, false, str, str2, th2);
    }

    public void v(String str, String str2) {
        log(2, true, str, str2, null);
    }

    public void v(String str, String str2, Throwable th2) {
        log(2, true, str, str2, th2);
    }

    public void vv(String str, String str2) {
        log(2, false, str, str2, null);
    }

    public void vv(String str, String str2, Throwable th2) {
        log(2, false, str, str2, th2);
    }

    public void w(String str, String str2) {
        log(5, true, str, str2, null);
    }

    public void w(String str, String str2, Throwable th2) {
        log(5, true, str, str2, th2);
    }

    public void ww(String str, String str2) {
        log(5, false, str, str2, null);
    }

    public void ww(String str, String str2, Throwable th2) {
        log(5, false, str, str2, th2);
    }
}
