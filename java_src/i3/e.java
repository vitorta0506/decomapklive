package i3;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.ui.R$string;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.v;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.Locale;
/* loaded from: classes2.dex */
public class e implements k {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f40948a;

    public e(Resources resources) {
        this.f40948a = (Resources) com.google.android.exoplayer2.util.a.e(resources);
    }

    private String b(k1 k1Var) {
        int i9 = k1Var.f6124y;
        if (i9 == -1 || i9 < 1) {
            return "";
        }
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 == 6 || i9 == 7) {
                    return this.f40948a.getString(R$string.exo_track_surround_5_point_1);
                }
                if (i9 != 8) {
                    return this.f40948a.getString(R$string.exo_track_surround);
                }
                return this.f40948a.getString(R$string.exo_track_surround_7_point_1);
            }
            return this.f40948a.getString(R$string.exo_track_stereo);
        }
        return this.f40948a.getString(R$string.exo_track_mono);
    }

    private String c(k1 k1Var) {
        int i9 = k1Var.f6107h;
        return i9 == -1 ? "" : this.f40948a.getString(R$string.exo_track_bitrate, Float.valueOf(i9 / 1000000.0f));
    }

    private String d(k1 k1Var) {
        return TextUtils.isEmpty(k1Var.f6101b) ? "" : k1Var.f6101b;
    }

    private String e(k1 k1Var) {
        String j10 = j(f(k1Var), h(k1Var));
        return TextUtils.isEmpty(j10) ? d(k1Var) : j10;
    }

    private String f(k1 k1Var) {
        String str = k1Var.f6102c;
        if (TextUtils.isEmpty(str) || "und".equals(str)) {
            return "";
        }
        Locale forLanguageTag = l0.f6985a >= 21 ? Locale.forLanguageTag(str) : new Locale(str);
        Locale L = l0.L();
        String displayName = forLanguageTag.getDisplayName(L);
        if (TextUtils.isEmpty(displayName)) {
            return "";
        }
        try {
            int offsetByCodePoints = displayName.offsetByCodePoints(0, 1);
            return displayName.substring(0, offsetByCodePoints).toUpperCase(L) + displayName.substring(offsetByCodePoints);
        } catch (IndexOutOfBoundsException unused) {
            return displayName;
        }
    }

    private String g(k1 k1Var) {
        int i9 = k1Var.f6116q;
        int i10 = k1Var.f6117r;
        return (i9 == -1 || i10 == -1) ? "" : this.f40948a.getString(R$string.exo_track_resolution, Integer.valueOf(i9), Integer.valueOf(i10));
    }

    private String h(k1 k1Var) {
        String string = (k1Var.f6104e & 2) != 0 ? this.f40948a.getString(R$string.exo_track_role_alternate) : "";
        if ((k1Var.f6104e & 4) != 0) {
            string = j(string, this.f40948a.getString(R$string.exo_track_role_supplementary));
        }
        if ((k1Var.f6104e & 8) != 0) {
            string = j(string, this.f40948a.getString(R$string.exo_track_role_commentary));
        }
        return (k1Var.f6104e & BaseConfig.DRESS_UP_TITLE) != 0 ? j(string, this.f40948a.getString(R$string.exo_track_role_closed_captions)) : string;
    }

    private static int i(k1 k1Var) {
        int i9 = v.i(k1Var.f6111l);
        if (i9 != -1) {
            return i9;
        }
        if (v.k(k1Var.f6108i) != null) {
            return 2;
        }
        if (v.b(k1Var.f6108i) != null) {
            return 1;
        }
        if (k1Var.f6116q == -1 && k1Var.f6117r == -1) {
            return (k1Var.f6124y == -1 && k1Var.f6125z == -1) ? -1 : 1;
        }
        return 2;
    }

    private String j(String... strArr) {
        String str = "";
        for (String str2 : strArr) {
            if (str2.length() > 0) {
                str = TextUtils.isEmpty(str) ? str2 : this.f40948a.getString(R$string.exo_item_list, str, str2);
            }
        }
        return str;
    }

    @Override // i3.k
    public String a(k1 k1Var) {
        String e10;
        int i9 = i(k1Var);
        if (i9 == 2) {
            e10 = j(h(k1Var), g(k1Var), c(k1Var));
        } else if (i9 == 1) {
            e10 = j(e(k1Var), b(k1Var), c(k1Var));
        } else {
            e10 = e(k1Var);
        }
        return e10.length() == 0 ? this.f40948a.getString(R$string.exo_track_unknown) : e10;
    }
}
