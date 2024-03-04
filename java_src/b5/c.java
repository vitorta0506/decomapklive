package b5;

import android.app.PendingIntent;
import androidx.annotation.Nullable;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c extends a {

    /* renamed from: a  reason: collision with root package name */
    private final int f1166a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1167b;

    /* renamed from: c  reason: collision with root package name */
    private final int f1168c;

    /* renamed from: d  reason: collision with root package name */
    private final long f1169d;

    /* renamed from: e  reason: collision with root package name */
    private final long f1170e;

    /* renamed from: f  reason: collision with root package name */
    private final List f1171f;

    /* renamed from: g  reason: collision with root package name */
    private final List f1172g;

    /* renamed from: h  reason: collision with root package name */
    private final PendingIntent f1173h;

    /* renamed from: i  reason: collision with root package name */
    private final List f1174i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(int i9, int i10, int i11, long j10, long j11, @Nullable List list, @Nullable List list2, @Nullable PendingIntent pendingIntent, @Nullable List list3) {
        this.f1166a = i9;
        this.f1167b = i10;
        this.f1168c = i11;
        this.f1169d = j10;
        this.f1170e = j11;
        this.f1171f = list;
        this.f1172g = list2;
        this.f1173h = pendingIntent;
        this.f1174i = list3;
    }

    @Override // b5.a
    public final long a() {
        return this.f1169d;
    }

    @Override // b5.a
    public final int b() {
        return this.f1168c;
    }

    @Override // b5.a
    @Nullable
    @Deprecated
    public final PendingIntent c() {
        return this.f1173h;
    }

    @Override // b5.a
    public final int d() {
        return this.f1166a;
    }

    @Override // b5.a
    public final int e() {
        return this.f1167b;
    }

    public final boolean equals(Object obj) {
        List list;
        List list2;
        PendingIntent pendingIntent;
        List list3;
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f1166a == aVar.d() && this.f1167b == aVar.e() && this.f1168c == aVar.b() && this.f1169d == aVar.a() && this.f1170e == aVar.f() && ((list = this.f1171f) != null ? list.equals(aVar.h()) : aVar.h() == null) && ((list2 = this.f1172g) != null ? list2.equals(aVar.g()) : aVar.g() == null) && ((pendingIntent = this.f1173h) != null ? pendingIntent.equals(aVar.c()) : aVar.c() == null) && ((list3 = this.f1174i) != null ? list3.equals(aVar.i()) : aVar.i() == null)) {
                return true;
            }
        }
        return false;
    }

    @Override // b5.a
    public final long f() {
        return this.f1170e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // b5.a
    @Nullable
    public final List g() {
        return this.f1172g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // b5.a
    @Nullable
    public final List h() {
        return this.f1171f;
    }

    public final int hashCode() {
        int i9 = this.f1166a;
        int i10 = this.f1167b;
        int i11 = this.f1168c;
        long j10 = this.f1169d;
        long j11 = this.f1170e;
        int i12 = (((((((((i9 ^ 1000003) * 1000003) ^ i10) * 1000003) ^ i11) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003;
        List list = this.f1171f;
        int hashCode = (i12 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        List list2 = this.f1172g;
        int hashCode2 = (hashCode ^ (list2 == null ? 0 : list2.hashCode())) * 1000003;
        PendingIntent pendingIntent = this.f1173h;
        int hashCode3 = (hashCode2 ^ (pendingIntent == null ? 0 : pendingIntent.hashCode())) * 1000003;
        List list3 = this.f1174i;
        return hashCode3 ^ (list3 != null ? list3.hashCode() : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // b5.a
    @Nullable
    public final List i() {
        return this.f1174i;
    }

    public final String toString() {
        int i9 = this.f1166a;
        int i10 = this.f1167b;
        int i11 = this.f1168c;
        long j10 = this.f1169d;
        long j11 = this.f1170e;
        String valueOf = String.valueOf(this.f1171f);
        String valueOf2 = String.valueOf(this.f1172g);
        String valueOf3 = String.valueOf(this.f1173h);
        String valueOf4 = String.valueOf(this.f1174i);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        StringBuilder sb2 = new StringBuilder(length + 251 + length2 + valueOf3.length() + valueOf4.length());
        sb2.append("SplitInstallSessionState{sessionId=");
        sb2.append(i9);
        sb2.append(", status=");
        sb2.append(i10);
        sb2.append(", errorCode=");
        sb2.append(i11);
        sb2.append(", bytesDownloaded=");
        sb2.append(j10);
        sb2.append(", totalBytesToDownload=");
        sb2.append(j11);
        sb2.append(", moduleNamesNullable=");
        sb2.append(valueOf);
        sb2.append(", languagesNullable=");
        sb2.append(valueOf2);
        sb2.append(", resolutionIntent=");
        sb2.append(valueOf3);
        sb2.append(", splitFileIntents=");
        sb2.append(valueOf4);
        sb2.append("}");
        return sb2.toString();
    }
}
