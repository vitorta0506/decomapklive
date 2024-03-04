package com.airbnb.lottie;

import androidx.collection.ArraySet;
import androidx.core.util.Pair;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3856a = false;

    /* renamed from: b  reason: collision with root package name */
    private final Set<b> f3857b = new ArraySet();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, m.f> f3858c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Comparator<Pair<String, Float>> f3859d = new a();

    /* loaded from: classes.dex */
    class a implements Comparator<Pair<String, Float>> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float floatValue = pair.second.floatValue();
            float floatValue2 = pair2.second.floatValue();
            if (floatValue2 > floatValue) {
                return 1;
            }
            return floatValue > floatValue2 ? -1 : 0;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(float f10);
    }

    public void a(String str, float f10) {
        if (this.f3856a) {
            m.f fVar = this.f3858c.get(str);
            if (fVar == null) {
                fVar = new m.f();
                this.f3858c.put(str, fVar);
            }
            fVar.a(f10);
            if (str.equals("__container")) {
                for (b bVar : this.f3857b) {
                    bVar.a(f10);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z10) {
        this.f3856a = z10;
    }
}
