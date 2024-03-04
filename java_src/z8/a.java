package z8;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
/* loaded from: classes3.dex */
public class a implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private float f60369a;

    /* renamed from: b  reason: collision with root package name */
    private float f60370b;

    /* renamed from: c  reason: collision with root package name */
    private float f60371c;

    /* renamed from: d  reason: collision with root package name */
    private float f60372d;

    /* renamed from: e  reason: collision with root package name */
    int f60373e = ViewConfiguration.get(BaseApplication.getInstance()).getScaledTouchSlop();

    /* renamed from: f  reason: collision with root package name */
    int f60374f = DensityUtil.dp2px(50.0f);

    /* renamed from: g  reason: collision with root package name */
    int f60375g = BaseApplication.getInstance().getResources().getDisplayMetrics().heightPixels - DensityUtil.dp2px(55.0f);

    /* renamed from: h  reason: collision with root package name */
    private Activity f60376h;

    public void a(Activity activity) {
        this.f60376h = activity;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int action = motionEvent.getAction();
        if (action == 0) {
            boolean z10 = layoutParams instanceof WindowManager.LayoutParams;
            this.f60369a = z10 ? ((WindowManager.LayoutParams) layoutParams).x : view.getX();
            this.f60370b = z10 ? ((WindowManager.LayoutParams) layoutParams).y : view.getY();
            this.f60372d = motionEvent.getRawY();
            this.f60371c = motionEvent.getRawX();
        } else if (action != 1) {
            if (action == 2) {
                float rawX2 = motionEvent.getRawX();
                float rawY2 = motionEvent.getRawY();
                int i9 = (int) (this.f60369a + (rawX2 - this.f60371c));
                int i10 = (int) (this.f60370b + (rawY2 - this.f60372d));
                float height = (BaseApplication.getInstance().getResources().getDisplayMetrics().heightPixels - view.getHeight()) - DensityUtil.dp2px(55.0f);
                int i11 = this.f60374f;
                if (i10 <= i11) {
                    i10 = i11;
                } else if (i10 >= height) {
                    i10 = (int) height;
                }
                if (i9 < DensityUtil.dp2px(8.0f)) {
                    i9 = DensityUtil.dp2px(8.0f);
                } else {
                    int screenWidth = (ScreenTools.getScreenWidth() - DensityUtil.dp2px(8.0f)) - view.getMeasuredWidth();
                    if (i9 > screenWidth) {
                        i9 = screenWidth;
                    }
                }
                boolean z11 = layoutParams instanceof WindowManager.LayoutParams;
                if (z11) {
                    WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) layoutParams;
                    layoutParams2.x = i9;
                    layoutParams2.y = i10;
                } else {
                    view.setX(i9);
                    view.setY(i10);
                }
                Activity activity = this.f60376h;
                if (activity != null && z11) {
                    activity.getWindowManager().updateViewLayout(view, layoutParams);
                } else {
                    view.requestLayout();
                }
            }
        } else if (Math.abs(rawX - this.f60371c) < this.f60373e && Math.abs(rawY - this.f60372d) < this.f60373e) {
            view.performClick();
        }
        return true;
    }
}
