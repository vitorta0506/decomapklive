package ad;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class a implements c {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final b f727a;

    public a(@NonNull b bVar) {
        this.f727a = (b) j.a(bVar);
    }

    @Override // ad.c
    public boolean a(int i9, @Nullable String str) {
        return true;
    }

    @Override // ad.c
    public void log(int i9, @Nullable String str, @NonNull String str2) {
        this.f727a.log(i9, str, str2);
    }
}
