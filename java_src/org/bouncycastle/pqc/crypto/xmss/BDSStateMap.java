package org.bouncycastle.pqc.crypto.xmss;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;
import org.bouncycastle.pqc.crypto.xmss.h;
/* loaded from: classes7.dex */
public class BDSStateMap implements Serializable {
    private static final long serialVersionUID = -3464451825208522308L;
    private final Map<Integer, BDS> bdsState = new TreeMap();
    private transient long maxIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDSStateMap(long j10) {
        this.maxIndex = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDSStateMap(BDSStateMap bDSStateMap, long j10) {
        for (Integer num : bDSStateMap.bdsState.keySet()) {
            this.bdsState.put(num, new BDS(bDSStateMap.bdsState.get(num)));
        }
        this.maxIndex = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDSStateMap(p pVar, long j10, byte[] bArr, byte[] bArr2) {
        this.maxIndex = (1 << pVar.a()) - 1;
        for (long j11 = 0; j11 < j10; j11++) {
            updateState(pVar, j11, bArr, bArr2);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.maxIndex = objectInputStream.available() != 0 ? objectInputStream.readLong() : 0L;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(this.maxIndex);
    }

    BDS get(int i9) {
        return this.bdsState.get(org.bouncycastle.util.e.d(i9));
    }

    public long getMaxIndex() {
        return this.maxIndex;
    }

    public boolean isEmpty() {
        return this.bdsState.isEmpty();
    }

    void put(int i9, BDS bds) {
        this.bdsState.put(org.bouncycastle.util.e.d(i9), bds);
    }

    BDS update(int i9, byte[] bArr, byte[] bArr2, h hVar) {
        return this.bdsState.put(org.bouncycastle.util.e.d(i9), this.bdsState.get(org.bouncycastle.util.e.d(i9)).getNextState(bArr, bArr2, hVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateState(p pVar, long j10, byte[] bArr, byte[] bArr2) {
        u h10 = pVar.h();
        int b10 = h10.b();
        long j11 = x.j(j10, b10);
        int i9 = x.i(j10, b10);
        h hVar = (h) new h.b().h(j11).p(i9).l();
        int i10 = (1 << b10) - 1;
        if (i9 < i10) {
            if (get(0) == null || i9 == 0) {
                put(0, new BDS(h10, bArr, bArr2, hVar));
            }
            update(0, bArr, bArr2, hVar);
        }
        for (int i11 = 1; i11 < pVar.b(); i11++) {
            int i12 = x.i(j11, b10);
            j11 = x.j(j11, b10);
            h hVar2 = (h) new h.b().g(i11).h(j11).p(i12).l();
            if (this.bdsState.get(Integer.valueOf(i11)) == null || x.n(j10, b10, i11)) {
                this.bdsState.put(Integer.valueOf(i11), new BDS(h10, bArr, bArr2, hVar2));
            }
            if (i12 < i10 && x.m(j10, b10, i11)) {
                update(i11, bArr, bArr2, hVar2);
            }
        }
    }

    public BDSStateMap withWOTSDigest(org.bouncycastle.asn1.n nVar) {
        BDSStateMap bDSStateMap = new BDSStateMap(this.maxIndex);
        for (Integer num : this.bdsState.keySet()) {
            bDSStateMap.bdsState.put(num, this.bdsState.get(num).withWOTSDigest(nVar));
        }
        return bDSStateMap;
    }
}
