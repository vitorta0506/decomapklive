package f0;

import android.net.Uri;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
/* loaded from: classes.dex */
public final class b {
    public static boolean a(Uri uri) {
        return b(uri) && !e(uri);
    }

    public static boolean b(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && ShareConstants.WEB_DIALOG_PARAM_MEDIA.equals(uri.getAuthority());
    }

    public static boolean c(Uri uri) {
        return b(uri) && e(uri);
    }

    public static boolean d(int i9, int i10) {
        return i9 != Integer.MIN_VALUE && i10 != Integer.MIN_VALUE && i9 <= 512 && i10 <= 384;
    }

    private static boolean e(Uri uri) {
        return uri.getPathSegments().contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
    }
}
