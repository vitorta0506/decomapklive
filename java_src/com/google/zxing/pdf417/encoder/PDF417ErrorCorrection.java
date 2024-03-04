package com.google.zxing.pdf417.encoder;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.view.InputDeviceCompat;
import cn.jiguang.android.BuildConfig;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.zxing.WriterException;
import com.google.zxing.pdf417.PDF417Common;
import com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder;
import com.guochao.faceshow.systemassistant.data.ASSISTANT_MSG_TYPE;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import com.tencent.thumbplayer.core.common.TPPixelFormat;
import com.tencent.thumbplayer.core.player.TPNativePlayerInitConfig;
import com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams;
import com.tencent.ugc.UGCTransitionRules;
import com.vk.api.sdk.exceptions.VKApiCodes;
/* loaded from: classes3.dex */
final class PDF417ErrorCorrection {
    private static final int[][] EC_COEFFICIENTS = {new int[]{27, 917}, new int[]{522, 568, 723, 809}, new int[]{237, 308, 436, 284, 646, 653, 428, 379}, new int[]{274, 562, 232, 755, 599, 524, VKApiCodes.CODE_ERROR_VIDEO_COMMENTS_CLOSED, 132, 295, 116, 442, 428, 295, 42, 176, 65}, new int[]{361, 575, 922, 525, 176, 586, 640, 321, 536, 742, 677, 742, 687, 284, 193, 517, 273, 494, TPReportParams.LIVE_STEP_PLAY, 147, 593, 800, 571, 320, 803, 133, 231, 390, 685, 330, 63, 410}, new int[]{539, TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, 6, 93, 862, 771, 453, 106, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 287, 107, 505, 733, 877, 381, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_ID, 723, 476, 462, 172, 430, TypedValues.MotionType.TYPE_POLAR_RELATIVETO, 858, 822, 543, 376, FrameMetricsAggregator.EVERY_DURATION, 400, 672, 762, 283, 184, 440, 35, 519, 31, 460, 594, 225, 535, 517, 352, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 158, 651, 201, 488, 502, 648, 733, 717, 83, 404, 97, 280, 771, 840, 629, 4, 381, 843, 623, 264, 543}, new int[]{521, 310, 864, 547, 858, 580, 296, 379, 53, 779, 897, 444, 400, VKApiCodes.CODE_CHAT_NOT_ADMIN, 749, 415, 822, 93, 217, 208, PDF417Common.MAX_CODEWORDS_IN_BARCODE, TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE, 583, 620, 246, 148, 447, 631, 292, VKApiCodes.CODE_CLEAR_CACHE_REQUESTED2, 490, TypedValues.TransitionType.TYPE_AUTO_TRANSITION, 516, 258, 457, VKApiCodes.CODE_CLEAR_CACHE_REQUESTED, 594, 723, 674, 292, 272, 96, 684, 432, 686, TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO, 860, 569, 193, TPOptionalID.OPTION_ID_BEFORE_BOOL_RELEASE_MEDIA_CODEC_WHEN_SET_SURFACE, 129, 186, 236, 287, 192, 775, 278, 173, 40, 379, 712, 463, 646, 776, 171, 491, 297, 763, 156, 732, 95, 270, 447, 90, 507, 48, 228, 821, 808, 898, 784, 663, 627, 378, 382, 262, 380, TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE, 754, 336, 89, 614, 87, 432, 670, 616, 157, 374, 242, 726, 600, 269, 375, 898, 845, 454, 354, 130, 814, 587, 804, 34, 211, 330, 539, 297, 827, 865, 37, 517, 834, 315, 550, 86, VKApiCodes.CODE_ERROR_VIDEO_COMMENTS_CLOSED, 4, 108, 539}, new int[]{524, 894, 75, 766, 882, 857, 74, 204, 82, 586, 708, 250, TypedValues.Custom.TYPE_DIMENSION, 786, 138, UGCTransitionRules.DEFAULT_IMAGE_WIDTH, 858, TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT, 311, VKApiCodes.CODE_MSG_SEND_TO_MANY_FWDS, 275, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 375, 850, 438, 733, TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT, 280, 201, 280, 828, 757, 710, 814, VKApiCodes.CODE_CHAT_INVITE_MAKE_LINK_DENIED, 89, 68, 569, 11, 204, 796, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 540, VKApiCodes.CODE_MSG_SEND_TO_MANY_FWDS, VKApiCodes.CODE_ERROR_VIDEO_COMMENTS_CLOSED, 700, 799, 137, 439, 418, 592, 668, 353, 859, 370, 694, 325, 240, 216, 257, 284, 549, 209, 884, 315, 70, 329, 793, 490, 274, 877, 162, 749, 812, 684, 461, 334, 376, 849, 521, 307, 291, 803, 712, 19, 358, 399, VKApiCodes.CODE_CLEAR_CACHE_REQUESTED2, 103, FrameMetricsAggregator.EVERY_DURATION, 51, 8, 517, 225, 289, 470, 637, 731, 66, 255, 917, 269, 463, 830, 730, 433, 848, 585, TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE, 538, TypedValues.Custom.TYPE_REFERENCE, 90, 2, BuildConfig.VERSION_CODE, 743, 199, 655, TypedValues.Custom.TYPE_STRING, 329, 49, 802, 580, 355, 588, 188, 462, 10, 134, 628, 320, 479, 130, 739, 71, TPReportParams.LIVE_STEP_PLAY, TypedValues.AttributesType.TYPE_PIVOT_TARGET, 374, 601, 192, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 142, 673, 687, 234, 722, 384, 177, 752, TypedValues.MotionType.TYPE_PATHMOTION_ARC, 640, 455, 193, 689, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, 805, 641, 48, 60, 732, 621, 895, 544, 261, 852, 655, 309, 697, 755, 756, 60, 231, 773, 434, 421, 726, 528, 503, 118, 49, 795, 32, 144, 500, 238, 836, 394, 280, 566, 319, 9, 647, 550, 73, VKApiCodes.CODE_MSG_SEND_MSG_TOO_LONG, 342, 126, 32, 681, 331, 792, 620, 60, TypedValues.MotionType.TYPE_POLAR_RELATIVETO, 441, 180, 791, 893, 754, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 383, 228, 749, 760, TPNativePlayerInitConfig.BOOL_ENABLE_MEDIA_CODEC_REUSE, 54, 297, 134, 54, 834, 299, 922, 191, 910, 532, TypedValues.MotionType.TYPE_POLAR_RELATIVETO, 829, 189, 20, TPPixelFormat.TP_PIX_FMT_MEDIACODEC, 29, 872, 449, 83, 402, 41, 656, 505, 579, 481, 173, 404, 251, 688, 95, 497, 555, 642, 543, 307, 159, VKApiCodes.CODE_MSG_DELETE_FOR_ALL_FAILED, 558, 648, 55, 497, 10}, new int[]{352, 77, 373, 504, 35, 599, 428, 207, 409, 574, 118, 498, 285, 380, 350, 492, 197, 265, 920, 155, VKApiCodes.CODE_MSG_SEND_MSG_TOO_LONG, 299, 229, 643, 294, 871, 306, 88, 87, 193, 352, 781, 846, 75, 327, 520, 435, 543, 203, 666, 249, 346, 781, 621, 640, 268, 794, 534, 539, 781, 408, 390, 644, 102, 476, 499, BuildConfig.VERSION_CODE, 632, 545, 37, 858, 916, 552, 41, 542, 289, 122, 272, 383, 800, 485, 98, 752, 472, 761, 107, 784, 860, 658, 741, BuildConfig.VERSION_CODE, 204, 681, TPNativePlayerInitConfig.BOOL_ENABLE_COLOR_MANAGEMENT, 855, 85, 99, 62, 482, 180, 20, 297, 451, 593, VKApiCodes.CODE_MSG_SEND_TO_MANY_FWDS, 142, 808, 684, 287, 536, 561, 76, 653, 899, 729, 567, 744, 390, InputDeviceCompat.SOURCE_DPAD, 192, 516, 258, 240, 518, 794, 395, 768, 848, 51, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 384, 168, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 826, 328, 596, 786, 303, 570, 381, 415, 641, 156, 237, 151, 429, 531, 207, 676, 710, 89, 168, 304, 402, 40, 708, 575, 162, 864, 229, 65, 861, 841, 512, 164, 477, 221, 92, 358, 785, 288, 357, 850, 836, 827, 736, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, 94, 8, 494, 114, 521, 2, 499, 851, 543, 152, 729, 771, 95, 248, 361, TPCodecParamers.TP_PROFILE_H264_CONSTRAINED_BASELINE, ASSISTANT_MSG_TYPE.TYPE_IMAGE_JUMP_TOPIC, 856, 797, 289, 51, 684, 466, 533, 820, 669, 45, 902, 452, TPPixelFormat.TP_PIX_FMT_MEDIACODEC, 342, TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE, 173, 35, 463, 651, 51, 699, 591, 452, TPCodecParamers.TP_PROFILE_H264_CONSTRAINED_BASELINE, 37, 124, 298, 332, 552, 43, 427, 119, 662, 777, 475, 850, 764, 364, TPCodecParamers.TP_PROFILE_H264_CONSTRAINED_BASELINE, 911, 283, 711, 472, TypedValues.CycleType.TYPE_EASING, 245, 288, 594, 394, FrameMetricsAggregator.EVERY_DURATION, 327, 589, 777, 699, 688, 43, 408, 842, 383, 721, 521, 560, 644, VKApiCodes.CODE_INVITE_LINK_EXPIRED, 559, 62, TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT, 873, 663, VKApiCodes.CODE_INVITE_LINK_AVAILABLE_FOR_CLOSED_GROUPS, 159, 672, 729, 624, 59, 193, 417, 158, 209, 563, 564, 343, 693, 109, TypedValues.MotionType.TYPE_DRAW_PATH, 563, 365, 181, 772, 677, 310, 248, 353, 708, 410, 579, 870, 617, 841, 632, 860, 289, 536, 35, 777, 618, 586, TypedValues.CycleType.TYPE_WAVE_OFFSET, 833, 77, 597, 346, 269, 757, 632, 695, 751, 331, TPCodecParamers.TP_PROFILE_MJPEG_JPEG_LS, 184, 45, 787, 680, 18, 66, TPNativePlayerInitConfig.BOOL_ENABLE_COLOR_MANAGEMENT, 369, 54, 492, 228, 613, 830, 922, 437, 519, 644, TypedValues.Custom.TYPE_DIMENSION, 789, TypedValues.CycleType.TYPE_EASING, 305, 441, 207, 300, 892, 827, 141, 537, 381, 662, InputDeviceCompat.SOURCE_DPAD, 56, 252, FacebookRequestErrorClassification.EC_TOO_MANY_USER_ACTION_CALLS, 242, 797, 838, 837, UGCTransitionRules.DEFAULT_IMAGE_WIDTH, 224, 307, 631, 61, 87, 560, 310, 756, 665, 397, 808, 851, 309, 473, 795, 378, 31, 647, 915, 459, 806, 590, 731, TypedValues.CycleType.TYPE_WAVE_PHASE, 216, 548, 249, 321, 881, 699, 535, 673, 782, 210, 815, TypedValues.Custom.TYPE_DIMENSION, 303, 843, 922, 281, 73, 469, 791, 660, 162, 498, 308, 155, TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, VKApiCodes.CODE_CLEAR_CACHE_REQUESTED, 817, 187, 62, 16, TypedValues.CycleType.TYPE_WAVE_PHASE, 535, 336, 286, 437, 375, 273, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 296, 183, 923, 116, 667, 751, 353, 62, 366, 691, 379, 687, 842, 37, 357, UGCTransitionRules.DEFAULT_IMAGE_WIDTH, 742, 330, 5, 39, 923, 311, TypedValues.CycleType.TYPE_WAVE_OFFSET, 242, 749, 321, 54, 669, TypedValues.AttributesType.TYPE_PATH_ROTATE, 342, 299, 534, 105, 667, 488, 640, 672, 576, 540, TypedValues.AttributesType.TYPE_PATH_ROTATE, 486, 721, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 46, 656, 447, 171, 616, 464, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 531, 297, 321, 762, 752, 533, BaseMessageViewHolder.MAX_SIZE, 134, 14, 381, 433, 717, 45, 111, 20, 596, 284, 736, 138, 646, 411, 877, 669, 141, VKApiCodes.CODE_CHAT_INVITE_MAKE_LINK_DENIED, 45, 780, TPNativePlayerInitConfig.BOOL_ENABLE_COLOR_MANAGEMENT, 164, 332, 899, 165, 726, 600, 325, 498, 655, 357, 752, 768, 223, 849, 647, 63, 310, 863, 251, 366, 304, 282, 738, 675, 410, 389, TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE, 31, 121, 303, TPReportParams.LIVE_STEP_PLAY}};

