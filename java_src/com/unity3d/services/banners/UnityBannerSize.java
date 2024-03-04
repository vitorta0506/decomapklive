package com.unity3d.services.banners;

import android.content.Context;
import android.content.res.Resources;
import com.unity3d.services.core.misc.ViewUtilities;
/* loaded from: classes4.dex */
public class UnityBannerSize {
    private int height;
    private int width;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.unity3d.services.banners.UnityBannerSize$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize;

        static {
            int[] iArr = new int[BannerSize.values().length];
            $SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize = iArr;
            try {
                iArr[BannerSize.BANNER_SIZE_STANDARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize[BannerSize.BANNER_SIZE_LEADERBOARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize[BannerSize.BANNER_SIZE_IAB_STANDARD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes4.dex */
    private enum BannerSize {
        BANNER_SIZE_STANDARD,
        BANNER_SIZE_LEADERBOARD,
        BANNER_SIZE_IAB_STANDARD,
        BANNER_SIZE_DYNAMIC;
        
        private static final int IAB_STANDARD_HEIGHT = 60;
        private static final int IAB_STANDARD_WIDTH = 468;
        private static final int LEADERBOARD_HEIGHT = 90;
        private static final int LEADERBOARD_WIDTH = 728;
        private static final int STANDARD_HEIGHT = 50;
        private static final int STANDARD_WIDTH = 320;

        /* JADX INFO: Access modifiers changed from: private */
        public int getHeight(Context context) {
            int i9 = AnonymousClass1.$SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize[getNonDynamicSize(context).ordinal()];
            if (i9 != 2) {
                return i9 != 3 ? 50 : 60;
            }
            return 90;
        }

        private BannerSize getNonDynamicSize(Context context) {
            if (this == BANNER_SIZE_DYNAMIC) {
                int round = Math.round(ViewUtilities.dpFromPx(context, Resources.getSystem().getDisplayMetrics().widthPixels));
                if (round >= LEADERBOARD_WIDTH) {
                    return BANNER_SIZE_LEADERBOARD;
                }
                if (round >= IAB_STANDARD_WIDTH) {
                    return BANNER_SIZE_IAB_STANDARD;
                }
                return BANNER_SIZE_STANDARD;
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getWidth(Context context) {
            int i9 = AnonymousClass1.$SwitchMap$com$unity3d$services$banners$UnityBannerSize$BannerSize[getNonDynamicSize(context).ordinal()];
            return i9 != 2 ? i9 != 3 ? STANDARD_WIDTH : IAB_STANDARD_WIDTH : LEADERBOARD_WIDTH;
        }
    }

    public UnityBannerSize(int i9, int i10) {
        this.width = i9;
        this.height = i10;
    }

    public static UnityBannerSize getDynamicSize(Context context) {
        BannerSize bannerSize = BannerSize.BANNER_SIZE_DYNAMIC;
        return new UnityBannerSize(bannerSize.getWidth(context), bannerSize.getHeight(context));
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }
}
