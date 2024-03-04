package androidx.renderscript;

import androidx.renderscript.Script;
/* loaded from: classes.dex */
public class ScriptIntrinsicColorMatrix extends ScriptIntrinsic {
    private static final int INTRINSIC_API_LEVEL = 19;
    private final Float4 mAdd;
    private Allocation mInput;
    private final Matrix4f mMatrix;

    protected ScriptIntrinsicColorMatrix(long j10, RenderScript renderScript) {
        super(j10, renderScript);
        this.mMatrix = new Matrix4f();
        this.mAdd = new Float4();
    }

    public static ScriptIntrinsicColorMatrix create(RenderScript renderScript, Element element) {
        if (element.isCompatible(Element.U8_4(renderScript))) {
            renderScript.isUseNative();
            ScriptIntrinsicColorMatrix scriptIntrinsicColorMatrix = new ScriptIntrinsicColorMatrix(renderScript.nScriptIntrinsicCreate(2, element.getID(renderScript), false), renderScript);
            scriptIntrinsicColorMatrix.setIncSupp(false);
            return scriptIntrinsicColorMatrix;
        }
        throw new RSIllegalArgumentException("Unsupported element type.");
    }

    private void setMatrix() {
        FieldPacker fieldPacker = new FieldPacker(64);
        fieldPacker.addMatrix(this.mMatrix);
        setVar(0, fieldPacker);
    }

    public void forEach(Allocation allocation, Allocation allocation2) {
        forEach(0, allocation, allocation2, (FieldPacker) null);
    }

    public Script.KernelID getKernelID() {
        return createKernelID(0, 3, null, null);
    }

    public void setAdd(Float4 float4) {
        Float4 float42 = this.mAdd;
        float42.f956x = float4.f956x;
        float42.f957y = float4.f957y;
        float42.f958z = float4.f958z;
        float42.f955w = float4.f955w;
        FieldPacker fieldPacker = new FieldPacker(16);
        fieldPacker.addF32(float4.f956x);
        fieldPacker.addF32(float4.f957y);
        fieldPacker.addF32(float4.f958z);
        fieldPacker.addF32(float4.f955w);
        setVar(1, fieldPacker);
    }

    public void setColorMatrix(Matrix4f matrix4f) {
        this.mMatrix.load(matrix4f);
        setMatrix();
    }

    public void setGreyscale() {
        this.mMatrix.loadIdentity();
        this.mMatrix.set(0, 0, 0.299f);
        this.mMatrix.set(1, 0, 0.587f);
        this.mMatrix.set(2, 0, 0.114f);
        this.mMatrix.set(0, 1, 0.299f);
        this.mMatrix.set(1, 1, 0.587f);
        this.mMatrix.set(2, 1, 0.114f);
        this.mMatrix.set(0, 2, 0.299f);
        this.mMatrix.set(1, 2, 0.587f);
        this.mMatrix.set(2, 2, 0.114f);
        setMatrix();
    }

    public void setRGBtoYUV() {
        this.mMatrix.loadIdentity();
        this.mMatrix.set(0, 0, 0.299f);
        this.mMatrix.set(1, 0, 0.587f);
        this.mMatrix.set(2, 0, 0.114f);
        this.mMatrix.set(0, 1, -0.14713f);
        this.mMatrix.set(1, 1, -0.28886f);
        this.mMatrix.set(2, 1, 0.436f);
        this.mMatrix.set(0, 2, 0.615f);
        this.mMatrix.set(1, 2, -0.51499f);
        this.mMatrix.set(2, 2, -0.10001f);
        setMatrix();
    }

    public void setYUVtoRGB() {
        this.mMatrix.loadIdentity();
        this.mMatrix.set(0, 0, 1.0f);
        this.mMatrix.set(1, 0, 0.0f);
        this.mMatrix.set(2, 0, 1.13983f);
        this.mMatrix.set(0, 1, 1.0f);
        this.mMatrix.set(1, 1, -0.39465f);
        this.mMatrix.set(2, 1, -0.5806f);
        this.mMatrix.set(0, 2, 1.0f);
        this.mMatrix.set(1, 2, 2.03211f);
        this.mMatrix.set(2, 2, 0.0f);
        setMatrix();
    }

    public void forEach(Allocation allocation, Allocation allocation2, Script.LaunchOptions launchOptions) {
        if (!allocation.getElement().isCompatible(Element.U8(this.mRS)) && !allocation.getElement().isCompatible(Element.U8_2(this.mRS)) && !allocation.getElement().isCompatible(Element.U8_3(this.mRS)) && !allocation.getElement().isCompatible(Element.U8_4(this.mRS)) && !allocation.getElement().isCompatible(Element.F32(this.mRS)) && !allocation.getElement().isCompatible(Element.F32_2(this.mRS)) && !allocation.getElement().isCompatible(Element.F32_3(this.mRS)) && !allocation.getElement().isCompatible(Element.F32_4(this.mRS))) {
            throw new RSIllegalArgumentException("Unsupported element type.");
        }
        if (!allocation2.getElement().isCompatible(Element.U8(this.mRS)) && !allocation2.getElement().isCompatible(Element.U8_2(this.mRS)) && !allocation2.getElement().isCompatible(Element.U8_3(this.mRS)) && !allocation2.getElement().isCompatible(Element.U8_4(this.mRS)) && !allocation2.getElement().isCompatible(Element.F32(this.mRS)) && !allocation2.getElement().isCompatible(Element.F32_2(this.mRS)) && !allocation2.getElement().isCompatible(Element.F32_3(this.mRS)) && !allocation2.getElement().isCompatible(Element.F32_4(this.mRS))) {
            throw new RSIllegalArgumentException("Unsupported element type.");
        }
        forEach(0, allocation, allocation2, (FieldPacker) null, launchOptions);
    }

    public void setColorMatrix(Matrix3f matrix3f) {
        this.mMatrix.load(matrix3f);
        setMatrix();
    }

    public void setAdd(float f10, float f11, float f12, float f13) {
        Float4 float4 = this.mAdd;
        float4.f956x = f10;
        float4.f957y = f11;
        float4.f958z = f12;
        float4.f955w = f13;
        FieldPacker fieldPacker = new FieldPacker(16);
        fieldPacker.addF32(this.mAdd.f956x);
        fieldPacker.addF32(this.mAdd.f957y);
        fieldPacker.addF32(this.mAdd.f958z);
        fieldPacker.addF32(this.mAdd.f955w);
        setVar(1, fieldPacker);
    }
}
