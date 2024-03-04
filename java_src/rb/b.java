package rb;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    public static final b f57401b = new b(0);

    /* renamed from: c  reason: collision with root package name */
    public static final b f57402c = new b(1);

    /* renamed from: d  reason: collision with root package name */
    public static final b f57403d = new b(2);

    /* renamed from: e  reason: collision with root package name */
    public static final b f57404e = new b(3);

    /* renamed from: f  reason: collision with root package name */
    public static final b f57405f = new b(4);

    /* renamed from: a  reason: collision with root package name */
    private final int f57406a;

    private b(int i9) {
        this.f57406a = i9;
    }

    private int b(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public String a() {
        int i9 = this.f57406a;
        return i9 != 1 ? i9 != 2 ? i9 != 3 ? i9 != 4 ? GrsBaseInfo.CountryCodeSource.UNKNOWN : "SG" : "RU" : "DE" : "CN";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && b.class == obj.getClass() && this.f57406a == ((b) obj).f57406a;
    }

    public int hashCode() {
        return b(Integer.valueOf(this.f57406a));
    }
}