    private PDF417ErrorCorrection() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String generateErrorCorrection(CharSequence charSequence, int i9) {
        int errorCorrectionCodewordCount = getErrorCorrectionCodewordCount(i9);
        char[] cArr = new char[errorCorrectionCodewordCount];
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = errorCorrectionCodewordCount - 1;
            int charAt = (charSequence.charAt(i10) + cArr[i11]) % PDF417Common.NUMBER_OF_CODEWORDS;
            while (i11 > 0) {
                cArr[i11] = (char) ((cArr[i11 - 1] + (929 - ((EC_COEFFICIENTS[i9][i11] * charAt) % PDF417Common.NUMBER_OF_CODEWORDS))) % PDF417Common.NUMBER_OF_CODEWORDS);
                i11--;
            }
            cArr[0] = (char) ((929 - ((charAt * EC_COEFFICIENTS[i9][0]) % PDF417Common.NUMBER_OF_CODEWORDS)) % PDF417Common.NUMBER_OF_CODEWORDS);
        }
        StringBuilder sb2 = new StringBuilder(errorCorrectionCodewordCount);
        for (int i12 = errorCorrectionCodewordCount - 1; i12 >= 0; i12--) {
            if (cArr[i12] != 0) {
                cArr[i12] = (char) (929 - cArr[i12]);
            }
            sb2.append(cArr[i12]);
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getErrorCorrectionCodewordCount(int i9) {
        if (i9 < 0 || i9 > 8) {
            throw new IllegalArgumentException("Error correction level must be between 0 and 8!");
        }
        return 1 << (i9 + 1);
    }

    static int getRecommendedMinimumErrorCorrectionLevel(int i9) throws WriterException {
        if (i9 > 0) {
            if (i9 <= 40) {
                return 2;
            }
            if (i9 <= 160) {
                return 3;
            }
            if (i9 <= 320) {
                return 4;
            }
            if (i9 <= 863) {
                return 5;
            }
            throw new WriterException("No recommendation possible");
        }
        throw new IllegalArgumentException("n must be > 0");
    }
}
