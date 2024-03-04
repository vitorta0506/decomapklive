package org.threeten.bp.format;
/* loaded from: classes7.dex */
public enum SignStyle {
    NORMAL,
    ALWAYS,
    NEVER,
    NOT_NEGATIVE,
    EXCEEDS_PAD;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean parse(boolean z10, boolean z11, boolean z12) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return (z10 && z11) ? false : true;
        } else if (ordinal == 1 || ordinal == 4) {
            return true;
        } else {
            return (z11 || z12) ? false : true;
        }
    }
}
