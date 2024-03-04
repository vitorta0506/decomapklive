package vc;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.linecorp.linesdk.LineIdToken;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public class e {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final d f59102a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final List<qc.e> f59103b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final LineIdToken f59104c;

    public e(@NonNull d dVar, @NonNull List<qc.e> list, @Nullable LineIdToken lineIdToken) {
        this.f59102a = dVar;
        this.f59103b = Collections.unmodifiableList(list);
        this.f59104c = lineIdToken;
    }

    @NonNull
    public d a() {
        return this.f59102a;
    }

    @Nullable
    public LineIdToken b() {
        return this.f59104c;
    }

    @NonNull
    public List<qc.e> c() {
        return this.f59103b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f59102a.equals(eVar.f59102a) && this.f59103b.equals(eVar.f59103b)) {
            LineIdToken lineIdToken = this.f59104c;
            LineIdToken lineIdToken2 = eVar.f59104c;
            return lineIdToken != null ? lineIdToken.equals(lineIdToken2) : lineIdToken2 == null;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.f59102a.hashCode() * 31) + this.f59103b.hashCode()) * 31;
        LineIdToken lineIdToken = this.f59104c;
        return hashCode + (lineIdToken != null ? lineIdToken.hashCode() : 0);
    }

    public String toString() {
        return "IssueAccessTokenResult{accessToken=" + yc.a.a(this.f59102a) + ", scopes=" + this.f59103b + ", idToken=" + this.f59104c + '}';
    }
}
