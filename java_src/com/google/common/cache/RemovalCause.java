package com.google.common.cache;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public abstract class RemovalCause {
    public static final RemovalCause EXPLICIT = new a("EXPLICIT", 0);
    public static final RemovalCause REPLACED = new RemovalCause("REPLACED", 1) { // from class: com.google.common.cache.RemovalCause.b
        @Override // com.google.common.cache.RemovalCause
        boolean wasEvicted() {
            return false;
        }
    };
    public static final RemovalCause COLLECTED = new RemovalCause("COLLECTED", 2) { // from class: com.google.common.cache.RemovalCause.c
        @Override // com.google.common.cache.RemovalCause
        boolean wasEvicted() {
            return true;
        }
    };
    public static final RemovalCause EXPIRED = new RemovalCause("EXPIRED", 3) { // from class: com.google.common.cache.RemovalCause.d
        @Override // com.google.common.cache.RemovalCause
        boolean wasEvicted() {
            return true;
        }
    };
    public static final RemovalCause SIZE = new RemovalCause("SIZE", 4) { // from class: com.google.common.cache.RemovalCause.e
        @Override // com.google.common.cache.RemovalCause
        boolean wasEvicted() {
            return true;
        }
    };
    private static final /* synthetic */ RemovalCause[] $VALUES = $values();

    /* loaded from: classes2.dex */
    enum a extends RemovalCause {
        a(String str, int i9) {
            super(str, i9, null);
        }

        @Override // com.google.common.cache.RemovalCause
        boolean wasEvicted() {
            return false;
        }
    }

    private static /* synthetic */ RemovalCause[] $values() {
        return new RemovalCause[]{EXPLICIT, REPLACED, COLLECTED, EXPIRED, SIZE};
    }

    private RemovalCause(String str, int i9) {
    }

    public static RemovalCause valueOf(String str) {
        return (RemovalCause) Enum.valueOf(RemovalCause.class, str);
    }

    public static RemovalCause[] values() {
        return (RemovalCause[]) $VALUES.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean wasEvicted();

    /* synthetic */ RemovalCause(String str, int i9, a aVar) {
        this(str, i9);
    }
}
