package a6;

import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
/* loaded from: classes2.dex */
public interface j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f663a = new j() { // from class: a6.i
        @Override // a6.j
        public final List a(ComponentRegistrar componentRegistrar) {
            return componentRegistrar.getComponents();
        }
    };

    List<d<?>> a(ComponentRegistrar componentRegistrar);
}
