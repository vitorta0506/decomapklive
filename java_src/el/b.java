package el;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.util.io.pem.PemGenerationException;
/* loaded from: classes7.dex */
public class b implements c {

    /* renamed from: d  reason: collision with root package name */
    private static final List f39502d = Collections.unmodifiableList(new ArrayList());

    /* renamed from: a  reason: collision with root package name */
    private String f39503a;

    /* renamed from: b  reason: collision with root package name */
    private List f39504b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f39505c;

    public b(String str, List list, byte[] bArr) {
        this.f39503a = str;
        this.f39504b = Collections.unmodifiableList(list);
        this.f39505c = bArr;
    }

    public b(String str, byte[] bArr) {
        this(str, f39502d, bArr);
    }

    @Override // el.c
    public b a() throws PemGenerationException {
        return this;
    }

    public byte[] b() {
        return this.f39505c;
    }

    public List c() {
        return this.f39504b;
    }

    public String d() {
        return this.f39503a;
    }
}
