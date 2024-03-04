package ga;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.guochao.faceshow.aaspring.modulars.ugc.zxing.view.ViewfinderView;
/* loaded from: classes3.dex */
public class a implements ResultPointCallback {

    /* renamed from: a  reason: collision with root package name */
    private final ViewfinderView f39975a;

    public a(ViewfinderView viewfinderView) {
        this.f39975a = viewfinderView;
    }

    @Override // com.google.zxing.ResultPointCallback
    public void foundPossibleResultPoint(ResultPoint resultPoint) {
        this.f39975a.d(resultPoint);
    }
}
