package com.guochao.faceshow.aaspring.beans;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/VoiceHasPlayedCustom;", "", "hasPlayed", "", "(I)V", "getHasPlayed", "()I", "setHasPlayed", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceHasPlayedCustom {
    private int hasPlayed;

    public VoiceHasPlayedCustom() {
        this(0, 1, null);
    }

    public VoiceHasPlayedCustom(int i9) {
        this.hasPlayed = i9;
    }

    public final int getHasPlayed() {
        return this.hasPlayed;
    }

    public final void setHasPlayed(int i9) {
        this.hasPlayed = i9;
    }

    public /* synthetic */ VoiceHasPlayedCustom(int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i9);
    }
}
