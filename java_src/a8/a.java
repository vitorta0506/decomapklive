package a8;

import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f708a;

    /* renamed from: b  reason: collision with root package name */
    private List<ConversationInfo> f709b;

    public a(boolean z10, List<ConversationInfo> list) {
        this.f708a = z10;
        this.f709b = list;
        try {
            Collections.sort(list);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public List<ConversationInfo> a() {
        return this.f709b;
    }

    public boolean b() {
        return this.f708a;
    }
}
