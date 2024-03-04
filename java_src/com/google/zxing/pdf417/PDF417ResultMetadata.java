package com.google.zxing.pdf417;
/* loaded from: classes3.dex */
public final class PDF417ResultMetadata {
    private String addressee;
    private String fileId;
    private String fileName;
    private boolean lastSegment;
    private int[] optionalData;
    private int segmentIndex;
    private String sender;
    private int segmentCount = -1;
    private long fileSize = -1;
    private long timestamp = -1;
    private int checksum = -1;

    public String getAddressee() {
        return this.addressee;
    }

    public int getChecksum() {
        return this.checksum;
    }

    public String getFileId() {
        return this.fileId;
    }

    public String getFileName() {
        return this.fileName;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    @Deprecated
    public int[] getOptionalData() {
        return this.optionalData;
    }

    public int getSegmentCount() {
        return this.segmentCount;
    }

    public int getSegmentIndex() {
        return this.segmentIndex;
    }

    public String getSender() {
        return this.sender;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public boolean isLastSegment() {
        return this.lastSegment;
    }

    public void setAddressee(String str) {
        this.addressee = str;
    }

    public void setChecksum(int i9) {
        this.checksum = i9;
    }

    public void setFileId(String str) {
        this.fileId = str;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setFileSize(long j10) {
        this.fileSize = j10;
    }

    public void setLastSegment(boolean z10) {
        this.lastSegment = z10;
    }

    @Deprecated
    public void setOptionalData(int[] iArr) {
        this.optionalData = iArr;
    }

    public void setSegmentCount(int i9) {
        this.segmentCount = i9;
    }

    public void setSegmentIndex(int i9) {
        this.segmentIndex = i9;
    }

    public void setSender(String str) {
        this.sender = str;
    }

    public void setTimestamp(long j10) {
        this.timestamp = j10;
    }
}
