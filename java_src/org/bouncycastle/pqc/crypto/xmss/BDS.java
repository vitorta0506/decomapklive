package org.bouncycastle.pqc.crypto.xmss;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Stack;
import java.util.TreeMap;
import org.bouncycastle.pqc.crypto.xmss.e;
import org.bouncycastle.pqc.crypto.xmss.g;
import org.bouncycastle.pqc.crypto.xmss.h;
/* loaded from: classes7.dex */
public final class BDS implements Serializable {
    private static final long serialVersionUID = 1;
    private List<XMSSNode> authenticationPath;
    private int index;

    /* renamed from: k  reason: collision with root package name */
    private int f56127k;
    private Map<Integer, XMSSNode> keep;
    private transient int maxIndex;
    private Map<Integer, LinkedList<XMSSNode>> retain;
    private XMSSNode root;
    private Stack<XMSSNode> stack;
    private final List<a> treeHashInstances;
    private final int treeHeight;
    private boolean used;
    private transient i wotsPlus;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDS(BDS bds) {
        this.wotsPlus = new i(bds.wotsPlus.d());
        this.treeHeight = bds.treeHeight;
        this.f56127k = bds.f56127k;
        this.root = bds.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(bds.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : bds.retain.keySet()) {
            this.retain.put(num, (LinkedList) bds.retain.get(num).clone());
        }
        Stack<XMSSNode> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(bds.stack);
        this.treeHashInstances = new ArrayList();
        for (a aVar : bds.treeHashInstances) {
            this.treeHashInstances.add(aVar.clone());
        }
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        this.maxIndex = bds.maxIndex;
        this.used = bds.used;
    }

    private BDS(BDS bds, int i9, org.bouncycastle.asn1.n nVar) {
        this.wotsPlus = new i(new k(nVar));
        this.treeHeight = bds.treeHeight;
        this.f56127k = bds.f56127k;
        this.root = bds.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(bds.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : bds.retain.keySet()) {
            this.retain.put(num, (LinkedList) bds.retain.get(num).clone());
        }
        Stack<XMSSNode> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(bds.stack);
        this.treeHashInstances = new ArrayList();
        for (a aVar : bds.treeHashInstances) {
            this.treeHashInstances.add(aVar.clone());
        }
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        this.maxIndex = i9;
        this.used = bds.used;
        validate();
    }

    private BDS(BDS bds, org.bouncycastle.asn1.n nVar) {
        this.wotsPlus = new i(new k(nVar));
        this.treeHeight = bds.treeHeight;
        this.f56127k = bds.f56127k;
        this.root = bds.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(bds.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : bds.retain.keySet()) {
            this.retain.put(num, (LinkedList) bds.retain.get(num).clone());
        }
        Stack<XMSSNode> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(bds.stack);
        this.treeHashInstances = new ArrayList();
        for (a aVar : bds.treeHashInstances) {
            this.treeHashInstances.add(aVar.clone());
        }
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        this.maxIndex = bds.maxIndex;
        this.used = bds.used;
        validate();
    }

    private BDS(BDS bds, byte[] bArr, byte[] bArr2, h hVar) {
        this.wotsPlus = new i(bds.wotsPlus.d());
        this.treeHeight = bds.treeHeight;
        this.f56127k = bds.f56127k;
        this.root = bds.root;
        ArrayList arrayList = new ArrayList();
        this.authenticationPath = arrayList;
        arrayList.addAll(bds.authenticationPath);
        this.retain = new TreeMap();
        for (Integer num : bds.retain.keySet()) {
            this.retain.put(num, (LinkedList) bds.retain.get(num).clone());
        }
        Stack<XMSSNode> stack = new Stack<>();
        this.stack = stack;
        stack.addAll(bds.stack);
        this.treeHashInstances = new ArrayList();
        for (a aVar : bds.treeHashInstances) {
            this.treeHashInstances.add(aVar.clone());
        }
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        this.maxIndex = bds.maxIndex;
        this.used = false;
        nextAuthenticationPath(bArr, bArr2, hVar);
    }

