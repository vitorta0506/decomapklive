package com.google.thirdparty.publicsuffix;
/* loaded from: classes3.dex */
public enum PublicSuffixType {
    PRIVATE(':', ','),
    REGISTRY('!', '?');
    
    private final char innerNodeCode;
    private final char leafNodeCode;

    PublicSuffixType(char c10, char c11) {
        this.innerNodeCode = c10;
        this.leafNodeCode = c11;
    }

    static PublicSuffixType fromCode(char c10) {
        PublicSuffixType[] values;
        for (PublicSuffixType publicSuffixType : values()) {
            if (publicSuffixType.getInnerNodeCode() == c10 || publicSuffixType.getLeafNodeCode() == c10) {
                return publicSuffixType;
            }
        }
        StringBuilder sb2 = new StringBuilder(38);
        sb2.append("No enum corresponding to given code: ");
        sb2.append(c10);
        throw new IllegalArgumentException(sb2.toString());
    }

    char getInnerNodeCode() {
        return this.innerNodeCode;
    }

    char getLeafNodeCode() {
        return this.leafNodeCode;
    }
}
