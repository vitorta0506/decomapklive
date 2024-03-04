package androidx.renderscript;
/* loaded from: classes.dex */
public abstract class ScriptIntrinsic extends Script {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ScriptIntrinsic(long j10, RenderScript renderScript) {
        super(j10, renderScript);
        if (j10 == 0) {
            throw new RSRuntimeException("Loading of ScriptIntrinsic failed.");
        }
    }
}
