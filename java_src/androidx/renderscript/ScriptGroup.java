package androidx.renderscript;

import android.os.Build;
import android.util.Log;
import android.util.Pair;
import androidx.renderscript.Allocation;
import androidx.renderscript.Script;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class ScriptGroup extends BaseObj {
    private static final int MIN_API_VERSION = 23;
    private static final String TAG = "ScriptGroup";
    private List<Closure> mClosures;
    IO[] mInputs;
    private List<Input> mInputs2;
    private String mName;
    private ArrayList<Node> mNodes;
    IO[] mOutputs;
    private Future[] mOutputs2;
    private boolean mUseIncSupp;

    /* loaded from: classes.dex */
    public static final class Binding {
        private final Script.FieldID mField;
        private final Object mValue;

        public Binding(Script.FieldID fieldID, Object obj) {
            this.mField = fieldID;
            this.mValue = obj;
        }

        public Script.FieldID getField() {
            return this.mField;
        }

        public Object getValue() {
            return this.mValue;
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder2 {
        private static final String TAG = "ScriptGroup.Builder2";
        List<Closure> mClosures = new ArrayList();
        List<Input> mInputs = new ArrayList();
        RenderScript mRS;

        public Builder2(RenderScript renderScript) {
            this.mRS = renderScript;
        }

        private Closure addInvokeInternal(Script.InvokeID invokeID, Object[] objArr, Map<Script.FieldID, Object> map) {
            Closure closure = new Closure(this.mRS, invokeID, objArr, map);
            this.mClosures.add(closure);
            return closure;
        }

        private Closure addKernelInternal(Script.KernelID kernelID, Type type, Object[] objArr, Map<Script.FieldID, Object> map) {
            Closure closure = new Closure(this.mRS, kernelID, type, objArr, map);
            this.mClosures.add(closure);
            return closure;
        }

        private boolean seperateArgsAndBindings(Object[] objArr, ArrayList<Object> arrayList, Map<Script.FieldID, Object> map) {
            int i9 = 0;
            while (i9 < objArr.length && !(objArr[i9] instanceof Binding)) {
                arrayList.add(objArr[i9]);
                i9++;
            }
            while (i9 < objArr.length) {
                if (!(objArr[i9] instanceof Binding)) {
                    return false;
                }
                Binding binding = (Binding) objArr[i9];
                map.put(binding.getField(), binding.getValue());
                i9++;
            }
            return true;
        }

        public Input addInput() {
            Input input = new Input();
            this.mInputs.add(input);
            return input;
        }

        public Closure addInvoke(Script.InvokeID invokeID, Object... objArr) {
            ArrayList<Object> arrayList = new ArrayList<>();
            HashMap hashMap = new HashMap();
            if (seperateArgsAndBindings(objArr, arrayList, hashMap)) {
                return addInvokeInternal(invokeID, arrayList.toArray(), hashMap);
            }
            return null;
        }

        public Closure addKernel(Script.KernelID kernelID, Type type, Object... objArr) {
            ArrayList<Object> arrayList = new ArrayList<>();
            HashMap hashMap = new HashMap();
            if (seperateArgsAndBindings(objArr, arrayList, hashMap)) {
                return addKernelInternal(kernelID, type, arrayList.toArray(), hashMap);
            }
            return null;
        }

        public ScriptGroup create(String str, Future... futureArr) {
            if (str != null && !str.isEmpty() && str.length() <= 100 && str.equals(str.replaceAll("[^a-zA-Z0-9-]", "_"))) {
                return new ScriptGroup(this.mRS, str, this.mClosures, this.mInputs, futureArr);
            }
            throw new RSIllegalArgumentException("invalid script group name");
        }
    }

    /* loaded from: classes.dex */
    public static final class Closure extends BaseObj {
        private static final String TAG = "Closure";
        private Object[] mArgs;
        private Map<Script.FieldID, Object> mBindings;
        private FieldPacker mFP;
        private Map<Script.FieldID, Future> mGlobalFuture;
        private Future mReturnFuture;
        private Allocation mReturnValue;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class ValueAndSize {
            public int size;
            public long value;

            public ValueAndSize(RenderScript renderScript, Object obj) {
                if (obj instanceof Allocation) {
                    this.value = ((Allocation) obj).getID(renderScript);
                    this.size = -1;
                } else if (obj instanceof Boolean) {
                    this.value = ((Boolean) obj).booleanValue() ? 1L : 0L;
                    this.size = 4;
                } else if (obj instanceof Integer) {
                    this.value = ((Integer) obj).longValue();
                    this.size = 4;
                } else if (obj instanceof Long) {
                    this.value = ((Long) obj).longValue();
                    this.size = 8;
                } else if (obj instanceof Float) {
                    this.value = Float.floatToRawIntBits(((Float) obj).floatValue());
                    this.size = 4;
                } else if (obj instanceof Double) {
                    this.value = Double.doubleToRawLongBits(((Double) obj).doubleValue());
                    this.size = 8;
                }
            }
        }

        Closure(long j10, RenderScript renderScript) {
            super(j10, renderScript);
        }

        private void retrieveValueAndDependenceInfo(RenderScript renderScript, int i9, Script.FieldID fieldID, Object obj, long[] jArr, int[] iArr, long[] jArr2, long[] jArr3) {
            if (obj instanceof Future) {
                Future future = (Future) obj;
                Object value = future.getValue();
                jArr2[i9] = future.getClosure().getID(renderScript);
                Script.FieldID fieldID2 = future.getFieldID();
                jArr3[i9] = fieldID2 != null ? fieldID2.getID(renderScript) : 0L;
                obj = value;
            } else {
                jArr2[i9] = 0;
                jArr3[i9] = 0;
            }
            if (obj instanceof Input) {
                Input input = (Input) obj;
                if (i9 < this.mArgs.length) {
                    input.addReference(this, i9);
                } else {
                    input.addReference(this, fieldID);
                }
                jArr[i9] = 0;
                iArr[i9] = 0;
                return;
            }
            ValueAndSize valueAndSize = new ValueAndSize(renderScript, obj);
            jArr[i9] = valueAndSize.value;
            iArr[i9] = valueAndSize.size;
        }

        public Future getGlobal(Script.FieldID fieldID) {
            Future future = this.mGlobalFuture.get(fieldID);
            if (future == null) {
                Object obj = this.mBindings.get(fieldID);
                if (obj instanceof Future) {
                    obj = ((Future) obj).getValue();
                }
                Future future2 = new Future(this, fieldID, obj);
                this.mGlobalFuture.put(fieldID, future2);
                return future2;
            }
            return future;
        }

        public Future getReturn() {
            if (this.mReturnFuture == null) {
                this.mReturnFuture = new Future(this, null, this.mReturnValue);
            }
            return this.mReturnFuture;
        }

        void setArg(int i9, Object obj) {
            if (obj instanceof Future) {
                obj = ((Future) obj).getValue();
            }
            this.mArgs[i9] = obj;
            ValueAndSize valueAndSize = new ValueAndSize(this.mRS, obj);
            RenderScript renderScript = this.mRS;
            renderScript.nClosureSetArg(getID(renderScript), i9, valueAndSize.value, valueAndSize.size);
        }

        void setGlobal(Script.FieldID fieldID, Object obj) {
            if (obj instanceof Future) {
                obj = ((Future) obj).getValue();
            }
            this.mBindings.put(fieldID, obj);
            ValueAndSize valueAndSize = new ValueAndSize(this.mRS, obj);
            RenderScript renderScript = this.mRS;
            renderScript.nClosureSetGlobal(getID(renderScript), fieldID.getID(this.mRS), valueAndSize.value, valueAndSize.size);
        }

        Closure(RenderScript renderScript, Script.KernelID kernelID, Type type, Object[] objArr, Map<Script.FieldID, Object> map) {
            super(0L, renderScript);
            if (Build.VERSION.SDK_INT < 23 && renderScript.isUseNative()) {
                throw new RSRuntimeException("ScriptGroup2 not supported in this API level");
            }
            this.mArgs = objArr;
            this.mReturnValue = Allocation.createTyped(renderScript, type);
            this.mBindings = map;
            this.mGlobalFuture = new HashMap();
            int length = objArr.length + map.size();
            long[] jArr = new long[length];
            long[] jArr2 = new long[length];
            int[] iArr = new int[length];
            long[] jArr3 = new long[length];
            long[] jArr4 = new long[length];
            int i9 = 0;
            while (i9 < objArr.length) {
                jArr[i9] = 0;
                long[] jArr5 = jArr4;
                long[] jArr6 = jArr3;
                retrieveValueAndDependenceInfo(renderScript, i9, null, objArr[i9], jArr2, iArr, jArr6, jArr5);
                i9++;
                jArr2 = jArr2;
                jArr3 = jArr6;
                jArr4 = jArr5;
                iArr = iArr;
            }
            int i10 = i9;
            long[] jArr7 = jArr4;
            long[] jArr8 = jArr3;
            int[] iArr2 = iArr;
            long[] jArr9 = jArr2;
            for (Map.Entry<Script.FieldID, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                Script.FieldID key = entry.getKey();
                jArr[i10] = key.getID(renderScript);
                retrieveValueAndDependenceInfo(renderScript, i10, key, value, jArr9, iArr2, jArr8, jArr7);
                i10++;
            }
            setID(renderScript.nClosureCreate(kernelID.getID(renderScript), this.mReturnValue.getID(renderScript), jArr, jArr9, iArr2, jArr8, jArr7));
        }

        Closure(RenderScript renderScript, Script.InvokeID invokeID, Object[] objArr, Map<Script.FieldID, Object> map) {
            super(0L, renderScript);
            if (Build.VERSION.SDK_INT < 23 && renderScript.isUseNative()) {
                throw new RSRuntimeException("ScriptGroup2 not supported in this API level");
            }
            this.mFP = FieldPacker.createFromArray(objArr);
            this.mArgs = objArr;
            this.mBindings = map;
            this.mGlobalFuture = new HashMap();
            int size = map.size();
            long[] jArr = new long[size];
            long[] jArr2 = new long[size];
            int[] iArr = new int[size];
            long[] jArr3 = new long[size];
            long[] jArr4 = new long[size];
            int i9 = 0;
            for (Map.Entry<Script.FieldID, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                Script.FieldID key = entry.getKey();
                jArr[i9] = key.getID(renderScript);
                retrieveValueAndDependenceInfo(renderScript, i9, key, value, jArr2, iArr, jArr3, jArr4);
                i9++;
            }
            setID(renderScript.nInvokeClosureCreate(invokeID.getID(renderScript), this.mFP.getData(), jArr, jArr2, iArr));
        }
    }

    /* loaded from: classes.dex */
    public static final class Future {
        Closure mClosure;
        Script.FieldID mFieldID;
        Object mValue;

        Future(Closure closure, Script.FieldID fieldID, Object obj) {
            this.mClosure = closure;
            this.mFieldID = fieldID;
            this.mValue = obj;
        }

        Closure getClosure() {
            return this.mClosure;
        }

        Script.FieldID getFieldID() {
            return this.mFieldID;
        }

        Object getValue() {
            return this.mValue;
        }
    }

    /* loaded from: classes.dex */
    static class IO {
        Allocation mAllocation;
        Script.KernelID mKID;

        IO(Script.KernelID kernelID) {
            this.mKID = kernelID;
        }
    }

    /* loaded from: classes.dex */
    public static final class Input {
        Object mValue;
        List<Pair<Closure, Script.FieldID>> mFieldID = new ArrayList();
        List<Pair<Closure, Integer>> mArgIndex = new ArrayList();

        Input() {
        }

        void addReference(Closure closure, int i9) {
            this.mArgIndex.add(Pair.create(closure, Integer.valueOf(i9)));
        }

        Object get() {
            return this.mValue;
        }

        void set(Object obj) {
            this.mValue = obj;
            for (Pair<Closure, Integer> pair : this.mArgIndex) {
                ((Closure) pair.first).setArg(((Integer) pair.second).intValue(), obj);
            }
            for (Pair<Closure, Script.FieldID> pair2 : this.mFieldID) {
                ((Closure) pair2.first).setGlobal((Script.FieldID) pair2.second, obj);
            }
        }

        void addReference(Closure closure, Script.FieldID fieldID) {
            this.mFieldID.add(Pair.create(closure, fieldID));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Node {
        int dagNumber;
        Node mNext;
        int mOrder;
        Script mScript;
        boolean mSeen;
        ArrayList<Script.KernelID> mKernels = new ArrayList<>();
        ArrayList<ConnectLine> mInputs = new ArrayList<>();
        ArrayList<ConnectLine> mOutputs = new ArrayList<>();

        Node(Script script) {
            this.mScript = script;
        }
    }

    ScriptGroup(long j10, RenderScript renderScript) {
        super(j10, renderScript);
        this.mUseIncSupp = false;
        this.mNodes = new ArrayList<>();
    }

    public Object[] execute(Object... objArr) {
        if (objArr.length < this.mInputs2.size()) {
            Log.e(TAG, toString() + " receives " + objArr.length + " inputs, less than expected " + this.mInputs2.size());
            return null;
        }
        if (objArr.length > this.mInputs2.size()) {
            Log.i(TAG, toString() + " receives " + objArr.length + " inputs, more than expected " + this.mInputs2.size());
        }
        int i9 = 0;
        for (int i10 = 0; i10 < this.mInputs2.size(); i10++) {
            Object obj = objArr[i10];
            if ((obj instanceof Future) || (obj instanceof Input)) {
                Log.e(TAG, toString() + ": input " + i10 + " is a future or unbound value");
                return null;
            }
            this.mInputs2.get(i10).set(obj);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptGroup2Execute(getID(renderScript));
        Future[] futureArr = this.mOutputs2;
        Object[] objArr2 = new Object[futureArr.length];
        int length = futureArr.length;
        int i11 = 0;
        while (i9 < length) {
            Object value = futureArr[i9].getValue();
            if (value instanceof Input) {
                value = ((Input) value).get();
            }
            objArr2[i11] = value;
            i9++;
            i11++;
        }
        return objArr2;
    }

    @Deprecated
    public void setInput(Script.KernelID kernelID, Allocation allocation) {
        int i9 = 0;
        while (true) {
            IO[] ioArr = this.mInputs;
            if (i9 < ioArr.length) {
                if (ioArr[i9].mKID == kernelID) {
                    ioArr[i9].mAllocation = allocation;
                    if (this.mUseIncSupp) {
                        return;
                    }
                    RenderScript renderScript = this.mRS;
                    renderScript.nScriptGroupSetInput(getID(renderScript), kernelID.getID(this.mRS), this.mRS.safeID(allocation));
                    return;
                }
                i9++;
            } else {
                throw new RSIllegalArgumentException("Script not found");
            }
        }
    }

    @Deprecated
    public void setOutput(Script.KernelID kernelID, Allocation allocation) {
        int i9 = 0;
        while (true) {
            IO[] ioArr = this.mOutputs;
            if (i9 < ioArr.length) {
                if (ioArr[i9].mKID == kernelID) {
                    ioArr[i9].mAllocation = allocation;
                    if (this.mUseIncSupp) {
                        return;
                    }
                    RenderScript renderScript = this.mRS;
                    renderScript.nScriptGroupSetOutput(getID(renderScript), kernelID.getID(this.mRS), this.mRS.safeID(allocation));
                    return;
                }
                i9++;
            } else {
                throw new RSIllegalArgumentException("Script not found");
            }
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static final class Builder {
        private int mKernelCount;
        private RenderScript mRS;
        private ArrayList<Node> mNodes = new ArrayList<>();
        private ArrayList<ConnectLine> mLines = new ArrayList<>();
        private boolean mUseIncSupp = false;

        public Builder(RenderScript renderScript) {
            this.mRS = renderScript;
        }

        private boolean calcOrder() {
            Iterator<Node> it = this.mNodes.iterator();
            boolean z10 = true;
            while (it.hasNext()) {
                Node next = it.next();
                if (next.mInputs.size() == 0) {
                    Iterator<Node> it2 = this.mNodes.iterator();
                    while (it2.hasNext()) {
                        it2.next().mSeen = false;
                    }
                    z10 &= calcOrderRecurse(next, 1);
                }
            }
            Collections.sort(this.mNodes, new Comparator<Node>() { // from class: androidx.renderscript.ScriptGroup.Builder.1
                @Override // java.util.Comparator
                public int compare(Node node, Node node2) {
                    return node.mOrder - node2.mOrder;
                }
            });
            return z10;
        }

        private boolean calcOrderRecurse(Node node, int i9) {
            Node findNode;
            node.mSeen = true;
            if (node.mOrder < i9) {
                node.mOrder = i9;
            }
            Iterator<ConnectLine> it = node.mOutputs.iterator();
            boolean z10 = true;
            while (it.hasNext()) {
                ConnectLine next = it.next();
                Script.FieldID fieldID = next.mToF;
                if (fieldID != null) {
                    findNode = findNode(fieldID.mScript);
                } else {
                    findNode = findNode(next.mToK.mScript);
                }
                if (findNode.mSeen) {
                    return false;
                }
                z10 &= calcOrderRecurse(findNode, node.mOrder + 1);
            }
            return z10;
        }

        private Node findNode(Script script) {
            for (int i9 = 0; i9 < this.mNodes.size(); i9++) {
                if (script == this.mNodes.get(i9).mScript) {
                    return this.mNodes.get(i9);
                }
            }
            return null;
        }

        private void mergeDAGs(int i9, int i10) {
            for (int i11 = 0; i11 < this.mNodes.size(); i11++) {
                if (this.mNodes.get(i11).dagNumber == i10) {
                    this.mNodes.get(i11).dagNumber = i9;
                }
            }
        }

        private void validateCycle(Node node, Node node2) {
            for (int i9 = 0; i9 < node.mOutputs.size(); i9++) {
                ConnectLine connectLine = node.mOutputs.get(i9);
                Script.KernelID kernelID = connectLine.mToK;
                if (kernelID != null) {
                    Node findNode = findNode(kernelID.mScript);
                    if (!findNode.equals(node2)) {
                        validateCycle(findNode, node2);
                    } else {
                        throw new RSInvalidStateException("Loops in group not allowed.");
                    }
                }
                Script.FieldID fieldID = connectLine.mToF;
                if (fieldID != null) {
                    Node findNode2 = findNode(fieldID.mScript);
                    if (!findNode2.equals(node2)) {
                        validateCycle(findNode2, node2);
                    } else {
                        throw new RSInvalidStateException("Loops in group not allowed.");
                    }
                }
            }
        }

        private void validateDAG() {
            for (int i9 = 0; i9 < this.mNodes.size(); i9++) {
                Node node = this.mNodes.get(i9);
                if (node.mInputs.size() == 0) {
                    if (node.mOutputs.size() == 0 && this.mNodes.size() > 1) {
                        throw new RSInvalidStateException("Groups cannot contain unconnected scripts");
                    }
                    validateDAGRecurse(node, i9 + 1);
                }
            }
            int i10 = this.mNodes.get(0).dagNumber;
            for (int i11 = 0; i11 < this.mNodes.size(); i11++) {
                if (this.mNodes.get(i11).dagNumber != i10) {
                    throw new RSInvalidStateException("Multiple DAGs in group not allowed.");
                }
            }
        }

        private void validateDAGRecurse(Node node, int i9) {
            int i10 = node.dagNumber;
            if (i10 != 0 && i10 != i9) {
                mergeDAGs(i10, i9);
                return;
            }
            node.dagNumber = i9;
            for (int i11 = 0; i11 < node.mOutputs.size(); i11++) {
                ConnectLine connectLine = node.mOutputs.get(i11);
                Script.KernelID kernelID = connectLine.mToK;
                if (kernelID != null) {
                    validateDAGRecurse(findNode(kernelID.mScript), i9);
                }
                Script.FieldID fieldID = connectLine.mToF;
                if (fieldID != null) {
                    validateDAGRecurse(findNode(fieldID.mScript), i9);
                }
            }
        }

        public Builder addConnection(Type type, Script.KernelID kernelID, Script.FieldID fieldID) {
            Node findNode = findNode(kernelID);
            if (findNode != null) {
                Node findNode2 = findNode(fieldID.mScript);
                if (findNode2 != null) {
                    ConnectLine connectLine = new ConnectLine(type, kernelID, fieldID);
                    this.mLines.add(new ConnectLine(type, kernelID, fieldID));
                    findNode.mOutputs.add(connectLine);
                    findNode2.mInputs.add(connectLine);
                    validateCycle(findNode, findNode);
                    return this;
                }
                throw new RSInvalidStateException("To script not found.");
            }
            throw new RSInvalidStateException("From script not found.");
        }

        public Builder addKernel(Script.KernelID kernelID) {
            if (this.mLines.size() == 0) {
                if (kernelID.mScript.isIncSupp()) {
                    this.mUseIncSupp = true;
                }
                if (findNode(kernelID) != null) {
                    return this;
                }
                this.mKernelCount++;
                Node findNode = findNode(kernelID.mScript);
                if (findNode == null) {
                    findNode = new Node(kernelID.mScript);
                    this.mNodes.add(findNode);
                }
                findNode.mKernels.add(kernelID);
                return this;
            }
            throw new RSInvalidStateException("Kernels may not be added once connections exist.");
        }

        public ScriptGroup create() {
            if (this.mNodes.size() != 0) {
                for (int i9 = 0; i9 < this.mNodes.size(); i9++) {
                    this.mNodes.get(i9).dagNumber = 0;
                }
                validateDAG();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                long[] jArr = new long[this.mKernelCount];
                int i10 = 0;
                for (int i11 = 0; i11 < this.mNodes.size(); i11++) {
                    Node node = this.mNodes.get(i11);
                    int i12 = 0;
                    while (i12 < node.mKernels.size()) {
                        Script.KernelID kernelID = node.mKernels.get(i12);
                        int i13 = i10 + 1;
                        jArr[i10] = kernelID.getID(this.mRS);
                        boolean z10 = false;
                        for (int i14 = 0; i14 < node.mInputs.size(); i14++) {
                            if (node.mInputs.get(i14).mToK == kernelID) {
                                z10 = true;
                            }
                        }
                        boolean z11 = false;
                        for (int i15 = 0; i15 < node.mOutputs.size(); i15++) {
                            if (node.mOutputs.get(i15).mFrom == kernelID) {
                                z11 = true;
                            }
                        }
                        if (!z10) {
                            arrayList.add(new IO(kernelID));
                        }
                        if (!z11) {
                            arrayList2.add(new IO(kernelID));
                        }
                        i12++;
                        i10 = i13;
                    }
                }
                if (i10 == this.mKernelCount) {
                    long j10 = 0;
                    if (!this.mUseIncSupp) {
                        long[] jArr2 = new long[this.mLines.size()];
                        long[] jArr3 = new long[this.mLines.size()];
                        long[] jArr4 = new long[this.mLines.size()];
                        long[] jArr5 = new long[this.mLines.size()];
                        for (int i16 = 0; i16 < this.mLines.size(); i16++) {
                            ConnectLine connectLine = this.mLines.get(i16);
                            jArr2[i16] = connectLine.mFrom.getID(this.mRS);
                            Script.KernelID kernelID2 = connectLine.mToK;
                            if (kernelID2 != null) {
                                jArr3[i16] = kernelID2.getID(this.mRS);
                            }
                            Script.FieldID fieldID = connectLine.mToF;
                            if (fieldID != null) {
                                jArr4[i16] = fieldID.getID(this.mRS);
                            }
                            jArr5[i16] = connectLine.mAllocationType.getID(this.mRS);
                        }
                        long nScriptGroupCreate = this.mRS.nScriptGroupCreate(jArr, jArr2, jArr3, jArr4, jArr5);
                        if (nScriptGroupCreate == 0) {
                            throw new RSRuntimeException("Object creation error, should not happen.");
                        }
                        j10 = nScriptGroupCreate;
                    } else {
                        calcOrder();
                    }
                    ScriptGroup scriptGroup = new ScriptGroup(j10, this.mRS);
                    scriptGroup.mOutputs = new IO[arrayList2.size()];
                    for (int i17 = 0; i17 < arrayList2.size(); i17++) {
                        scriptGroup.mOutputs[i17] = (IO) arrayList2.get(i17);
                    }
                    scriptGroup.mInputs = new IO[arrayList.size()];
                    for (int i18 = 0; i18 < arrayList.size(); i18++) {
                        scriptGroup.mInputs[i18] = (IO) arrayList.get(i18);
                    }
                    scriptGroup.mNodes = this.mNodes;
                    scriptGroup.mUseIncSupp = this.mUseIncSupp;
                    return scriptGroup;
                }
                throw new RSRuntimeException("Count mismatch, should not happen.");
            }
            throw new RSInvalidStateException("Empty script groups are not allowed");
        }

        private Node findNode(Script.KernelID kernelID) {
            for (int i9 = 0; i9 < this.mNodes.size(); i9++) {
                Node node = this.mNodes.get(i9);
                for (int i10 = 0; i10 < node.mKernels.size(); i10++) {
                    if (kernelID == node.mKernels.get(i10)) {
                        return node;
                    }
                }
            }
            return null;
        }

        public Builder addConnection(Type type, Script.KernelID kernelID, Script.KernelID kernelID2) {
            Node findNode = findNode(kernelID);
            if (findNode != null) {
                Node findNode2 = findNode(kernelID2);
                if (findNode2 != null) {
                    ConnectLine connectLine = new ConnectLine(type, kernelID, kernelID2);
                    this.mLines.add(new ConnectLine(type, kernelID, kernelID2));
                    findNode.mOutputs.add(connectLine);
                    findNode2.mInputs.add(connectLine);
                    validateCycle(findNode, findNode);
                    return this;
                }
                throw new RSInvalidStateException("To script not found.");
            }
            throw new RSInvalidStateException("From script not found.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ConnectLine {
        Allocation mAllocation;
        Type mAllocationType;
        Script.KernelID mFrom;
        Script.FieldID mToF;
        Script.KernelID mToK;

        ConnectLine(Type type, Script.KernelID kernelID, Script.KernelID kernelID2) {
            this.mFrom = kernelID;
            this.mToK = kernelID2;
            this.mAllocationType = type;
        }

        ConnectLine(Type type, Script.KernelID kernelID, Script.FieldID fieldID) {
            this.mFrom = kernelID;
            this.mToF = fieldID;
            this.mAllocationType = type;
        }
    }

    ScriptGroup(RenderScript renderScript, String str, List<Closure> list, List<Input> list2, Future[] futureArr) {
        super(0L, renderScript);
        this.mUseIncSupp = false;
        this.mNodes = new ArrayList<>();
        if (Build.VERSION.SDK_INT < 23 && renderScript.isUseNative()) {
            throw new RSRuntimeException("ScriptGroup2 not supported in this API level");
        }
        this.mName = str;
        this.mClosures = list;
        this.mInputs2 = list2;
        this.mOutputs2 = futureArr;
        int size = list.size();
        long[] jArr = new long[size];
        for (int i9 = 0; i9 < size; i9++) {
            jArr[i9] = list.get(i9).getID(renderScript);
        }
        setID(renderScript.nScriptGroup2Create(str, renderScript.getApplicationContext().getCacheDir().toString(), jArr));
    }

    @Deprecated
    public void execute() {
        IO[] ioArr;
        IO[] ioArr2;
        if (!this.mUseIncSupp) {
            RenderScript renderScript = this.mRS;
            renderScript.nScriptGroupExecute(getID(renderScript));
            return;
        }
        for (int i9 = 0; i9 < this.mNodes.size(); i9++) {
            Node node = this.mNodes.get(i9);
            for (int i10 = 0; i10 < node.mOutputs.size(); i10++) {
                ConnectLine connectLine = node.mOutputs.get(i10);
                if (connectLine.mAllocation == null) {
                    Allocation createTyped = Allocation.createTyped(this.mRS, connectLine.mAllocationType, Allocation.MipmapControl.MIPMAP_NONE, 1);
                    connectLine.mAllocation = createTyped;
                    for (int i11 = i10 + 1; i11 < node.mOutputs.size(); i11++) {
                        if (node.mOutputs.get(i11).mFrom == connectLine.mFrom) {
                            node.mOutputs.get(i11).mAllocation = createTyped;
                        }
                    }
                }
            }
        }
        Iterator<Node> it = this.mNodes.iterator();
        while (it.hasNext()) {
            Node next = it.next();
            Iterator<Script.KernelID> it2 = next.mKernels.iterator();
            while (it2.hasNext()) {
                Script.KernelID next2 = it2.next();
                Iterator<ConnectLine> it3 = next.mInputs.iterator();
                Allocation allocation = null;
                while (it3.hasNext()) {
                    ConnectLine next3 = it3.next();
                    if (next3.mToK == next2) {
                        allocation = next3.mAllocation;
                    }
                }
                for (IO io2 : this.mInputs) {
                    if (io2.mKID == next2) {
                        allocation = io2.mAllocation;
                    }
                }
                Iterator<ConnectLine> it4 = next.mOutputs.iterator();
                Allocation allocation2 = null;
                while (it4.hasNext()) {
                    ConnectLine next4 = it4.next();
                    if (next4.mFrom == next2) {
                        allocation2 = next4.mAllocation;
                    }
                }
                for (IO io3 : this.mOutputs) {
                    if (io3.mKID == next2) {
                        allocation2 = io3.mAllocation;
                    }
                }
                next2.mScript.forEach(next2.mSlot, allocation, allocation2, (FieldPacker) null);
            }
        }
    }
}
