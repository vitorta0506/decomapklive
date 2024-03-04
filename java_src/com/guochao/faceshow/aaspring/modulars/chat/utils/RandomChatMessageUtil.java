package com.guochao.faceshow.aaspring.modulars.chat.utils;

import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0012\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;", "", "()V", "msgArray", "", "getMessage", "", "index", "", "getRandomMessages", AnimatedPasterJsonConfig.CONFIG_COUNT, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RandomChatMessageUtil {
    @NotNull
    public static final RandomChatMessageUtil INSTANCE = new RandomChatMessageUtil();
    @NotNull
    private static final int[] msgArray = {R.string.first_msg_80, R.string.first_msg_81, R.string.first_msg_82, R.string.first_msg_83, R.string.first_msg_84, R.string.first_msg_85, R.string.first_msg_86, R.string.first_msg_87, R.string.first_msg_88, R.string.first_msg_89, R.string.first_msg_90, R.string.first_msg_91, R.string.first_msg_92, R.string.first_msg_93, R.string.first_msg_94, R.string.first_msg_95, R.string.first_msg_96, R.string.first_msg_97, R.string.first_msg_98, R.string.first_msg_99, R.string.first_msg_100, R.string.first_msg_101};

    private RandomChatMessageUtil() {
    }

    @JvmStatic
    @NotNull
    public static final String getMessage(int i9) {
        BaseApplication baseApplication = BaseApplication.getInstance();
        int[] iArr = msgArray;
        String string = baseApplication.getString(iArr[i9 % iArr.length]);
        Intrinsics.checkNotNullExpressionValue(string, "getInstance().getString(…y[index % msgArray.size])");
        return string;
    }

    @JvmStatic
    @NotNull
    public static final int[] getRandomMessages(int i9) {
        int[] copyOfRange;
        if (i9 == 0) {
            i9 = 1;
        } else {
            int[] iArr = msgArray;
            if (i9 >= iArr.length) {
                i9 = iArr.length - 1;
            }
        }
        int[] iArr2 = msgArray;
        int[] copyOf = Arrays.copyOf(iArr2, iArr2.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
        ArraysKt___ArraysKt.shuffle(copyOf);
        copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(copyOf, 0, i9 - 1);
        return copyOfRange;
    }

    public static /* synthetic */ int[] getRandomMessages$default(int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = 5;
        }
        return getRandomMessages(i9);
    }
}
