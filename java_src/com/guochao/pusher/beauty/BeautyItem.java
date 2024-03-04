package com.guochao.pusher.beauty;

import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Ba\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u000eJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u000bHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u000bHÀ\u0003¢\u0006\u0002\b(Jg\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010-\u001a\u00020\u0003HÖ\u0001J\t\u0010.\u001a\u00020\u000bHÖ\u0001R\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u0016\u0010\r\u001a\u0004\u0018\u00010\u000bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0010¨\u0006/"}, d2 = {"Lcom/guochao/pusher/beauty/BeautyItem;", "", RemoteMessageConst.Notification.ICON, "", "minValue", "", "maxValue", "defaultValue", "currentValue", "displayName", "effectKey", "", "effectRes", "id", "(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCurrentValue", "()F", "setCurrentValue", "(F)V", "getDefaultValue", "getDisplayName", "()I", "setDisplayName", "(I)V", "getEffectKey", "()Ljava/lang/String;", "getEffectRes", "getIcon", "getId$lib_pusher_and_player_release", "getMaxValue", "getMinValue", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component9$lib_pusher_and_player_release", "copy", "equals", "", "other", "hashCode", "toString", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BeautyItem {
    private float currentValue;
    private final float defaultValue;
    private int displayName;
    @NotNull
    private final String effectKey;
    @Nullable
    private final String effectRes;
    private final int icon;
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final String f27158id;
    private final float maxValue;
    private final float minValue;

    public BeautyItem(int i9, float f10, float f11, float f12, float f13, int i10, @NotNull String effectKey, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(effectKey, "effectKey");
        this.icon = i9;
        this.minValue = f10;
        this.maxValue = f11;
        this.defaultValue = f12;
        this.currentValue = f13;
        this.displayName = i10;
        this.effectKey = effectKey;
        this.effectRes = str;
        this.f27158id = str2;
    }

    public final int component1() {
        return this.icon;
    }

    public final float component2() {
        return this.minValue;
    }

    public final float component3() {
        return this.maxValue;
    }

    public final float component4() {
        return this.defaultValue;
    }

    public final float component5() {
        return this.currentValue;
    }

    public final int component6() {
        return this.displayName;
    }

    @NotNull
    public final String component7() {
        return this.effectKey;
    }

    @Nullable
    public final String component8() {
        return this.effectRes;
    }

    @Nullable
    public final String component9$lib_pusher_and_player_release() {
        return this.f27158id;
    }

    @NotNull
    public final BeautyItem copy(int i9, float f10, float f11, float f12, float f13, int i10, @NotNull String effectKey, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(effectKey, "effectKey");
        return new BeautyItem(i9, f10, f11, f12, f13, i10, effectKey, str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BeautyItem) {
            BeautyItem beautyItem = (BeautyItem) obj;
            return this.icon == beautyItem.icon && Intrinsics.areEqual((Object) Float.valueOf(this.minValue), (Object) Float.valueOf(beautyItem.minValue)) && Intrinsics.areEqual((Object) Float.valueOf(this.maxValue), (Object) Float.valueOf(beautyItem.maxValue)) && Intrinsics.areEqual((Object) Float.valueOf(this.defaultValue), (Object) Float.valueOf(beautyItem.defaultValue)) && Intrinsics.areEqual((Object) Float.valueOf(this.currentValue), (Object) Float.valueOf(beautyItem.currentValue)) && this.displayName == beautyItem.displayName && Intrinsics.areEqual(this.effectKey, beautyItem.effectKey) && Intrinsics.areEqual(this.effectRes, beautyItem.effectRes) && Intrinsics.areEqual(this.f27158id, beautyItem.f27158id);
        }
        return false;
    }

    public final float getCurrentValue() {
        return this.currentValue;
    }

    public final float getDefaultValue() {
        return this.defaultValue;
    }

    public final int getDisplayName() {
        return this.displayName;
    }

    @NotNull
    public final String getEffectKey() {
        return this.effectKey;
    }

    @Nullable
    public final String getEffectRes() {
        return this.effectRes;
    }

    public final int getIcon() {
        return this.icon;
    }

    @Nullable
    public final String getId$lib_pusher_and_player_release() {
        return this.f27158id;
    }

    public final float getMaxValue() {
        return this.maxValue;
    }

    public final float getMinValue() {
        return this.minValue;
    }

    public int hashCode() {
        int floatToIntBits = ((((((((((((this.icon * 31) + Float.floatToIntBits(this.minValue)) * 31) + Float.floatToIntBits(this.maxValue)) * 31) + Float.floatToIntBits(this.defaultValue)) * 31) + Float.floatToIntBits(this.currentValue)) * 31) + this.displayName) * 31) + this.effectKey.hashCode()) * 31;
        String str = this.effectRes;
        int hashCode = (floatToIntBits + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f27158id;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setCurrentValue(float f10) {
        this.currentValue = f10;
    }

    public final void setDisplayName(int i9) {
        this.displayName = i9;
    }

    @NotNull
    public String toString() {
        return "BeautyItem(icon=" + this.icon + ", minValue=" + this.minValue + ", maxValue=" + this.maxValue + ", defaultValue=" + this.defaultValue + ", currentValue=" + this.currentValue + ", displayName=" + this.displayName + ", effectKey=" + this.effectKey + ", effectRes=" + this.effectRes + ", id=" + this.f27158id + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ BeautyItem(int r14, float r15, float r16, float r17, float r18, int r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, int r23, kotlin.jvm.internal.DefaultConstructorMarker r24) {
        /*
            r13 = this;
            r0 = r23
            r1 = r0 & 1
            r2 = 0
            if (r1 == 0) goto L9
            r4 = 0
            goto La
        L9:
            r4 = r14
        La:
            r1 = r0 & 2
            r3 = 0
            if (r1 == 0) goto L11
            r5 = 0
            goto L12
        L11:
            r5 = r15
        L12:
            r1 = r0 & 4
            if (r1 == 0) goto L1b
            r1 = 1120403456(0x42c80000, float:100.0)
            r6 = 1120403456(0x42c80000, float:100.0)
            goto L1d
        L1b:
            r6 = r16
        L1d:
            r1 = r0 & 8
            if (r1 == 0) goto L23
            r7 = 0
            goto L25
        L23:
            r7 = r17
        L25:
            r1 = r0 & 16
            if (r1 == 0) goto L2b
            r8 = r7
            goto L2d
        L2b:
            r8 = r18
        L2d:
            r1 = r0 & 32
            if (r1 == 0) goto L33
            r9 = 0
            goto L35
        L33:
            r9 = r19
        L35:
            r1 = r0 & 128(0x80, float:1.8E-43)
            r2 = 0
            if (r1 == 0) goto L3c
            r11 = r2
            goto L3e
        L3c:
            r11 = r21
        L3e:
            r0 = r0 & 256(0x100, float:3.59E-43)
            if (r0 == 0) goto L44
            r12 = r2
            goto L46
        L44:
            r12 = r22
        L46:
            r3 = r13
            r10 = r20
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.pusher.beauty.BeautyItem.<init>(int, float, float, float, float, int, java.lang.String, java.lang.String, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
