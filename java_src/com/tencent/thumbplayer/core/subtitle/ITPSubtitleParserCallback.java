package com.tencent.thumbplayer.core.subtitle;

import com.tencent.thumbplayer.core.common.TPSubtitleFrame;
/* loaded from: classes4.dex */
public interface ITPSubtitleParserCallback {
    long onGetCurrentPlayPositionMs();

    void onLoadResult(int i9);

    void onSelectResult(int i9, long j10);

    void onSubtitleError(int i9, int i10);

    void onSubtitleFrame(TPSubtitleFrame tPSubtitleFrame);

    void onSubtitleNote(String str);
}
