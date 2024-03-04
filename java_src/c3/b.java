package c3;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.AnalyticsEvents;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final int f1584a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1585b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1586c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1587d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1588e;

    private b(int i9, int i10, int i11, int i12, int i13) {
        this.f1584a = i9;
        this.f1585b = i10;
        this.f1586c = i11;
        this.f1587d = i12;
        this.f1588e = i13;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    public static b a(String str) {
        char c10;
        com.google.android.exoplayer2.util.a.a(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < split.length; i13++) {
            String f10 = com.google.common.base.c.f(split[i13].trim());
            f10.hashCode();
            switch (f10.hashCode()) {
                case 100571:
                    if (f10.equals("end")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3556653:
                    if (f10.equals(ViewHierarchyConstants.TEXT_KEY)) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109757538:
                    if (f10.equals("start")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109780401:
                    if (f10.equals(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE)) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                    i10 = i13;
                    break;
                case 1:
                    i12 = i13;
                    break;
                case 2:
                    i9 = i13;
                    break;
                case 3:
                    i11 = i13;
                    break;
            }
        }
        if (i9 == -1 || i10 == -1 || i12 == -1) {
            return null;
        }
        return new b(i9, i10, i11, i12, split.length);
    }
}
