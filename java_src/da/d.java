package da;

import android.hardware.Camera;
import android.util.Log;
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f38027a = "da.d";

    public static Camera a() {
        return b(-1);
    }

    public static Camera b(int i9) {
        int numberOfCameras = Camera.getNumberOfCameras();
        if (numberOfCameras == 0) {
            Log.w(f38027a, "No cameras!");
            return null;
        }
        boolean z10 = i9 >= 0;
        if (!z10) {
            i9 = 0;
            while (i9 < numberOfCameras) {
                Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
                Camera.getCameraInfo(i9, cameraInfo);
                if (cameraInfo.facing == 0) {
                    break;
                }
                i9++;
            }
        }
        if (i9 < numberOfCameras) {
            String str = f38027a;
            Log.i(str, "Opening camera #" + i9);
            return Camera.open(i9);
        } else if (z10) {
            String str2 = f38027a;
            Log.w(str2, "Requested camera does not exist: " + i9);
            return null;
        } else {
            Log.i(f38027a, "No camera facing back; returning camera #0");
            return Camera.open(0);
        }
    }
}
