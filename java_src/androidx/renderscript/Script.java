package androidx.renderscript;

import android.renderscript.Script;
import android.util.SparseArray;
import java.io.UnsupportedEncodingException;
/* loaded from: classes.dex */
public class Script extends BaseObj {
    private final SparseArray<FieldID> mFIDs;
    private final SparseArray<InvokeID> mIIDs;
    private final SparseArray<KernelID> mKIDs;
    private boolean mUseIncSupp;

    /* loaded from: classes.dex */
    public static class Builder {
        RenderScript mRS;

        Builder(RenderScript renderScript) {
            this.mRS = renderScript;
        }
    }

    /* loaded from: classes.dex */
    public static class FieldBase {
        protected Allocation mAllocation;
        protected Element mElement;

        protected FieldBase() {
        }

        public Allocation getAllocation() {
            return this.mAllocation;
        }

        public Element getElement() {
            return this.mElement;
        }

        public Type getType() {
            return this.mAllocation.getType();
        }

        protected void init(RenderScript renderScript, int i9) {
            this.mAllocation = Allocation.createSized(renderScript, this.mElement, i9, 1);
        }

        public void updateAllocation() {
        }

        protected void init(RenderScript renderScript, int i9, int i10) {
            this.mAllocation = Allocation.createSized(renderScript, this.mElement, i9, i10 | 1);
        }
    }

    /* loaded from: classes.dex */
    public static final class FieldID extends BaseObj {
        Script.FieldID mN;
        Script mScript;
        int mSlot;

        FieldID(long j10, RenderScript renderScript, Script script, int i9) {
            super(j10, renderScript);
            this.mScript = script;
            this.mSlot = i9;
        }
    }

    /* loaded from: classes.dex */
    public static final class InvokeID extends BaseObj {
        Script mScript;
        int mSlot;

        InvokeID(long j10, RenderScript renderScript, Script script, int i9) {
            super(j10, renderScript);
            this.mScript = script;
            this.mSlot = i9;
        }
    }

    /* loaded from: classes.dex */
    public static final class KernelID extends BaseObj {
        Script.KernelID mN;
        Script mScript;
        int mSig;
        int mSlot;

        KernelID(long j10, RenderScript renderScript, Script script, int i9, int i10) {
            super(j10, renderScript);
            this.mScript = script;
            this.mSlot = i9;
            this.mSig = i10;
        }
    }

    /* loaded from: classes.dex */
    public static final class LaunchOptions {
        private int strategy;
        private int xstart = 0;
        private int ystart = 0;
        private int xend = 0;
        private int yend = 0;
        private int zstart = 0;
        private int zend = 0;

        public int getXEnd() {
            return this.xend;
        }

        public int getXStart() {
            return this.xstart;
        }

        public int getYEnd() {
            return this.yend;
        }

        public int getYStart() {
            return this.ystart;
        }

        public int getZEnd() {
            return this.zend;
        }

        public int getZStart() {
            return this.zstart;
        }

        public LaunchOptions setX(int i9, int i10) {
            if (i9 >= 0 && i10 > i9) {
                this.xstart = i9;
                this.xend = i10;
                return this;
            }
            throw new RSIllegalArgumentException("Invalid dimensions");
        }

        public LaunchOptions setY(int i9, int i10) {
            if (i9 >= 0 && i10 > i9) {
                this.ystart = i9;
                this.yend = i10;
                return this;
            }
            throw new RSIllegalArgumentException("Invalid dimensions");
        }

