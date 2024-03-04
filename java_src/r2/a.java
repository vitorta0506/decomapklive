package r2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyInfo;
import com.google.common.base.c;
import com.google.common.base.e;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import o2.d;
import o2.f;
/* loaded from: classes.dex */
public final class a extends f {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f57388c = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: a  reason: collision with root package name */
    private final CharsetDecoder f57389a = e.f12356c.newDecoder();

    /* renamed from: b  reason: collision with root package name */
    private final CharsetDecoder f57390b = e.f12355b.newDecoder();

    @Nullable
    private String c(ByteBuffer byteBuffer) {
        try {
            return this.f57389a.decode(byteBuffer).toString();
        } catch (CharacterCodingException unused) {
            try {
                return this.f57390b.decode(byteBuffer).toString();
            } catch (CharacterCodingException unused2) {
                return null;
            } finally {
                this.f57390b.reset();
                byteBuffer.rewind();
            }
        } finally {
            this.f57389a.reset();
            byteBuffer.rewind();
        }
    }

    @Override // o2.f
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        String c10 = c(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (c10 == null) {
            return new Metadata(new IcyInfo(bArr, null, null));
        }
        Matcher matcher = f57388c.matcher(c10);
        String str2 = null;
        for (int i9 = 0; matcher.find(i9); i9 = matcher.end()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            if (group != null) {
                String f10 = c.f(group);
                f10.hashCode();
                if (f10.equals("streamurl")) {
                    str2 = group2;
                } else if (f10.equals("streamtitle")) {
                    str = group2;
                }
            }
        }
        return new Metadata(new IcyInfo(bArr, str, str2));
    }
}
