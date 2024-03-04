package da;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.guochao.faceshow.utils.SystemUtil;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final String f38008d = "b";

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f38009e = Pattern.compile(",");

    /* renamed from: a  reason: collision with root package name */
    private final Context f38010a;

    /* renamed from: b  reason: collision with root package name */
    private Point f38011b;

    /* renamed from: c  reason: collision with root package name */
    private Point f38012c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        this.f38010a = context;
    }

    private static int a(CharSequence charSequence, int i9) {
        Log.i("CameraManager", "findBestMotZoomValue");
        int i10 = 0;
        for (String str : f38009e.split(charSequence)) {
            try {
                double parseDouble = Double.parseDouble(str.trim());
                int i11 = (int) (10.0d * parseDouble);
                if (Math.abs(i9 - parseDouble) < Math.abs(i9 - i10)) {
                    i10 = i11;
                }
            } catch (NumberFormatException unused) {
                return i9;
            }
        }
        Log.i("findBestMotZoomValue", i10 + "");
        return i10;
    }

    private static Point b(CharSequence charSequence, Point point) {
        String[] split = f38009e.split(charSequence);
        int length = split.length;
        int i9 = Integer.MAX_VALUE;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            String trim = split[i10].trim();
            int indexOf = trim.indexOf(120);
            if (indexOf < 0) {
                String str = f38008d;
                Log.w(str, "Bad preview-size: " + trim);
            } else {
                try {
                    int parseInt = Integer.parseInt(trim.substring(0, indexOf));
                    int parseInt2 = Integer.parseInt(trim.substring(indexOf + 1));
                    int abs = Math.abs(parseInt - point.x) + Math.abs(parseInt2 - point.y);
                    if (abs == 0) {
                        i12 = parseInt2;
                        i11 = parseInt;
                        break;
                    } else if (abs < i9) {
                        i12 = parseInt2;
                        i9 = abs;
                        i11 = parseInt;
                    }
                } catch (NumberFormatException unused) {
                    String str2 = f38008d;
                    Log.w(str2, "Bad preview-size: " + trim);
                }
            }
            i10++;
        }
        if (i11 <= 0 || i12 <= 0) {
            return null;
        }
        return new Point(i11, i12);
    }

    private static Point d(Camera.Parameters parameters, Point point) {
        String str = parameters.get("preview-size-values");
        if (str == null) {
            str = parameters.get("preview-size-value");
        }
        Point point2 = null;
        if (str != null) {
            String str2 = f38008d;
            Log.d(str2, "preview-size-values parameter: " + str);
            point2 = b(str, point);
        }
        return point2 == null ? new Point((point.x >> 3) << 3, (point.y >> 3) << 3) : point2;
    }

    private void h(Camera.Parameters parameters) {
        Log.i("CameraManager", "setZoom");
        String str = parameters.get("zoom-supported");
        if (str == null || Boolean.parseBoolean(str)) {
            int i9 = 5;
            String str2 = parameters.get("max-zoom");
            if (str2 != null) {
                try {
                    int parseDouble = (int) (Double.parseDouble(str2) * 10.0d);
                    if (5 > parseDouble) {
                        i9 = parseDouble;
                    }
                } catch (NumberFormatException unused) {
                    String str3 = f38008d;
                    Log.w(str3, "Bad max-zoom: " + str2);
                }
            }
            String str4 = parameters.get("taking-picture-zoom-max");
            if (str4 != null) {
                try {
                    int parseInt = Integer.parseInt(str4);
                    if (i9 > parseInt) {
                        i9 = parseInt;
                    }
                } catch (NumberFormatException unused2) {
                    String str5 = f38008d;
                    Log.w(str5, "Bad taking-picture-zoom-max: " + str4);
                }
            }
            String str6 = parameters.get("mot-zoom-values");
            if (str6 != null) {
                i9 = a(str6, i9);
            }
            String str7 = parameters.get("mot-zoom-step");
            if (str7 != null) {
                try {
                    int parseDouble2 = (int) (Double.parseDouble(str7.trim()) * 10.0d);
                    if (parseDouble2 > 1) {
                        i9 -= i9 % parseDouble2;
                    }
                } catch (NumberFormatException unused3) {
                }
            }
            if (str2 != null || str6 != null) {
                parameters.set("zoom", String.valueOf(i9 / 10.0d));
            }
            if (str4 != null) {
                parameters.set("taking-picture-zoom", i9);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point c() {
        return this.f38012c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point e() {
        return this.f38011b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        Display defaultDisplay = ((WindowManager) this.f38010a.getSystemService("window")).getDefaultDisplay();
        this.f38011b = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        String str = f38008d;
        Log.d(str, "Screen resolution: " + this.f38011b);
        Point point = new Point();
        Point point2 = this.f38011b;
        point.x = point2.x;
        point.y = point2.y;
        int i9 = point2.x;
        int i10 = point2.y;
        if (i9 < i10) {
            point.x = i10;
            point.y = point2.x;
        }
        this.f38012c = d(parameters, point);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        String str = f38008d;
        Log.d(str, "Setting preview size: " + this.f38012c);
        Point point = this.f38012c;
        parameters.setPreviewSize(point.x, point.y);
        h(parameters);
        if ("Nexus 5X".equals(SystemUtil.getSystemModel())) {
            camera.setDisplayOrientation(270);
        } else {
            camera.setDisplayOrientation(90);
        }
        camera.setParameters(parameters);
    }
}
