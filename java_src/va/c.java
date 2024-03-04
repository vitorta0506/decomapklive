package va;

import com.guochao.faceshow.aaspring.utils.StringUtils;
import java.math.BigDecimal;
/* loaded from: classes4.dex */
public class c {
    public static String a(Double d10, int i9) {
        try {
            double doubleValue = new BigDecimal(d10.doubleValue()).setScale(i9, 4).doubleValue();
            return StringUtils.convertNumberToNormalNumber(doubleValue + "");
        } catch (Exception unused) {
            return d10 == null ? "" : d10.toString();
        }
    }

    public static String b(Integer num, int i9) {
        try {
            double doubleValue = new BigDecimal(num.intValue()).setScale(i9, 4).doubleValue();
            return StringUtils.convertNumberToNormalNumber(doubleValue + "");
        } catch (Exception unused) {
            return num == null ? "" : num.toString();
        }
    }
}
