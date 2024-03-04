package androidx.renderscript;

import androidx.renderscript.Script;
/* loaded from: classes.dex */
public class ScriptIntrinsicBlur extends ScriptIntrinsic {
    private static final int INTRINSIC_API_LEVEL = 19;
    private Allocation mInput;
    private final float[] mValues;

    protected ScriptIntrinsicBlur(long j10, RenderScript renderScript) {
        super(j10, renderScript);
        this.mValues = new float[9];
    }

    public static ScriptIntrinsicBlur create(RenderScript renderScript, Element element) {
        if (!element.isCompatible(Element.U8_4(renderScript)) && !element.isCompatible(Element.U8(renderScript))) {
            throw new RSIllegalArgumentException("Unsupported element type.");
        }
        renderScript.isUseNative();
        ScriptIntrinsicBlur scriptIntrinsicBlur = new ScriptIntrinsicBlur(renderScript.nScriptIntrinsicCreate(5, element.getID(renderScript), false), renderScript);
        scriptIntrinsicBlur.setIncSupp(false);
        scriptIntrinsicBlur.setRadius(5.0f);
        return scriptIntrinsicBlur;
    }

    public void forEach(Allocation allocation) {
        if (allocation.getType().getY() != 0) {
            forEach(0, (Allocation) null, allocation, (FieldPacker) null);
            return;
        }
        throw new RSIllegalArgumentException("Output is a 1D Allocation");
    }

    public Script.FieldID getFieldID_Input() {
        return createFieldID(1, null);
    }

    public Script.KernelID getKernelID() {
        return createKernelID(0, 2, null, null);
    }

    public void setInput(Allocation allocation) {
        if (allocation.getType().getY() != 0) {
            this.mInput = allocation;
            setVar(1, allocation);
            return;
        }
        throw new RSIllegalArgumentException("Input set to a 1D Allocation");
    }

    public void setRadius(float f10) {
        if (f10 > 0.0f && f10 <= 25.0f) {
            setVar(0, f10);
            return;
        }
        throw new RSIllegalArgumentException("Radius out of range (0 < r <= 25).");
    }
}
