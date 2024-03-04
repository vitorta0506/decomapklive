package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.NinePatchDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.BitmapUtils;
import com.guochao.faceshow.aaspring.utils.NinePatchCache;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.Objects;
/* loaded from: classes3.dex */
public class ChatBgView extends FrameLayout implements NinePatchCache.NinePatchCallback {

    /* renamed from: a  reason: collision with root package name */
    Rect f23525a;

    /* renamed from: b  reason: collision with root package name */
    String f23526b;

    public ChatBgView(@NonNull Context context) {
        super(context);
        this.f23525a = new Rect();
        a();
    }

    private void a() {
        setPaddingRelative(DensityUtil.dp2px(8.0f), DensityUtil.dp2px(4.5f), DensityUtil.dp2px(8.0f), DensityUtil.dp2px(4.5f));
    }

    @Override // com.guochao.faceshow.aaspring.utils.NinePatchCache.NinePatchCallback
    public void onFail(int i9, String str) {
    }

    @Override // com.guochao.faceshow.aaspring.utils.NinePatchCache.NinePatchCallback
    public void onGetBitmap(String str, Bitmap bitmap) {
        if (Objects.equals(str, this.f23526b)) {
            byte[] makeNinePatchChunk = BitmapUtils.makeNinePatchChunk(bitmap);
            if (makeNinePatchChunk != null) {
                setBackground(new NinePatchDrawable(getResources(), bitmap, makeNinePatchChunk, this.f23525a, str));
            } else {
                setBackground(new BitmapDrawable(getResources(), bitmap));
            }
        }
    }

    public void setVipChatBg(String str) {
        this.f23526b = str;
        if (TextUtils.isEmpty(str)) {
            setBackgroundResource(R.drawable.vip_chat_bj);
        } else {
            NinePatchCache.getInstance().getNinePatch(str, this);
        }
    }

    public ChatBgView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23525a = new Rect();
        a();
    }

    public ChatBgView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23525a = new Rect();
        a();
    }
}
