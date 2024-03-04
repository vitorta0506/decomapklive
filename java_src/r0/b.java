package r0;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final List<ImageHeaderParser> f57347a = new ArrayList();

    public synchronized void a(@NonNull ImageHeaderParser imageHeaderParser) {
        this.f57347a.add(imageHeaderParser);
    }

    @NonNull
    public synchronized List<ImageHeaderParser> b() {
        return this.f57347a;
    }
}
