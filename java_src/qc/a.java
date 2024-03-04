package qc;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.linecorp.linesdk.LineFriendProfile;
import java.util.List;
/* loaded from: classes4.dex */
public class a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private List<LineFriendProfile> f57147a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f57148b;

    public a(@NonNull List<LineFriendProfile> list, @Nullable String str) {
        this.f57147a = list;
        this.f57148b = str;
    }

    public String toString() {
        return "GetFriendsResponse{friends=" + this.f57147a + ", nextPageRequestToken='" + this.f57148b + "'}";
    }
}
