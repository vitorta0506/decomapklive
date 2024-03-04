package j1;

import i1.i;
/* loaded from: classes.dex */
public class c implements i {
    @Override // i1.i
    public String formatHour(int i9) {
        StringBuilder sb2;
        String str;
        if (i9 < 10) {
            sb2 = new StringBuilder();
            str = "0";
        } else {
            sb2 = new StringBuilder();
            str = "";
        }
        sb2.append(str);
        sb2.append(i9);
        return sb2.toString();
    }

    @Override // i1.i
    public String formatMinute(int i9) {
        StringBuilder sb2;
        String str;
        if (i9 < 10) {
            sb2 = new StringBuilder();
            str = "0";
        } else {
            sb2 = new StringBuilder();
            str = "";
        }
        sb2.append(str);
        sb2.append(i9);
        return sb2.toString();
    }

    @Override // i1.i
    public String formatSecond(int i9) {
        StringBuilder sb2;
        String str;
        if (i9 < 10) {
            sb2 = new StringBuilder();
            str = "0";
        } else {
            sb2 = new StringBuilder();
            str = "";
        }
        sb2.append(str);
        sb2.append(i9);
        return sb2.toString();
    }
}
