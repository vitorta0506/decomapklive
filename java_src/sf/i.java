package sf;
/* loaded from: classes5.dex */
public class i {
    public static String a(String str, String str2) {
        try {
            return (String) j.c(null, "android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Exception e10) {
            tf.c.l("SystemProperties.get: " + e10);
            return str2;
        }
    }
}
