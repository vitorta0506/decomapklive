package androidx.renderscript;

import androidx.renderscript.Script;
/* loaded from: classes.dex */
public class ScriptIntrinsicLUT extends ScriptIntrinsic {
    private static final int INTRINSIC_API_LEVEL = 19;
    private final byte[] mCache;
    private boolean mDirty;
    private final Matrix4f mMatrix;
    private Allocation mTables;

    protected ScriptIntrinsicLUT(long j10, RenderScript renderScript) {
        super(j10, renderScript);
        this.mMatrix = new Matrix4f();
        this.mCache = new byte[1024];
        this.mDirty = true;
    }

    public static ScriptIntrinsicLUT create(RenderScript renderScript, Element element) {
        renderScript.isUseNative();
        ScriptIntrinsicLUT scriptIntrinsicLUT = new ScriptIntrinsicLUT(renderScript.nScriptIntrinsicCreate(3, element.getID(renderScript), false), renderScript);
        scriptIntrinsicLUT.setIncSupp(false);
        scriptIntrinsicLUT.mTables = Allocation.createSized(renderScript, Element.U8(renderScript), 1024);
        for (int i9 = 0; i9 < 256; i9++) {
            byte[] bArr = scriptIntrinsicLUT.mCache;
            byte b10 = (byte) i9;
            bArr[i9] = b10;
            bArr[i9 + 256] = b10;
            bArr[i9 + 512] = b10;
            bArr[i9 + 768] = b10;
        }
        scriptIntrinsicLUT.setVar(0, scriptIntrinsicLUT.mTables);
        return scriptIntrinsicLUT;
    }

    private void validate(int i9, int i10) {
        if (i9 < 0 || i9 > 255) {
            throw new RSIllegalArgumentException("Index out of range (0-255).");
        }
        if (i10 < 0 || i10 > 255) {
            throw new RSIllegalArgumentException("Value out of range (0-255).");
        }
    }

    public void forEach(Allocation allocation, Allocation allocation2) {
        if (this.mDirty) {
            this.mDirty = false;
            this.mTables.copyFromUnchecked(this.mCache);
        }
        forEach(0, allocation, allocation2, (FieldPacker) null);
    }

    public Script.KernelID getKernelID() {
        return createKernelID(0, 3, null, null);
    }

    public void setAlpha(int i9, int i10) {
        validate(i9, i10);
        this.mCache[i9 + 768] = (byte) i10;
        this.mDirty = true;
    }

    public void setBlue(int i9, int i10) {
        validate(i9, i10);
        this.mCache[i9 + 512] = (byte) i10;
        this.mDirty = true;
    }

    public void setGreen(int i9, int i10) {
        validate(i9, i10);
        this.mCache[i9 + 256] = (byte) i10;
        this.mDirty = true;
    }

    public void setRed(int i9, int i10) {
        validate(i9, i10);
        this.mCache[i9] = (byte) i10;
        this.mDirty = true;
    }
}
