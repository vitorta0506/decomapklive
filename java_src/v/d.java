package v;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class d implements g {

    /* renamed from: a  reason: collision with root package name */
    private g f58587a;

    /* renamed from: b  reason: collision with root package name */
    private s.a f58588b;

    /* renamed from: c  reason: collision with root package name */
    private i f58589c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Integer f58590d;

    public d(@NonNull s.a aVar, @NonNull i iVar, @Nullable Integer num, @NonNull g gVar) {
        this.f58588b = aVar;
        this.f58589c = iVar;
        this.f58590d = num;
        this.f58587a = gVar;
    }

    @Override // v.g
    public h a() {
        a aVar = new a(this.f58589c, new b(this.f58588b, this.f58587a.a()));
        Integer num = this.f58590d;
        return num != null ? new o(num.intValue(), aVar) : aVar;
    }

    @Override // v.g
    public h b() {
        f fVar = new f(this.f58589c, this.f58587a.b());
        Integer num = this.f58590d;
        return num != null ? new o(num.intValue(), fVar) : fVar;
    }
}
