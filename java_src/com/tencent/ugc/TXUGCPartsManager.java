package com.tencent.ugc;

import java.util.List;
/* loaded from: classes4.dex */
public interface TXUGCPartsManager {
    void addClipInfo(PartInfo partInfo);

    void deleteAllParts();

    void deleteLastPart();

    void deletePart(int i9);

    int getDuration();

    List<String> getPartsPathList();

    void insertPart(String str, int i9);
}
