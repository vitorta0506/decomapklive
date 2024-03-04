package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import java.util.LinkedList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class State {
    static final State INITIAL_STATE = new State(Token.EMPTY, 0, 0, 0);
    private final int binaryShiftByteCount;
    private final int bitCount;
    private final int mode;
    private final Token token;

    private State(Token token, int i9, int i10, int i11) {
        this.token = token;
        this.mode = i9;
        this.binaryShiftByteCount = i10;
        this.bitCount = i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public State addBinaryShiftChar(int i9) {
        Token token = this.token;
        int i10 = this.mode;
        int i11 = this.bitCount;
        if (i10 == 4 || i10 == 2) {
            int i12 = HighLevelEncoder.LATCH_TABLE[i10][0];
            int i13 = 65535 & i12;
            int i14 = i12 >> 16;
            token = token.add(i13, i14);
            i11 += i14;
            i10 = 0;
        }
        int i15 = this.binaryShiftByteCount;
        State state = new State(token, i10, i15 + 1, i11 + ((i15 == 0 || i15 == 31) ? 18 : i15 == 62 ? 9 : 8));
        return state.binaryShiftByteCount == 2078 ? state.endBinaryShift(i9 + 1) : state;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public State endBinaryShift(int i9) {
        int i10 = this.binaryShiftByteCount;
        return i10 == 0 ? this : new State(this.token.addBinaryShift(i9 - i10, i10), this.mode, 0, this.bitCount);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBinaryShiftByteCount() {
        return this.binaryShiftByteCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBitCount() {
        return this.bitCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMode() {
        return this.mode;
    }

    Token getToken() {
        return this.token;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isBetterThanOrEqualTo(State state) {
        int i9;
        int i10 = this.bitCount + (HighLevelEncoder.LATCH_TABLE[this.mode][state.mode] >> 16);
        int i11 = state.binaryShiftByteCount;
        if (i11 > 0 && ((i9 = this.binaryShiftByteCount) == 0 || i9 > i11)) {
            i10 += 10;
        }
        return i10 <= state.bitCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public State latchAndAppend(int i9, int i10) {
        int i11 = this.bitCount;
        Token token = this.token;
        int i12 = this.mode;
        if (i9 != i12) {
            int i13 = HighLevelEncoder.LATCH_TABLE[i12][i9];
            int i14 = 65535 & i13;
            int i15 = i13 >> 16;
            token = token.add(i14, i15);
            i11 += i15;
        }
        int i16 = i9 == 2 ? 4 : 5;
        return new State(token.add(i10, i16), i9, 0, i11 + i16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public State shiftAndAppend(int i9, int i10) {
        Token token = this.token;
        int i11 = this.mode;
        int i12 = i11 == 2 ? 4 : 5;
        return new State(token.add(HighLevelEncoder.SHIFT_TABLE[i11][i9], i12).add(i10, 5), this.mode, 0, this.bitCount + i12 + 5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BitArray toBitArray(byte[] bArr) {
        LinkedList<Token> linkedList = new LinkedList();
        for (Token token = endBinaryShift(bArr.length).token; token != null; token = token.getPrevious()) {
            linkedList.addFirst(token);
        }
        BitArray bitArray = new BitArray();
        for (Token token2 : linkedList) {
            token2.appendTo(bitArray, bArr);
        }
        return bitArray;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", HighLevelEncoder.MODE_NAMES[this.mode], Integer.valueOf(this.bitCount), Integer.valueOf(this.binaryShiftByteCount));
    }
}
