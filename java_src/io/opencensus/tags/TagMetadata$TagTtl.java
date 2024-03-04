package io.opencensus.tags;
/* loaded from: classes7.dex */
public enum TagMetadata$TagTtl {
    NO_PROPAGATION(0),
    UNLIMITED_PROPAGATION(-1);
    
    private final int hops;

    TagMetadata$TagTtl(int i9) {
        this.hops = i9;
    }
}
