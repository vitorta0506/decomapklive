package e4;

import androidx.annotation.Nullable;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f38447a = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean a(@Nullable String str) {
        return str == null || str.trim().isEmpty();
    }
}