    private BDS(i iVar, int i9, int i10, int i11) {
        this.wotsPlus = iVar;
        this.treeHeight = i9;
        this.maxIndex = i11;
        this.f56127k = i10;
        if (i10 <= i9 && i10 >= 2) {
            int i12 = i9 - i10;
            if (i12 % 2 == 0) {
                this.authenticationPath = new ArrayList();
                this.retain = new TreeMap();
                this.stack = new Stack<>();
                this.treeHashInstances = new ArrayList();
                for (int i13 = 0; i13 < i12; i13++) {
                    this.treeHashInstances.add(new a(i13));
                }
                this.keep = new TreeMap();
                this.index = 0;
                this.used = false;
                return;
            }
        }
        throw new IllegalArgumentException("illegal value for BDS parameter k");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDS(u uVar, int i9, int i10) {
        this(uVar.i(), uVar.b(), uVar.c(), i10);
        this.maxIndex = i9;
        this.index = i10;
        this.used = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDS(u uVar, byte[] bArr, byte[] bArr2, h hVar) {
        this(uVar.i(), uVar.b(), uVar.c(), (1 << uVar.b()) - 1);
        initialize(bArr, bArr2, hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDS(u uVar, byte[] bArr, byte[] bArr2, h hVar, int i9) {
        this(uVar.i(), uVar.b(), uVar.c(), (1 << uVar.b()) - 1);
        initialize(bArr, bArr2, hVar);
        while (this.index < i9) {
            nextAuthenticationPath(bArr, bArr2, hVar);
            this.used = false;
        }
    }

    private a getBDSTreeHashInstanceForUpdate() {
        a aVar = null;
        for (a aVar2 : this.treeHashInstances) {
            if (!aVar2.f() && aVar2.g() && (aVar == null || aVar2.getHeight() < aVar.getHeight() || (aVar2.getHeight() == aVar.getHeight() && aVar2.b() < aVar.b()))) {
                aVar = aVar2;
            }
        }
        return aVar;
    }

    private void initialize(byte[] bArr, byte[] bArr2, h hVar) {
        Objects.requireNonNull(hVar, "otsHashAddress == null");
        g gVar = (g) new g.b().g(hVar.b()).h(hVar.c()).l();
        e eVar = (e) new e.b().g(hVar.b()).h(hVar.c()).k();
        for (int i9 = 0; i9 < (1 << this.treeHeight); i9++) {
            hVar = (h) new h.b().g(hVar.b()).h(hVar.c()).p(i9).n(hVar.e()).o(hVar.f()).f(hVar.a()).l();
            i iVar = this.wotsPlus;
            iVar.h(iVar.g(bArr2, hVar), bArr);
            l e10 = this.wotsPlus.e(hVar);
            gVar = (g) new g.b().g(gVar.b()).h(gVar.c()).n(i9).o(gVar.f()).p(gVar.g()).f(gVar.a()).l();
            XMSSNode a10 = s.a(this.wotsPlus, e10, gVar);
            eVar = (e) new e.b().g(eVar.b()).h(eVar.c()).n(i9).f(eVar.a()).k();
            while (!this.stack.isEmpty() && this.stack.peek().getHeight() == a10.getHeight()) {
                int height = i9 / (1 << a10.getHeight());
                if (height == 1) {
                    this.authenticationPath.add(a10);
                }
                if (height == 3 && a10.getHeight() < this.treeHeight - this.f56127k) {
                    this.treeHashInstances.get(a10.getHeight()).h(a10);
                }
                if (height >= 3 && (height & 1) == 1 && a10.getHeight() >= this.treeHeight - this.f56127k && a10.getHeight() <= this.treeHeight - 2) {
                    if (this.retain.get(Integer.valueOf(a10.getHeight())) == null) {
                        LinkedList<XMSSNode> linkedList = new LinkedList<>();
                        linkedList.add(a10);
                        this.retain.put(Integer.valueOf(a10.getHeight()), linkedList);
                    } else {
                        this.retain.get(Integer.valueOf(a10.getHeight())).add(a10);
                    }
                }
                e eVar2 = (e) new e.b().g(eVar.b()).h(eVar.c()).m(eVar.e()).n((eVar.f() - 1) / 2).f(eVar.a()).k();
                XMSSNode b10 = s.b(this.wotsPlus, this.stack.pop(), a10, eVar2);
                XMSSNode xMSSNode = new XMSSNode(b10.getHeight() + 1, b10.getValue());
                eVar = (e) new e.b().g(eVar2.b()).h(eVar2.c()).m(eVar2.e() + 1).n(eVar2.f()).f(eVar2.a()).k();
                a10 = xMSSNode;
            }
            this.stack.push(a10);
        }
        this.root = this.stack.pop();
    }

    private void nextAuthenticationPath(byte[] bArr, byte[] bArr2, h hVar) {
        List<XMSSNode> list;
        XMSSNode removeFirst;
        Objects.requireNonNull(hVar, "otsHashAddress == null");
        if (this.used) {
            throw new IllegalStateException("index already used");
        }
        int i9 = this.index;
        if (i9 > this.maxIndex - 1) {
            throw new IllegalStateException("index out of bounds");
        }
        int b10 = x.b(i9, this.treeHeight);
        if (((this.index >> (b10 + 1)) & 1) == 0 && b10 < this.treeHeight - 1) {
            this.keep.put(Integer.valueOf(b10), this.authenticationPath.get(b10));
        }
        g gVar = (g) new g.b().g(hVar.b()).h(hVar.c()).l();
        e eVar = (e) new e.b().g(hVar.b()).h(hVar.c()).k();
        if (b10 == 0) {
            hVar = (h) new h.b().g(hVar.b()).h(hVar.c()).p(this.index).n(hVar.e()).o(hVar.f()).f(hVar.a()).l();
            i iVar = this.wotsPlus;
            iVar.h(iVar.g(bArr2, hVar), bArr);
            this.authenticationPath.set(0, s.a(this.wotsPlus, this.wotsPlus.e(hVar), (g) new g.b().g(gVar.b()).h(gVar.c()).n(this.index).o(gVar.f()).p(gVar.g()).f(gVar.a()).l()));
        } else {
            int i10 = b10 - 1;
            i iVar2 = this.wotsPlus;
            iVar2.h(iVar2.g(bArr2, hVar), bArr);
            XMSSNode b11 = s.b(this.wotsPlus, this.authenticationPath.get(i10), this.keep.get(Integer.valueOf(i10)), (e) new e.b().g(eVar.b()).h(eVar.c()).m(i10).n(this.index >> b10).f(eVar.a()).k());
            this.authenticationPath.set(b10, new XMSSNode(b11.getHeight() + 1, b11.getValue()));
            this.keep.remove(Integer.valueOf(i10));
            for (int i11 = 0; i11 < b10; i11++) {
                if (i11 < this.treeHeight - this.f56127k) {
                    list = this.authenticationPath;
                    removeFirst = this.treeHashInstances.get(i11).d();
                } else {
                    list = this.authenticationPath;
                    removeFirst = this.retain.get(Integer.valueOf(i11)).removeFirst();
                }
                list.set(i11, removeFirst);
            }
            int min = Math.min(b10, this.treeHeight - this.f56127k);
            for (int i12 = 0; i12 < min; i12++) {
                int i13 = this.index + 1 + ((1 << i12) * 3);
                if (i13 < (1 << this.treeHeight)) {
                    this.treeHashInstances.get(i12).e(i13);
                }
            }
        }
        for (int i14 = 0; i14 < ((this.treeHeight - this.f56127k) >> 1); i14++) {
            a bDSTreeHashInstanceForUpdate = getBDSTreeHashInstanceForUpdate();
            if (bDSTreeHashInstanceForUpdate != null) {
                bDSTreeHashInstanceForUpdate.i(this.stack, this.wotsPlus, bArr, bArr2, hVar);
            }
        }
        this.index++;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.maxIndex = objectInputStream.available() != 0 ? objectInputStream.readInt() : (1 << this.treeHeight) - 1;
        int i9 = this.maxIndex;
        if (i9 > (1 << this.treeHeight) - 1 || this.index > i9 + 1 || objectInputStream.available() != 0) {
            throw new IOException("inconsistent BDS data detected");
        }
    }

    private void validate() {
        if (this.authenticationPath == null) {
            throw new IllegalStateException("authenticationPath == null");
        }
        if (this.retain == null) {
            throw new IllegalStateException("retain == null");
        }
        if (this.stack == null) {
            throw new IllegalStateException("stack == null");
        }
        if (this.treeHashInstances == null) {
            throw new IllegalStateException("treeHashInstances == null");
        }
        if (this.keep == null) {
            throw new IllegalStateException("keep == null");
        }
        if (!x.l(this.treeHeight, this.index)) {
            throw new IllegalStateException("index in BDS state out of bounds");
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.maxIndex);
    }

    protected List<XMSSNode> getAuthenticationPath() {
        ArrayList arrayList = new ArrayList();
        for (XMSSNode xMSSNode : this.authenticationPath) {
            arrayList.add(xMSSNode);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getIndex() {
        return this.index;
    }

    public int getMaxIndex() {
        return this.maxIndex;
    }

    public BDS getNextState(byte[] bArr, byte[] bArr2, h hVar) {
        return new BDS(this, bArr, bArr2, hVar);
    }

    protected XMSSNode getRoot() {
        return this.root;
    }

    protected int getTreeHeight() {
        return this.treeHeight;
    }

    boolean isUsed() {
        return this.used;
    }

    void markUsed() {
        this.used = true;
    }

    public BDS withMaxIndex(int i9, org.bouncycastle.asn1.n nVar) {
        return new BDS(this, i9, nVar);
    }

    public BDS withWOTSDigest(org.bouncycastle.asn1.n nVar) {
        return new BDS(this, nVar);
    }
}
