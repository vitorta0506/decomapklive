package com.twitter.sdk.android.core.internal;

import android.text.TextUtils;
import com.twitter.sdk.android.core.models.User;
/* loaded from: classes4.dex */
public final class UserUtils {

    /* loaded from: classes4.dex */
    public enum AvatarSize {
        NORMAL("_normal"),
        BIGGER("_bigger"),
        MINI("_mini"),
        ORIGINAL("_original"),
        REASONABLY_SMALL("_reasonably_small");
        
        private final String suffix;

        AvatarSize(String str) {
            this.suffix = str;
        }

        String getSuffix() {
            return this.suffix;
        }
    }

    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f35154a;

        static {
            int[] iArr = new int[AvatarSize.values().length];
            f35154a = iArr;
            try {
                iArr[AvatarSize.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35154a[AvatarSize.BIGGER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35154a[AvatarSize.MINI.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f35154a[AvatarSize.ORIGINAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f35154a[AvatarSize.REASONABLY_SMALL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static CharSequence a(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return "";
        }
        if (charSequence.charAt(0) == '@') {
            return charSequence;
        }
        return "@" + ((Object) charSequence);
    }

    public static String b(User user, AvatarSize avatarSize) {
        String str;
        if (user == null || (str = user.profileImageUrlHttps) == null) {
            return null;
        }
        if (avatarSize == null || str == null) {
            return str;
        }
        int i9 = a.f35154a[avatarSize.ordinal()];
        return (i9 == 1 || i9 == 2 || i9 == 3 || i9 == 4 || i9 == 5) ? str.replace(AvatarSize.NORMAL.getSuffix(), avatarSize.getSuffix()) : str;
    }
}
