package com.squareup.picasso;
/* loaded from: classes4.dex */
public enum MemoryPolicy {
    NO_CACHE(1),
    NO_STORE(2);
    
    final int index;

    MemoryPolicy(int i9) {
        this.index = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean shouldReadFromMemoryCache(int i9) {
        return (i9 & NO_CACHE.index) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean shouldWriteToMemoryCache(int i9) {
        return (i9 & NO_STORE.index) == 0;
    }
}
