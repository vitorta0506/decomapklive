package qc;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.linecorp.linesdk.LineGroup;
import java.util.List;
/* loaded from: classes4.dex */
public class b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private List<LineGroup> f57149a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f57150b;

    public b(@NonNull List<LineGroup> list, @Nullable String str) {
        this.f57149a = list;
        this.f57150b = str;
    }

    public String toString() {
        return "GetFriendsResponse{groups=" + this.f57149a + ", nextPageRequestToken='" + this.f57150b + "'}";
    }
}
