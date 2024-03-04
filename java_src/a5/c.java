package a5;

import androidx.annotation.NonNull;
import java.io.File;
import java.util.Objects;
/* loaded from: classes2.dex */
final class c extends t {

    /* renamed from: a  reason: collision with root package name */
    private final File f607a;

    /* renamed from: b  reason: collision with root package name */
    private final String f608b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(File file, String str) {
        Objects.requireNonNull(file, "Null splitFile");
        this.f607a = file;
        Objects.requireNonNull(str, "Null splitId");
        this.f608b = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // a5.t
    @NonNull
    public final File a() {
        return this.f607a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // a5.t
    @NonNull
    public final String b() {
        return this.f608b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t) {
            t tVar = (t) obj;
            if (this.f607a.equals(tVar.a()) && this.f608b.equals(tVar.b())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f607a.hashCode() ^ 1000003) * 1000003) ^ this.f608b.hashCode();
    }

    public final String toString() {
        String obj = this.f607a.toString();
        String str = this.f608b;
        StringBuilder sb2 = new StringBuilder(obj.length() + 35 + str.length());
        sb2.append("SplitFileInfo{splitFile=");
        sb2.append(obj);
        sb2.append(", splitId=");
        sb2.append(str);
        sb2.append("}");
        return sb2.toString();
    }
}
