package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.view.View;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class InputtingViewHolder extends BaseMessageViewHolder {

    /* loaded from: classes3.dex */
    class a implements SVGAParser.ParseCompletion {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f17281a;

        a(SVGAImageView sVGAImageView) {
            this.f17281a = sVGAImageView;
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, this.f17281a, 2.0f);
            this.f17281a.setVideoItem(sVGAVideoEntity);
            this.f17281a.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    public InputtingViewHolder(Context context, View view) {
        super(context, view);
    }

    public void c() {
        SVGAImageView sVGAImageView = (SVGAImageView) getView(R.id.img);
        if (sVGAImageView == null || !sVGAImageView.isAnimating()) {
            return;
        }
        sVGAImageView.stopAnimation();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        SvgaImageViewUtils.getParser().decodeFromInputStream(this.mContext.getResources().openRawResource(R.raw.inputting), "inputting", new a((SVGAImageView) getView(R.id.img)), true);
    }
}
