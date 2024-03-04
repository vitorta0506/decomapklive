package j1;
/* loaded from: classes.dex */
public class b implements i1.a {
    @Override // i1.a
    public String a(int i9) {
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

    @Override // i1.a
    public String b(int i9) {
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

    @Override // i1.a
    public String c(int i9) {
        if (i9 < 1000) {
            i9 += 1000;
        }
        return "" + i9;
    }
}
