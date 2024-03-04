package qc;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.LineApiResponseCode;
import java.util.NoSuchElementException;
/* loaded from: classes4.dex */
public class c<R> {

    /* renamed from: d  reason: collision with root package name */
    private static final c<?> f57151d = new c<>(LineApiResponseCode.SUCCESS, null, LineApiError.DEFAULT);
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LineApiResponseCode f57152a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final R f57153b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final LineApiError f57154c;

    private c(@NonNull LineApiResponseCode lineApiResponseCode, @Nullable R r10, @NonNull LineApiError lineApiError) {
        this.f57152a = lineApiResponseCode;
        this.f57153b = r10;
        this.f57154c = lineApiError;
    }

    @NonNull
    public static <T> c<T> a(@NonNull LineApiResponseCode lineApiResponseCode, @NonNull LineApiError lineApiError) {
        return new c<>(lineApiResponseCode, null, lineApiError);
    }

    @NonNull
    public static <T> c<T> b(@Nullable T t10) {
        return t10 == null ? (c<T>) f57151d : new c<>(LineApiResponseCode.SUCCESS, t10, LineApiError.DEFAULT);
    }

    @NonNull
    public LineApiError c() {
        return this.f57154c;
    }

    @NonNull
    public LineApiResponseCode d() {
        return this.f57152a;
    }

    @NonNull
    public R e() {
        R r10 = this.f57153b;
        if (r10 != null) {
            return r10;
        }
        throw new NoSuchElementException("response data is null. Please check result by isSuccess before.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f57152a != cVar.f57152a) {
            return false;
        }
        R r10 = this.f57153b;
        if (r10 == null ? cVar.f57153b == null : r10.equals(cVar.f57153b)) {
            return this.f57154c.equals(cVar.f57154c);
        }
        return false;
    }

    public boolean f() {
        return this.f57152a == LineApiResponseCode.NETWORK_ERROR;
    }

    public boolean g() {
        return this.f57152a == LineApiResponseCode.SUCCESS;
    }

    public int hashCode() {
        int hashCode = this.f57152a.hashCode() * 31;
        R r10 = this.f57153b;
        return ((hashCode + (r10 != null ? r10.hashCode() : 0)) * 31) + this.f57154c.hashCode();
    }

    public String toString() {
        return "LineApiResponse{errorData=" + this.f57154c + ", responseCode=" + this.f57152a + ", responseData=" + this.f57153b + '}';
    }
}
