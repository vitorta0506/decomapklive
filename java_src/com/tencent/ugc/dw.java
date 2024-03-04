package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditConstants;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dw implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    private static final dw f34878a = new dw();

    private dw() {
    }

    public static Comparator a() {
        return f34878a;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return UGCMediaListSource.lambda$updateSpeedInfoToClips$2((TXVideoEditConstants.TXSpeed) obj, (TXVideoEditConstants.TXSpeed) obj2);
    }
}
