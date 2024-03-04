package h0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.u;
import h0.h;
/* loaded from: classes.dex */
public class g extends v0.g<e0.b, u<?>> implements h {

    /* renamed from: e  reason: collision with root package name */
    private h.a f40253e;

    public g(long j10) {
        super(j10);
    }

    @Override // h0.h
    public void a(int i9) {
        if (i9 >= 40) {
            b();
        } else if (i9 >= 20 || i9 == 15) {
            m(h() / 2);
        }
    }

    @Override // h0.h
    @Nullable
    public /* bridge */ /* synthetic */ u c(@NonNull e0.b bVar, @Nullable u uVar) {
        return (u) super.k(bVar, uVar);
    }

    @Override // h0.h
    @Nullable
    public /* bridge */ /* synthetic */ u d(@NonNull e0.b bVar) {
        return (u) super.l(bVar);
    }

    @Override // h0.h
    public void e(@NonNull h.a aVar) {
        this.f40253e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // v0.g
    /* renamed from: n */
    public int i(@Nullable u<?> uVar) {
        if (uVar == null) {
            return super.i(null);
        }
        return uVar.getSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // v0.g
    /* renamed from: o */
    public void j(@NonNull e0.b bVar, @Nullable u<?> uVar) {
        h.a aVar = this.f40253e;
        if (aVar == null || uVar == null) {
            return;
        }
        aVar.a(uVar);
    }
}
