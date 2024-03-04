package butterknife;

import androidx.annotation.UiThread;
/* loaded from: classes.dex */
public interface Unbinder {

    /* renamed from: a  reason: collision with root package name */
    public static final Unbinder f1384a = new Unbinder() { // from class: c.a
        @Override // butterknife.Unbinder
        public final void unbind() {
            b.a();
        }
    };

    @UiThread
    void unbind();
}
