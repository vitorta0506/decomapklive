package com.tencent.qgame.animplayer.mask;

import android.graphics.Bitmap;
import com.tencent.qgame.animplayer.PointRect;
import com.tencent.qgame.animplayer.RefVec2;
import com.tencent.qgame.animplayer.util.TextureLoadUtil;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B=\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u0012\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005¢\u0006\u0002\u0010\tB\u0005¢\u0006\u0002\u0010\nJ\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0006\u0010\u001e\u001a\u00020\u0017J\b\u0010\u001f\u001a\u00020\u0017H\u0016J\u0006\u0010 \u001a\u00020!J\u0010\u0010\"\u001a\u00020!2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0006\u0010#\u001a\u00020\u0017R(\u0010\f\u001a\u0004\u0018\u00010\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R(\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0013\"\u0004\b\u001a\u0010\u0015¨\u0006$"}, d2 = {"Lcom/tencent/qgame/animplayer/mask/MaskConfig;", "", "bitmap", "Landroid/graphics/Bitmap;", "positionPair", "Lkotlin/Pair;", "Lcom/tencent/qgame/animplayer/PointRect;", "Lcom/tencent/qgame/animplayer/RefVec2;", "texPair", "(Landroid/graphics/Bitmap;Lkotlin/Pair;Lkotlin/Pair;)V", "()V", "value", "alphaMaskBitmap", "getAlphaMaskBitmap", "()Landroid/graphics/Bitmap;", "setAlphaMaskBitmap", "(Landroid/graphics/Bitmap;)V", "maskPositionPair", "getMaskPositionPair", "()Lkotlin/Pair;", "setMaskPositionPair", "(Lkotlin/Pair;)V", "maskTexId", "", "maskTexPair", "getMaskTexPair", "setMaskTexPair", "equals", "", "other", "getMaskTexId", "hashCode", "release", "", "safeSetMaskBitmapAndReleasePre", "updateMaskTex", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class MaskConfig {
    @Nullable
    private Bitmap alphaMaskBitmap;
    @Nullable
    private Pair<PointRect, RefVec2> maskPositionPair;
    private int maskTexId;
    @Nullable
    private Pair<PointRect, RefVec2> maskTexPair;

    public MaskConfig() {
    }

    public MaskConfig(@Nullable Bitmap bitmap, @Nullable Pair<PointRect, RefVec2> pair, @Nullable Pair<PointRect, RefVec2> pair2) {
        this();
        this.maskPositionPair = pair;
        this.maskTexPair = pair2;
        setAlphaMaskBitmap(bitmap);
    }

    private final void setAlphaMaskBitmap(Bitmap bitmap) {
        this.alphaMaskBitmap = bitmap;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof MaskConfig) {
            MaskConfig maskConfig = (MaskConfig) obj;
            if (!Intrinsics.areEqual(this.alphaMaskBitmap, maskConfig.alphaMaskBitmap)) {
                Pair<PointRect, RefVec2> pair = this.maskTexPair;
                PointRect first = pair != null ? pair.getFirst() : null;
                Pair<PointRect, RefVec2> pair2 = maskConfig.maskTexPair;
                if (!Intrinsics.areEqual(first, pair2 != null ? pair2.getFirst() : null)) {
                    Pair<PointRect, RefVec2> pair3 = this.maskTexPair;
                    RefVec2 second = pair3 != null ? pair3.getSecond() : null;
                    Pair<PointRect, RefVec2> pair4 = maskConfig.maskTexPair;
                    if (!Intrinsics.areEqual(second, pair4 != null ? pair4.getSecond() : null)) {
                        Pair<PointRect, RefVec2> pair5 = this.maskPositionPair;
                        PointRect first2 = pair5 != null ? pair5.getFirst() : null;
                        Pair<PointRect, RefVec2> pair6 = maskConfig.maskPositionPair;
                        if (!Intrinsics.areEqual(first2, pair6 != null ? pair6.getFirst() : null)) {
                            Pair<PointRect, RefVec2> pair7 = this.maskPositionPair;
                            RefVec2 second2 = pair7 != null ? pair7.getSecond() : null;
                            Pair<PointRect, RefVec2> pair8 = maskConfig.maskPositionPair;
                            if (!Intrinsics.areEqual(second2, pair8 != null ? pair8.getSecond() : null)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Nullable
    public final Bitmap getAlphaMaskBitmap() {
        return this.alphaMaskBitmap;
    }

    @Nullable
    public final Pair<PointRect, RefVec2> getMaskPositionPair() {
        return this.maskPositionPair;
    }

    public final int getMaskTexId() {
        return this.maskTexId;
    }

    @Nullable
    public final Pair<PointRect, RefVec2> getMaskTexPair() {
        return this.maskTexPair;
    }

    public int hashCode() {
        Bitmap bitmap = this.alphaMaskBitmap;
        int hashCode = (bitmap != null ? bitmap.hashCode() : 0) * 31;
        Pair<PointRect, RefVec2> pair = this.maskTexPair;
        int hashCode2 = (hashCode + (pair != null ? pair.hashCode() : 0)) * 31;
        Pair<PointRect, RefVec2> pair2 = this.maskPositionPair;
        return hashCode2 + (pair2 != null ? pair2.hashCode() : 0);
    }

    public final void release() {
        setAlphaMaskBitmap(null);
        this.maskTexPair = null;
        this.maskPositionPair = null;
    }

    public final void safeSetMaskBitmapAndReleasePre(@Nullable Bitmap bitmap) {
        int i9 = this.maskTexId;
        if (i9 > 0) {
            TextureLoadUtil.INSTANCE.releaseTexure(i9);
            this.maskTexId = 0;
        }
        setAlphaMaskBitmap(bitmap);
    }

    public final void setMaskPositionPair(@Nullable Pair<PointRect, RefVec2> pair) {
        this.maskPositionPair = pair;
    }

    public final void setMaskTexPair(@Nullable Pair<PointRect, RefVec2> pair) {
        this.maskTexPair = pair;
    }

    public final int updateMaskTex() {
        int loadTexture = TextureLoadUtil.INSTANCE.loadTexture(this.alphaMaskBitmap);
        this.maskTexId = loadTexture;
        return loadTexture;
    }
}
