package com.google.zxing.oned.rss;
/* loaded from: classes3.dex */
public class DataCharacter {
    private final int checksumPortion;
    private final int value;

    public DataCharacter(int i9, int i10) {
        this.value = i9;
        this.checksumPortion = i10;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DataCharacter) {
            DataCharacter dataCharacter = (DataCharacter) obj;
            return this.value == dataCharacter.value && this.checksumPortion == dataCharacter.checksumPortion;
        }
        return false;
    }

    public final int getChecksumPortion() {
        return this.checksumPortion;
    }

    public final int getValue() {
        return this.value;
    }

    public final int hashCode() {
        return this.value ^ this.checksumPortion;
    }

    public final String toString() {
        return this.value + "(" + this.checksumPortion + ')';
    }
}
