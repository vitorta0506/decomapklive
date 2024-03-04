package e0;

import androidx.annotation.NonNull;
import java.nio.charset.Charset;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public interface b {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f38307a = Charset.forName("UTF-8");

    boolean equals(Object obj);

    int hashCode();

    void updateDiskCacheKey(@NonNull MessageDigest messageDigest);
}
