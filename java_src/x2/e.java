package x2;

import android.os.Bundle;
import com.google.android.exoplayer2.h;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes.dex */
public final class e implements com.google.android.exoplayer2.h {

    /* renamed from: b  reason: collision with root package name */
    public static final e f59581b = new e(ImmutableList.of());

    /* renamed from: c  reason: collision with root package name */
    public static final h.a<e> f59582c = new h.a() { // from class: x2.d
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            e b10;
            b10 = e.b(bundle);
            return b10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final ImmutableList<b> f59583a;

    public e(List<b> list) {
        this.f59583a = ImmutableList.copyOf((Collection) list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final e b(Bundle bundle) {
        ImmutableList b10;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(c(0));
        if (parcelableArrayList == null) {
            b10 = ImmutableList.of();
        } else {
            b10 = com.google.android.exoplayer2.util.c.b(b.f59545s, parcelableArrayList);
        }
        return new e(b10);
    }

    private static String c(int i9) {
        return Integer.toString(i9, 36);
    }
}
