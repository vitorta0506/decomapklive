package x6;

import android.content.Context;
import com.guochao.faceshow.utils.BaseConfig;
import com.tencent.thumbplayer.api.TPErrorCode;
/* loaded from: classes3.dex */
public class a extends BaseConfig {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public static String f59625a = null;

    /* renamed from: b  reason: collision with root package name */
    public static String f59626b = null;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public static String f59627c = null;

    /* renamed from: d  reason: collision with root package name */
    public static String f59628d = null;

    /* renamed from: e  reason: collision with root package name */
    public static String f59629e = null;

    /* renamed from: f  reason: collision with root package name */
    public static String f59630f = "https://fsveg.facecast.xyz/";

    /* renamed from: g  reason: collision with root package name */
    public static String f59631g = "https://fsveg.facecast.xyz/";

    /* renamed from: h  reason: collision with root package name */
    public static String f59632h = "https://fsveg.buzzcast.info/";

    /* renamed from: i  reason: collision with root package name */
    public static boolean f59633i = false;

    public static void a(Context context, boolean z10) {
        if (z10) {
            f59629e = "357b94ba92";
            int i9 = context.getSharedPreferences("serverEnv", 0).getInt("server_env", -1);
            if (i9 == -1) {
                i9 = 2000;
            }
            b(i9);
            return;
        }
        f59629e = "0319f4aa23";
        b(TPErrorCode.TP_ERROR_TYPE_DOWNLOAD_PROXY);
    }

    private static void b(int i9) {
        if (i9 == 3000) {
            f59633i = true;
            f59625a = "https://linshi.facecast.xyz/faceshow/";
            f59626b = "https://hui-api.facecast.xyz/";
            f59627c = "https://upload.facecast.xyz/faceshow/";
            f59628d = "https://huiupload.facecast.xyz/faceshow-upload/";
            f59631g = "https://dhcxzil.facecast.xyz/";
            f59630f = "https://huih5.buzzcast.info/";
            f59632h = "https://huih5.buzzcast.info/";
        } else if (i9 == 4000) {
            f59625a = "https://dhcxzil.facecast.xyz/faceshow/";
            f59626b = "https://api.facecast.xyz/";
            f59627c = "https://upload.facecast.xyz/faceshow/";
            f59628d = "https://upload.facecast.xyz/faceshow-upload/";
            f59631g = "https://dhcxzil.facecast.xyz/";
            f59630f = "https://fsveg.facecast.xyz/";
            f59632h = "https://fsveg.buzzcast.info/";
        } else if (i9 == 1000) {
            f59625a = "http://192.168.200.11:8083/faceshow/";
            f59626b = "https://hui-api.facecast.xyz/";
            f59627c = "http://192.168.200.11:8083/upload/";
            f59628d = "https://fhwqdf.gchao.com/faceshow-upload/";
            f59631g = "https://fhwqdf.gchao.com/";
            f59630f = "https://html5.gchao.com/";
            f59632h = "https://html5.gchao.com/";
        } else {
            f59625a = "https://fhwqdf.gchao.com/faceshow/";
            f59626b = "https://bcyfapi.gchao.com/";
            f59627c = "https://fhwqdf.gchao.com/faceshow/";
            f59628d = "https://fhwqdf.gchao.com/faceshow-upload/";
            f59631g = "https://fhwqdf.gchao.com/";
            f59630f = "https://html5.gchao.com/";
            f59632h = "https://html5.gchao.com/";
        }
    }
}
