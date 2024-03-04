package androidx.webkit.internal;

import androidx.annotation.NonNull;
import androidx.webkit.ScriptReferenceCompat;
import fl.a;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.ScriptReferenceBoundaryInterface;
/* loaded from: classes.dex */
public class ScriptReferenceImpl extends ScriptReferenceCompat {
    private ScriptReferenceBoundaryInterface mBoundaryInterface;

    private ScriptReferenceImpl(@NonNull ScriptReferenceBoundaryInterface scriptReferenceBoundaryInterface) {
        this.mBoundaryInterface = scriptReferenceBoundaryInterface;
    }

    @NonNull
    public static ScriptReferenceImpl toScriptReferenceCompat(@NonNull InvocationHandler invocationHandler) {
        return new ScriptReferenceImpl((ScriptReferenceBoundaryInterface) a.a(ScriptReferenceBoundaryInterface.class, invocationHandler));
    }

    @Override // androidx.webkit.ScriptReferenceCompat
    public void remove() {
        this.mBoundaryInterface.remove();
    }
}
