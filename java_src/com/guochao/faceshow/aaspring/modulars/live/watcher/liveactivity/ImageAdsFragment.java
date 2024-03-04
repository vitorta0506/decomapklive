package com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.web.WebViewActivity;
/* loaded from: classes3.dex */
public class ImageAdsFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private String f20069a;

    /* renamed from: b  reason: collision with root package name */
    private String f20070b;

    /* renamed from: c  reason: collision with root package name */
    private int f20071c;

    /* renamed from: d  reason: collision with root package name */
    private String f20072d;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ImageAdsFragment.this.getContext() == null) {
                return;
            }
            new PostRequest("api/appactivity/udpateClickLog").v("type", 2).v("activityDialogId", Integer.valueOf(ImageAdsFragment.this.f20071c)).L();
            Intent intent = new Intent(ImageAdsFragment.this.getContext(), WebViewActivity.class);
            intent.putExtra("url", ImageAdsFragment.this.f20070b);
            ImageAdsFragment.this.getContext().startActivity(intent);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_image_ads;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getArguments() != null) {
            this.f20069a = getArguments().getString("url");
            this.f20070b = getArguments().getString("clickUrl");
            this.f20071c = getArguments().getInt("id");
            String string = getArguments().getString(ShareInternalUtility.STAGING_PARAM);
            this.f20072d = string;
            if (TextUtils.isEmpty(string)) {
                hc.a.j((ImageView) view, this.f20069a);
            } else {
                Bitmap decodeFile = BitmapFactory.decodeFile(this.f20072d);
                if (decodeFile != null) {
                    ((ImageView) view).setImageBitmap(decodeFile);
                } else {
                    hc.a.j((ImageView) view, this.f20069a);
                }
            }
            view.setOnClickListener(new a());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }
}
