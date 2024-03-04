package com.guochao.faceshow.aaspring.utils;

import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class SvgaHelper {

    /* loaded from: classes3.dex */
    public interface CallBack {
        void onError();
    }

    public static void playAnim(final SVGAImageView sVGAImageView, File file, final CallBack callBack) {
        if (sVGAImageView == null || sVGAImageView.getContext() == null) {
            return;
        }
        try {
            SvgaImageViewUtils.getParser().decodeFromInputStream(new FileInputStream(file), file.getName(), new SVGAParser.ParseCompletion() { // from class: com.guochao.faceshow.aaspring.utils.SvgaHelper.1
                @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
                public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
                    SvgaImageViewUtils.fitScreenWidth(sVGAVideoEntity, SVGAImageView.this);
                    SVGAImageView.this.setVideoItem(sVGAVideoEntity);
                    SVGAImageView.this.setLoops(1);
                    SVGAImageView.this.setVisibility(0);
                    SVGAImageView.this.startAnimation();
                }

                @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
                public void onError() {
                    CallBack callBack2 = callBack;
                    if (callBack2 != null) {
                        callBack2.onError();
                    }
                }
            }, true);
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            if (callBack != null) {
                callBack.onError();
            }
        }
    }
}
