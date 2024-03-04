package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
/* loaded from: classes.dex */
public final /* synthetic */ class f {
    static {
        String str = TypedValues.PositionType.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(String str) {
        char c10;
        str.hashCode();
        switch (str.hashCode()) {
            case -1812823328:
                if (str.equals("transitionEasing")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1127236479:
                if (str.equals("percentWidth")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -1017587252:
                if (str.equals("percentHeight")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -827014263:
                if (str.equals("drawPath")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -200259324:
                if (str.equals("sizePercent")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 428090547:
                if (str.equals("percentX")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 428090548:
                if (str.equals("percentY")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                return 501;
            case 1:
                return 503;
            case 2:
                return 504;
            case 3:
                return 502;
            case 4:
                return 505;
            case 5:
                return 506;
            case 6:
                return 507;
            default:
                return -1;
        }
    }

    public static int b(int i9) {
        if (i9 != 100) {
            if (i9 != 101) {
                switch (i9) {
                    case 501:
                    case 502:
                        return 8;
                    case 503:
                    case 504:
                    case 505:
                    case 506:
                    case 507:
                        return 4;
                    case 508:
                        return 2;
                    default:
                        return -1;
                }
            }
            return 8;
        }
        return 2;
    }
}
