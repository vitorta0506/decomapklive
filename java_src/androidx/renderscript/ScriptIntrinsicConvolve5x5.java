package androidx.renderscript;

import androidx.renderscript.Script;
/* loaded from: classes.dex */
public class ScriptIntrinsicConvolve5x5 extends ScriptIntrinsic {
    private static final int INTRINSIC_API_LEVEL = 19;
    private Allocation mInput;
    private final float[] mValues;

    ScriptIntrinsicConvolve5x5(long j10, RenderScript renderScript) {
        super(j10, renderScript);
        this.mValues = new float[25];
    }

    public static ScriptIntrinsicConvolve5x5 create(RenderScript renderScript, Element element) {
        if (!element.isCompatible(Element.U8(renderScript)) && !element.isCompatible(Element.U8_2(renderScript)) && !element.isCompatible(Element.U8_3(renderScript)) && !element.isCompatible(Element.U8_4(renderScript)) && !element.isCompatible(Element.F32(renderScript)) && !element.isCompatible(Element.F32_2(renderScript)) && !element.isCompatible(Element.F32_3(renderScript)) && !element.isCompatible(Element.F32_4(renderScript))) {
            throw new RSIllegalArgumentException("Unsupported element type.");
        }
        renderScript.isUseNative();
        ScriptIntrinsicConvolve5x5 scriptIntrinsicConvolve5x5 = new ScriptIntrinsicConvolve5x5(renderScript.nScriptIntrinsicCreate(4, element.getID(renderScript), false), renderScript);
        scriptIntrinsicConvolve5x5.setIncSupp(false);
        return scriptIntrinsicConvolve5x5;
    }

    public void forEach(Allocation allocation) {
        forEach(0, (Allocation) null, allocation, (FieldPacker) null);
    }

    public Script.FieldID getFieldID_Input() {
        return createFieldID(1, null);
    }

    public Script.KernelID getKernelID() {
        return createKernelID(0, 2, null, null);
    }

    public void setCoefficients(float[] fArr) {
        FieldPacker fieldPacker = new FieldPacker(100);
        int i9 = 0;
        while (true) {
            float[] fArr2 = this.mValues;
            if (i9 < fArr2.length) {
                fArr2[i9] = fArr[i9];
                fieldPacker.addF32(fArr2[i9]);
                i9++;
            } else {
                setVar(0, fieldPacker);
                return;
            }
        }
    }

    public void setInput(Allocation allocation) {
        this.mInput = allocation;
        setVar(1, allocation);
    }

    public void forEach(Allocation allocation, Script.LaunchOptions launchOptions) {
        forEach(0, (Allocation) null, allocation, (FieldPacker) null, launchOptions);
    }
}
