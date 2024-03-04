package cn.jiguang.be;

import android.util.SparseArray;
import com.tencent.ugc.TXVideoEditConstants;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final SparseArray<String> f2474a;

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        f2474a = sparseArray;
        sparseArray.put(0, "OK");
        sparseArray.put(TXVideoEditConstants.ERR_UNSUPPORT_VIDEO_FORMAT, "Exceed buffer size. Please contact support.");
        sparseArray.put(-1000, "Connection failed. Please check your connection and retry later!");
        sparseArray.put(-998, "Sending failed or timeout. Please Retry later!");
        sparseArray.put(-997, "Receiving failed or timeout. Please Retry later!");
        sparseArray.put(-996, "Connection is closed. Please Retry later!");
        sparseArray.put(-994, "Response timeout. Please Retry later!");
        sparseArray.put(-993, "Invalid socket. Please Retry later!");
        sparseArray.put(11, "Failed to register!");
        sparseArray.put(1005, "Your appKey and android package name are not matched. Please double check them according to Application you created on Portal.");
        sparseArray.put(1006, "You android package name is not exist, Please register your pacakge name in Portal.");
        sparseArray.put(1007, "Invalid Imei, Register again.");
        sparseArray.put(1008, "Invalid appKey, Please get your Appkey from JIGUANG web console!");
        sparseArray.put(1009, "Your appKey is related to a non-Android App.Please use your Android App's appKey, or add an Android app for this appKey.");
        sparseArray.put(10000, "Receiver data parse error");
        sparseArray.put(102, "102 - Incorrect password");
        sparseArray.put(108, "108 - Incorrect uid");
        sparseArray.put(1012, "Server reject this connection, will clear cache and restart connect.");
    }

    public static String a(int i9) {
        SparseArray<String> sparseArray = f2474a;
        if (sparseArray.get(i9) == null) {
            cn.jiguang.as.d.c("StatusCode", "Unknown error code - " + i9);
            return null;
        }
        return sparseArray.get(i9);
    }
}
