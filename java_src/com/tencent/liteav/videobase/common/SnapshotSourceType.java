package com.tencent.liteav.videobase.common;
/* loaded from: classes4.dex */
public enum SnapshotSourceType {
    STREAM(0),
    VIEW(1);
    

    /* renamed from: c  reason: collision with root package name */
    private static final SnapshotSourceType[] f31787c = values();
    private final int mValue;

    SnapshotSourceType(int i9) {
        this.mValue = i9;
    }

    public static SnapshotSourceType a(int i9) {
        SnapshotSourceType[] snapshotSourceTypeArr;
        for (SnapshotSourceType snapshotSourceType : f31787c) {
            if (i9 == snapshotSourceType.mValue) {
                return snapshotSourceType;
            }
        }
        return VIEW;
    }
}
