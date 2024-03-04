package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditConstants;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dv implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    private static final dv f34877a = new dv();

    private dv() {
    }

    public static Comparator a() {
        return f34877a;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return UGCMediaListSource.lambda$cutSingleVideoFileToClips$1((TXVideoEditConstants.TXRepeat) obj, (TXVideoEditConstants.TXRepeat) obj2);
    }
}
