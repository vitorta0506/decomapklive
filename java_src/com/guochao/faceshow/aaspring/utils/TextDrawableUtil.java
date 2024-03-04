package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class TextDrawableUtil {

    /* loaded from: classes3.dex */
    public static abstract class MyRunnable implements Runnable {
        private Drawable drawable;

        public MyRunnable(Drawable drawable) {
            this.drawable = drawable;
        }

        @Override // java.lang.Runnable
        public void run() {
            run(this.drawable);
        }

        public abstract void run(Drawable drawable);
    }

    /* loaded from: classes3.dex */
    public static abstract class UrlThread extends Thread {
        private String url;

        public String getUrl() {
            return this.url;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            run(this.url);
        }

        public abstract void run(String str);

        public void setUrl(String str) {
            this.url = str;
        }
    }

    public static void addDrawableBottom(TextView textView, int i9) {
        Drawable drawable = textView.getContext().getResources().getDrawable(i9);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        textView.setCompoundDrawablesRelative(null, null, null, drawable);
    }

    public static void addDrawableEnd(TextView textView, int i9) {
        Drawable drawable = textView.getContext().getResources().getDrawable(i9);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        textView.setCompoundDrawablesRelative(null, null, drawable, null);
    }

    public static void addDrawableStart(TextView textView, int i9) {
        Drawable drawable = textView.getContext().getResources().getDrawable(i9);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        textView.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public static void addDrawableTop(TextView textView, int i9) {
        Drawable drawable = textView.getContext().getResources().getDrawable(i9);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        textView.setCompoundDrawablesRelative(null, drawable, null, null);
    }

    public static void clearDrawable(TextView textView) {
        textView.setCompoundDrawablesRelative(null, null, null, null);
    }

    public static void drawDownLine(TextView textView) {
        TextPaint paint = textView.getPaint();
        paint.setAntiAlias(true);
        paint.setFlags(8);
    }

    public static void urlToDrawable(Context context, String str, final io.reactivex.r<Drawable> rVar) {
        if ((context instanceof Activity) && ((Activity) context).isDestroyed()) {
            return;
        }
        com.bumptech.glide.c.u(context).r(str).M0(new s0.c<Drawable>() { // from class: com.guochao.faceshow.aaspring.utils.TextDrawableUtil.1
            @Override // s0.k
            public void onLoadCleared(@Nullable @org.jetbrains.annotations.Nullable Drawable drawable) {
            }

            @Override // s0.c, s0.k
            public void onLoadFailed(@Nullable @org.jetbrains.annotations.Nullable Drawable drawable) {
                super.onLoadFailed(drawable);
                io.reactivex.r rVar2 = io.reactivex.r.this;
                if (rVar2 != null) {
                    rVar2.onError(new RuntimeException("Load failed"));
                }
            }

            @Override // s0.k
            public /* bridge */ /* synthetic */ void onResourceReady(@NonNull @NotNull Object obj, @Nullable @org.jetbrains.annotations.Nullable t0.f fVar) {
                onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
            }

            public void onResourceReady(@NonNull @NotNull Drawable drawable, @Nullable @org.jetbrains.annotations.Nullable t0.f<? super Drawable> fVar) {
                io.reactivex.r rVar2 = io.reactivex.r.this;
                if (rVar2 != null) {
                    rVar2.onNext(drawable);
                }
            }
        });
    }
}