        public LaunchOptions setZ(int i9, int i10) {
            if (i9 >= 0 && i10 > i9) {
                this.zstart = i9;
                this.zend = i10;
                return this;
            }
            throw new RSIllegalArgumentException("Invalid dimensions");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Script(long j10, RenderScript renderScript) {
        super(j10, renderScript);
        this.mKIDs = new SparseArray<>();
        this.mIIDs = new SparseArray<>();
        this.mFIDs = new SparseArray<>();
        this.mUseIncSupp = false;
    }

    public void bindAllocation(Allocation allocation, int i9) {
        this.mRS.validate();
        if (allocation != null) {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptBindAllocation(getID(renderScript), allocation.getID(this.mRS), i9, this.mUseIncSupp);
            return;
        }
        RenderScript renderScript2 = this.mRS;
        renderScript2.nScriptBindAllocation(getID(renderScript2), 0L, i9, this.mUseIncSupp);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FieldID createFieldID(int i9, Element element) {
        FieldID fieldID = this.mFIDs.get(i9);
        if (fieldID != null) {
            return fieldID;
        }
        RenderScript renderScript = this.mRS;
        long nScriptFieldIDCreate = renderScript.nScriptFieldIDCreate(getID(renderScript), i9, this.mUseIncSupp);
        if (nScriptFieldIDCreate != 0) {
            FieldID fieldID2 = new FieldID(nScriptFieldIDCreate, this.mRS, this, i9);
            this.mFIDs.put(i9, fieldID2);
            return fieldID2;
        }
        throw new RSDriverException("Failed to create FieldID");
    }

    protected InvokeID createInvokeID(int i9) {
        InvokeID invokeID = this.mIIDs.get(i9);
        if (invokeID != null) {
            return invokeID;
        }
        RenderScript renderScript = this.mRS;
        long nScriptInvokeIDCreate = renderScript.nScriptInvokeIDCreate(getID(renderScript), i9);
        if (nScriptInvokeIDCreate != 0) {
            InvokeID invokeID2 = new InvokeID(nScriptInvokeIDCreate, this.mRS, this, i9);
            this.mIIDs.put(i9, invokeID2);
            return invokeID2;
        }
        throw new RSDriverException("Failed to create KernelID");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public KernelID createKernelID(int i9, int i10, Element element, Element element2) {
        KernelID kernelID = this.mKIDs.get(i9);
        if (kernelID != null) {
            return kernelID;
        }
        RenderScript renderScript = this.mRS;
        long nScriptKernelIDCreate = renderScript.nScriptKernelIDCreate(getID(renderScript), i9, i10, this.mUseIncSupp);
        if (nScriptKernelIDCreate != 0) {
            KernelID kernelID2 = new KernelID(nScriptKernelIDCreate, this.mRS, this, i9, i10);
            this.mKIDs.put(i9, kernelID2);
            return kernelID2;
        }
        throw new RSDriverException("Failed to create KernelID");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void forEach(int i9, Allocation allocation, Allocation allocation2, FieldPacker fieldPacker) {
        if (allocation == null && allocation2 == null) {
            throw new RSIllegalArgumentException("At least one of ain or aout is required to be non-null.");
        }
        long id2 = allocation != null ? allocation.getID(this.mRS) : 0L;
        long id3 = allocation2 != null ? allocation2.getID(this.mRS) : 0L;
        byte[] data = fieldPacker != null ? fieldPacker.getData() : null;
        if (this.mUseIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation);
            long dummyAlloc2 = getDummyAlloc(allocation2);
            RenderScript renderScript = this.mRS;
            renderScript.nScriptForEach(getID(renderScript), i9, dummyAlloc, dummyAlloc2, data, this.mUseIncSupp);
            return;
        }
        RenderScript renderScript2 = this.mRS;
        renderScript2.nScriptForEach(getID(renderScript2), i9, id2, id3, data, this.mUseIncSupp);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getDummyAlloc(Allocation allocation) {
        if (allocation != null) {
            Type type = allocation.getType();
            long dummyElement = type.getElement().getDummyElement(this.mRS);
            RenderScript renderScript = this.mRS;
            long nIncAllocationCreateTyped = renderScript.nIncAllocationCreateTyped(allocation.getID(renderScript), type.getDummyType(this.mRS, dummyElement), type.getX() * type.getElement().getBytesSize());
            allocation.setIncAllocID(nIncAllocationCreateTyped);
            return nIncAllocationCreateTyped;
        }
        return 0L;
    }

    protected void invoke(int i9) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptInvoke(getID(renderScript), i9, this.mUseIncSupp);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isIncSupp() {
        return this.mUseIncSupp;
    }

    protected void reduce(int i9, Allocation[] allocationArr, Allocation allocation, LaunchOptions launchOptions) {
        this.mRS.validate();
        if (allocationArr == null || allocationArr.length < 1) {
            throw new RSIllegalArgumentException("At least one input is required.");
        }
        if (allocation != null) {
            for (Allocation allocation2 : allocationArr) {
                this.mRS.validateObject(allocation2);
            }
            long[] jArr = new long[allocationArr.length];
            for (int i10 = 0; i10 < allocationArr.length; i10++) {
                jArr[i10] = allocationArr[i10].getID(this.mRS);
            }
            long id2 = allocation.getID(this.mRS);
            int[] iArr = launchOptions != null ? new int[]{launchOptions.xstart, launchOptions.xend, launchOptions.ystart, launchOptions.yend, launchOptions.zstart, launchOptions.zend} : null;
            RenderScript renderScript = this.mRS;
            renderScript.nScriptReduce(getID(renderScript), i9, jArr, id2, iArr);
            return;
        }
        throw new RSIllegalArgumentException("aout is required to be non-null.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setIncSupp(boolean z10) {
        this.mUseIncSupp = z10;
    }

    public void setTimeZone(String str) {
        this.mRS.validate();
        try {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptSetTimeZone(getID(renderScript), str.getBytes("UTF-8"), this.mUseIncSupp);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void setVar(int i9, float f10) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarF(getID(renderScript), i9, f10, this.mUseIncSupp);
    }

    protected void invoke(int i9, FieldPacker fieldPacker) {
        if (fieldPacker != null) {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptInvokeV(getID(renderScript), i9, fieldPacker.getData(), this.mUseIncSupp);
            return;
        }
        RenderScript renderScript2 = this.mRS;
        renderScript2.nScriptInvoke(getID(renderScript2), i9, this.mUseIncSupp);
    }

    public void setVar(int i9, double d10) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarD(getID(renderScript), i9, d10, this.mUseIncSupp);
    }

    public void setVar(int i9, int i10) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarI(getID(renderScript), i9, i10, this.mUseIncSupp);
    }

    public void setVar(int i9, long j10) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarJ(getID(renderScript), i9, j10, this.mUseIncSupp);
    }

    public void setVar(int i9, boolean z10) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarI(getID(renderScript), i9, z10 ? 1 : 0, this.mUseIncSupp);
    }

    public void setVar(int i9, BaseObj baseObj) {
        if (this.mUseIncSupp) {
            long dummyAlloc = getDummyAlloc((Allocation) baseObj);
            RenderScript renderScript = this.mRS;
            renderScript.nScriptSetVarObj(getID(renderScript), i9, baseObj == null ? 0L : dummyAlloc, this.mUseIncSupp);
            return;
        }
        RenderScript renderScript2 = this.mRS;
        renderScript2.nScriptSetVarObj(getID(renderScript2), i9, baseObj != null ? baseObj.getID(this.mRS) : 0L, this.mUseIncSupp);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void forEach(int i9, Allocation allocation, Allocation allocation2, FieldPacker fieldPacker, LaunchOptions launchOptions) {
        if (allocation == null && allocation2 == null) {
            throw new RSIllegalArgumentException("At least one of ain or aout is required to be non-null.");
        }
        if (launchOptions == null) {
            forEach(i9, allocation, allocation2, fieldPacker);
            return;
        }
        long id2 = allocation != null ? allocation.getID(this.mRS) : 0L;
        long id3 = allocation2 != null ? allocation2.getID(this.mRS) : 0L;
        byte[] data = fieldPacker != null ? fieldPacker.getData() : null;
        if (this.mUseIncSupp) {
            long dummyAlloc = getDummyAlloc(allocation);
            long dummyAlloc2 = getDummyAlloc(allocation2);
            RenderScript renderScript = this.mRS;
            renderScript.nScriptForEachClipped(getID(renderScript), i9, dummyAlloc, dummyAlloc2, data, launchOptions.xstart, launchOptions.xend, launchOptions.ystart, launchOptions.yend, launchOptions.zstart, launchOptions.zend, this.mUseIncSupp);
            return;
        }
        RenderScript renderScript2 = this.mRS;
        renderScript2.nScriptForEachClipped(getID(renderScript2), i9, id2, id3, data, launchOptions.xstart, launchOptions.xend, launchOptions.ystart, launchOptions.yend, launchOptions.zstart, launchOptions.zend, this.mUseIncSupp);
    }

    public void setVar(int i9, FieldPacker fieldPacker) {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptSetVarV(getID(renderScript), i9, fieldPacker.getData(), this.mUseIncSupp);
    }

    public void setVar(int i9, FieldPacker fieldPacker, Element element, int[] iArr) {
        if (this.mUseIncSupp) {
            long dummyElement = element.getDummyElement(this.mRS);
            RenderScript renderScript = this.mRS;
            renderScript.nScriptSetVarVE(getID(renderScript), i9, fieldPacker.getData(), dummyElement, iArr, this.mUseIncSupp);
            return;
        }
        RenderScript renderScript2 = this.mRS;
        renderScript2.nScriptSetVarVE(getID(renderScript2), i9, fieldPacker.getData(), element.getID(this.mRS), iArr, this.mUseIncSupp);
    }

    protected void forEach(int i9, Allocation[] allocationArr, Allocation allocation, FieldPacker fieldPacker) {
        forEach(i9, allocationArr, allocation, fieldPacker, (LaunchOptions) null);
    }

    protected void forEach(int i9, Allocation[] allocationArr, Allocation allocation, FieldPacker fieldPacker, LaunchOptions launchOptions) {
        long[] jArr;
        this.mRS.validate();
        if (allocationArr != null) {
            for (Allocation allocation2 : allocationArr) {
                this.mRS.validateObject(allocation2);
            }
        }
        this.mRS.validateObject(allocation);
        if (allocationArr == null && allocation == null) {
            throw new RSIllegalArgumentException("At least one of ain or aout is required to be non-null.");
        }
        if (allocationArr != null) {
            long[] jArr2 = new long[allocationArr.length];
            for (int i10 = 0; i10 < allocationArr.length; i10++) {
                jArr2[i10] = allocationArr[i10].getID(this.mRS);
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        long id2 = allocation != null ? allocation.getID(this.mRS) : 0L;
        byte[] data = fieldPacker != null ? fieldPacker.getData() : null;
        int[] iArr = launchOptions != null ? new int[]{launchOptions.xstart, launchOptions.xend, launchOptions.ystart, launchOptions.yend, launchOptions.zstart, launchOptions.zend} : null;
        RenderScript renderScript = this.mRS;
        renderScript.nScriptForEach(getID(renderScript), i9, jArr, id2, data, iArr);
    }
}
