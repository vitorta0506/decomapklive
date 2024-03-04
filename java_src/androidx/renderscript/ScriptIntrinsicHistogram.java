package androidx.renderscript;

import androidx.renderscript.Script;
/* loaded from: classes.dex */
public class ScriptIntrinsicHistogram extends ScriptIntrinsic {
    private static final int INTRINSIC_API_LEVEL = 19;
    private Allocation mOut;

    protected ScriptIntrinsicHistogram(long j10, RenderScript renderScript) {
        super(j10, renderScript);
    }

    public static ScriptIntrinsicHistogram create(RenderScript renderScript, Element element) {
        if (!element.isCompatible(Element.U8_4(renderScript)) && !element.isCompatible(Element.U8_3(renderScript)) && !element.isCompatible(Element.U8_2(renderScript)) && !element.isCompatible(Element.U8(renderScript))) {
            throw new RSIllegalArgumentException("Unsupported element type.");
        }
        renderScript.isUseNative();
        ScriptIntrinsicHistogram scriptIntrinsicHistogram = new ScriptIntrinsicHistogram(renderScript.nScriptIntrinsicCreate(9, element.getID(renderScript), false), renderScript);
        scriptIntrinsicHistogram.setIncSupp(false);
        return scriptIntrinsicHistogram;
    }

    public void forEach(Allocation allocation) {
        forEach(allocation, null);
    }

    public void forEach_Dot(Allocation allocation) {
        forEach_Dot(allocation, null);
    }

    public Script.FieldID getFieldID_Input() {
        return createFieldID(1, null);
    }

    public Script.KernelID getKernelID_Separate() {
        return createKernelID(0, 3, null, null);
    }

    public void setDotCoefficients(float f10, float f11, float f12, float f13) {
        if (f10 < 0.0f || f11 < 0.0f || f12 < 0.0f || f13 < 0.0f) {
            throw new RSIllegalArgumentException("Coefficient may not be negative.");
        }
        if (f10 + f11 + f12 + f13 <= 1.0f) {
            FieldPacker fieldPacker = new FieldPacker(16);
            fieldPacker.addF32(f10);
            fieldPacker.addF32(f11);
            fieldPacker.addF32(f12);
            fieldPacker.addF32(f13);
            setVar(0, fieldPacker);
            return;
        }
        throw new RSIllegalArgumentException("Sum of coefficients must be 1.0 or less.");
    }

    public void setOutput(Allocation allocation) {
        this.mOut = allocation;
        if (allocation.getType().getElement() != Element.U32(this.mRS) && this.mOut.getType().getElement() != Element.U32_2(this.mRS) && this.mOut.getType().getElement() != Element.U32_3(this.mRS) && this.mOut.getType().getElement() != Element.U32_4(this.mRS) && this.mOut.getType().getElement() != Element.I32(this.mRS) && this.mOut.getType().getElement() != Element.I32_2(this.mRS) && this.mOut.getType().getElement() != Element.I32_3(this.mRS) && this.mOut.getType().getElement() != Element.I32_4(this.mRS)) {
            throw new RSIllegalArgumentException("Output type must be U32 or I32.");
        }
        if (this.mOut.getType().getX() == 256 && this.mOut.getType().getY() == 0 && !this.mOut.getType().hasMipmaps() && this.mOut.getType().getYuv() == 0) {
            setVar(1, allocation);
            return;
        }
        throw new RSIllegalArgumentException("Output must be 1D, 256 elements.");
    }

    public void forEach(Allocation allocation, Script.LaunchOptions launchOptions) {
        if (allocation.getType().getElement().getVectorSize() >= this.mOut.getType().getElement().getVectorSize()) {
            if (!allocation.getType().getElement().isCompatible(Element.U8(this.mRS)) && !allocation.getType().getElement().isCompatible(Element.U8_2(this.mRS)) && !allocation.getType().getElement().isCompatible(Element.U8_3(this.mRS)) && !allocation.getType().getElement().isCompatible(Element.U8_4(this.mRS))) {
                throw new RSIllegalArgumentException("Input type must be U8, U8_1, U8_2 or U8_4.");
            }
            forEach(0, allocation, (Allocation) null, (FieldPacker) null, launchOptions);
            return;
        }
        throw new RSIllegalArgumentException("Input vector size must be >= output vector size.");
    }

    public void forEach_Dot(Allocation allocation, Script.LaunchOptions launchOptions) {
        if (this.mOut.getType().getElement().getVectorSize() == 1) {
            if (!allocation.getType().getElement().isCompatible(Element.U8(this.mRS)) && !allocation.getType().getElement().isCompatible(Element.U8_2(this.mRS)) && !allocation.getType().getElement().isCompatible(Element.U8_3(this.mRS)) && !allocation.getType().getElement().isCompatible(Element.U8_4(this.mRS))) {
                throw new RSIllegalArgumentException("Input type must be U8, U8_1, U8_2 or U8_4.");
            }
            forEach(1, allocation, (Allocation) null, (FieldPacker) null, launchOptions);
            return;
        }
        throw new RSIllegalArgumentException("Output vector size must be one.");
    }
}