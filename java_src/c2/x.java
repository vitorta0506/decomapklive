package c2;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.util.l0;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class x {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f1570c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a  reason: collision with root package name */
    public int f1571a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f1572b = -1;

    private boolean b(String str) {
        Matcher matcher = f1570c.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt((String) l0.j(matcher.group(1)), 16);
                int parseInt2 = Integer.parseInt((String) l0.j(matcher.group(2)), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.f1571a = parseInt;
                    this.f1572b = parseInt2;
                    return true;
                }
                return false;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return false;
    }

    public boolean a() {
        return (this.f1571a == -1 || this.f1572b == -1) ? false : true;
    }

    public boolean c(Metadata metadata) {
        for (int i9 = 0; i9 < metadata.d(); i9++) {
            Metadata.Entry c10 = metadata.c(i9);
            if (c10 instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) c10;
                if ("iTunSMPB".equals(commentFrame.description) && b(commentFrame.text)) {
                    return true;
                }
            } else if (c10 instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) c10;
                if ("com.apple.iTunes".equals(internalFrame.domain) && "iTunSMPB".equals(internalFrame.description) && b(internalFrame.text)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public boolean d(int i9) {
        int i10 = i9 >> 12;
        int i11 = i9 & 4095;
        if (i10 > 0 || i11 > 0) {
            this.f1571a = i10;
            this.f1572b = i11;
            return true;
        }
        return false;
    }
}
