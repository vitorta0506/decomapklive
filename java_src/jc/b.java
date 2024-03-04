package jc;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.a0;
import com.guochao.faceshow.utils.DensityUtil;
import java.security.MessageDigest;
import java.util.Objects;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes4.dex */
public class b extends gi.a {

    /* renamed from: b  reason: collision with root package name */
    private boolean f53195b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f53196c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f53197d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f53198e;

    /* renamed from: f  reason: collision with root package name */
    private float f53199f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f53200g;

    /* renamed from: h  reason: collision with root package name */
    private f f53201h;

    public b() {
        this(true, true, false, false, DensityUtil.dp2px(7.0f));
    }

    private String b() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("com.image.glide.transform.CornerBitmapTransform_3");
        sb2.append(this.f53197d ? "bt1" : "bt0");
        sb2.append(this.f53198e ? "br1" : "br0");
        sb2.append(this.f53195b ? "tl1" : "tl0");
        sb2.append(this.f53196c ? "tr1" : "tr0");
        sb2.append("_");
        sb2.append(this.f53199f);
        f fVar = this.f53201h;
        sb2.append(fVar != null ? fVar.toString() : "blur0");
        sb2.append(this.f53200g ? "cc1" : "cc0");
        return sb2.toString();
    }

    private Path c(int i9, int i10) {
        Path path = new Path();
        float[] fArr = new float[8];
        float f10 = this.f53199f;
        if (this.f53195b) {
            fArr[0] = f10;
            fArr[1] = f10;
        }
        if (this.f53196c) {
            fArr[2] = f10;
            fArr[3] = f10;
        }
        if (this.f53198e) {
            fArr[4] = f10;
            fArr[5] = f10;
        }
        if (this.f53197d) {
            fArr[6] = f10;
            fArr[7] = f10;
        }
        path.addRoundRect(new RectF(0.0f, 0.0f, i9, i10), fArr, Path.Direction.CW);
        return path;
    }

    @Override // gi.a
    protected Bitmap a(@NonNull @NotNull Context context, @NonNull @NotNull g0.d dVar, @NonNull @NotNull Bitmap bitmap, int i9, int i10) {
        if (this.f53200g) {
            bitmap = a0.b(dVar, bitmap, i9, i10);
        }
        Bitmap bitmap2 = bitmap;
        f fVar = this.f53201h;
        if (fVar != null) {
            bitmap2 = fVar.a(context, dVar, bitmap2, i9, i10);
            int i11 = this.f53201h.f53209h;
            if (i11 > 1) {
                bitmap2 = Bitmap.createScaledBitmap(bitmap2, i11 * bitmap2.getWidth(), this.f53201h.f53209h * bitmap2.getHeight(), false);
            }
        }
        Bitmap d10 = dVar.d(bitmap2.getWidth(), bitmap2.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(d10);
        canvas.clipPath(c(i9, i10));
        canvas.drawBitmap(bitmap2, new Matrix(), null);
        return d10;
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        return (obj instanceof b) && ((b) obj).hashCode() == hashCode();
    }

    @Override // e0.b
    public int hashCode() {
        return Objects.hash(b());
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull @NotNull MessageDigest messageDigest) {
        messageDigest.update(b().getBytes());
        f fVar = this.f53201h;
        if (fVar != null) {
            fVar.updateDiskCacheKey(messageDigest);
        }
    }

    public b(boolean z10, boolean z11, boolean z12, boolean z13, float f10) {
        this.f53200g = true;
        this.f53195b = z10;
        this.f53196c = z11;
        this.f53197d = z12;
        this.f53198e = z13;
        this.f53199f = f10;
    }
}
