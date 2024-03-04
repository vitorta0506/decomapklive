package d7;

import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    static ViewModelStoreOwner f37969a;

    /* renamed from: b  reason: collision with root package name */
    static ViewModelProvider f37970b;

    /* loaded from: classes3.dex */
    class a implements ViewModelStoreOwner {

        /* renamed from: a  reason: collision with root package name */
        ViewModelStore f37971a;

        a() {
        }

        @Override // androidx.lifecycle.ViewModelStoreOwner
        public ViewModelStore getViewModelStore() {
            if (this.f37971a == null) {
                this.f37971a = new ViewModelStore();
            }
            return this.f37971a;
        }
    }

    static {
        a aVar = new a();
        f37969a = aVar;
        f37970b = new ViewModelProvider(aVar);
    }

    public static ViewModelProvider a() {
        return f37970b;
    }
}
