package com.guochao.faceshow.utils;

import android.content.Context;
import android.text.Html;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.guochao.faceshow.views.SwipeListLayout;
/* loaded from: classes4.dex */
public class AAViewHolder {
    private View mConvertView;
    private int mPosition;
    private SparseArray<View> mViews = new SparseArray<>();

    public AAViewHolder(Context context, ViewGroup viewGroup, int i9, int i10) {
        this.mPosition = i10;
        View inflate = LayoutInflater.from(context).inflate(i9, viewGroup, false);
        this.mConvertView = inflate;
        inflate.setTag(this);
    }

    public static AAViewHolder get(Context context, View view, ViewGroup viewGroup, int i9, int i10, boolean z10) {
        if (view != null && !z10) {
            try {
                AAViewHolder aAViewHolder = (AAViewHolder) view.getTag();
                aAViewHolder.mPosition = i10;
                return aAViewHolder;
            } catch (Exception e10) {
                e10.printStackTrace();
                return new AAViewHolder(context, viewGroup, i9, i10);
            }
        }
        return new AAViewHolder(context, viewGroup, i9, i10);
    }

    public Button getBtn(int i9) {
        return (Button) getView(i9);
    }

    public CheckBox getCheckBox(int i9) {
        return (CheckBox) getView(i9);
    }

    public View getConvertView() {
        return this.mConvertView;
    }

    public ImageView getImage(int i9) {
        return (ImageView) getView(i9);
    }

    public LinearLayout getLine(int i9) {
        return (LinearLayout) getView(i9);
    }

    public int getPosition() {
        return this.mPosition;
    }

    public RelativeLayout getRela(int i9) {
        return (RelativeLayout) getView(i9);
    }

    public SwipeListLayout getSwipeListLayout(int i9) {
        return (SwipeListLayout) getView(i9);
    }

    public TextView getTextView(int i9, String str) {
        TextView textView = (TextView) getView(i9);
        textView.setText(str);
        return textView;
    }

    public <T extends View> T getView(int i9) {
        T t10 = (T) this.mViews.get(i9);
        if (t10 == null) {
            T t11 = (T) this.mConvertView.findViewById(i9);
            t11.setVisibility(0);
            this.mViews.put(i9, t11);
            return t11;
        }
        return t10;
    }

    public AAViewHolder setImgResourceId(int i9, int i10) {
        ((ImageView) getView(i9)).setImageResource(i10);
        return this;
    }

    public AAViewHolder setRating(int i9, float f10) {
        ((RatingBar) getView(i9)).setRating(f10);
        return this;
    }

    public AAViewHolder setSelectButton(int i9, String str, boolean z10) {
        TextView textView = (TextView) getView(i9);
        textView.setText(str);
        textView.setSelected(z10);
        return this;
    }

    public AAViewHolder setText(int i9, String str) {
        ((TextView) getView(i9)).setText(str);
        return this;
    }

    public AAViewHolder setTextColor(int i9, int i10) {
        ((TextView) getView(i9)).setTextColor(i10);
        return this;
    }

    public AAViewHolder setTextHtml(int i9, String str) {
        ((TextView) getView(i9)).setText(Html.fromHtml(str));
        return this;
    }

    public AAViewHolder setVisiable(int i9, int i10) {
        getView(i9).setVisibility(i10);
        return this;
    }

    public TextView getTextView(int i9) {
        return (TextView) getView(i9);
    }
}
