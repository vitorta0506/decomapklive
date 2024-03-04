package com.guochao.faceshow.aaspring.modulars.dressmarket.bean;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.TextAppearanceSpan;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.r;
import java.text.DecimalFormat;
import q7.a;
/* loaded from: classes3.dex */
public class DressSpecBean implements Parcelable {
    public static final Parcelable.Creator<DressSpecBean> CREATOR = new Parcelable.Creator<DressSpecBean>() { // from class: com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressSpecBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DressSpecBean createFromParcel(Parcel parcel) {
            return new DressSpecBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DressSpecBean[] newArray(int i9) {
            return new DressSpecBean[i9];
        }
    };
    private String createTime;
    private int creator;
    private long dressMallId;
    private int duration;
    private boolean isSelect;
    private int lastPrice;
    private float percent;
    private int priority;
    private long ruleId;
    private int unit;

    protected DressSpecBean(Parcel parcel) {
        this.isSelect = parcel.readByte() != 0;
        this.ruleId = parcel.readLong();
        this.dressMallId = parcel.readLong();
        this.duration = parcel.readInt();
        this.unit = parcel.readInt();
        this.percent = parcel.readFloat();
        this.lastPrice = parcel.readInt();
        this.creator = parcel.readInt();
        this.createTime = parcel.readString();
        this.priority = parcel.readInt();
    }

    private CharSequence getPriceContent(TextView textView, String str, String str2) {
        int i9;
        Context context = textView.getContext();
        Drawable drawable = ContextCompat.getDrawable(context, R.mipmap.dress_up_diamond);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("{diamond} " + context.getString(R.string.f_dress_car_price, str, str2));
        if (drawable == null) {
            return spannableStringBuilder;
        }
        int minimumWidth = drawable.getMinimumWidth();
        int minimumHeight = drawable.getMinimumHeight();
        TextView textView2 = new TextView(textView.getContext());
        textView2.setTextSize(2, 16.0f);
        textView2.measure(0, 0);
        float measuredHeight = textView2.getMeasuredHeight();
        drawable.setBounds(0, -DensityUtil.dp2px(3.0f), (int) ((measuredHeight / minimumHeight) * minimumWidth), ((int) measuredHeight) - DensityUtil.dp2px(3.0f));
        r rVar = new r(drawable);
        int indexOf = spannableStringBuilder.toString().indexOf(str);
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(ContextCompat.getColor(context, R.color.dark_blak));
        if (indexOf >= 0 && str.length() + indexOf <= spannableStringBuilder.length()) {
            spannableStringBuilder.setSpan(foregroundColorSpan, indexOf, str.length() + indexOf, 17);
            spannableStringBuilder.setSpan(new TextAppearanceSpan(textView.getContext(), R.style.style_bold), indexOf, str.length() + indexOf, 18);
        }
        spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(context, R.color.color_ugc_text_level_2)), str.length() + indexOf, spannableStringBuilder.length(), 17);
        spannableStringBuilder.setSpan(new RelativeSizeSpan(0.625f), indexOf + str.length(), spannableStringBuilder.length(), 17);
        int indexOf2 = spannableStringBuilder.toString().indexOf("{diamond}");
        if (indexOf2 >= 0 && (i9 = indexOf2 + 9) <= spannableStringBuilder.length()) {
            spannableStringBuilder.setSpan(rVar, indexOf2, i9, 17);
        }
        return spannableStringBuilder;
    }

    private String getTranslatePrice(int i9) {
        return String.valueOf(i9);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public int getCreator() {
        return this.creator;
    }

    public long getDressMallId() {
        return this.dressMallId;
    }

    public int getDuration() {
        return this.duration;
    }

    public int getLastPrice() {
        return this.lastPrice;
    }

    public String getOffContent(Context context) {
        String str;
        if (Language.SIMPLE_CHINESE.equalsIgnoreCase(a.e().c())) {
            str = new DecimalFormat("######0.0").format(getPercent() / 10.0f);
            if (getPercent() % 10.0f == 0.0f) {
                str = String.valueOf(getPercent() / 10.0f);
            }
        } else {
            str = (100 - ((int) ((getPercent() * 100.0f) / 100.0f))) + "% ";
        }
        if (a.e().j()) {
            return context.getString(R.string.f_dress_price_off) + " " + str;
        }
        return str + " " + context.getString(R.string.f_dress_price_off);
    }

    public float getPercent() {
        return this.percent;
    }

    public int getPriority() {
        return this.priority;
    }

    public int getQuantityTime(int i9) {
        return i9 == 0 ? R.plurals.f_dress_days : i9 == 1 ? R.plurals.f_dress_months : i9 == 2 ? R.plurals.f_dress_years : R.plurals.f_dress_days;
    }

    public long getRuleId() {
        return this.ruleId;
    }

    public int getUnit() {
        return this.unit;
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setCreator(int i9) {
        this.creator = i9;
    }

    public void setDressMallId(long j10) {
        this.dressMallId = j10;
    }

    public void setDuration(int i9) {
        this.duration = i9;
    }

    public void setLastPrice(int i9) {
        this.lastPrice = i9;
    }

    public void setPercent(float f10) {
        this.percent = f10;
    }

    public void setPriceSpecContent(TextView textView) {
        int duration = getDuration();
        int unit = getUnit();
        textView.setText(getPriceContent(textView, getTranslatePrice(getLastPrice()), textView.getContext().getResources().getQuantityString(getQuantityTime(unit), duration, Integer.valueOf(duration))));
    }

    public void setPriority(int i9) {
        this.priority = i9;
    }

    public void setRuleId(long j10) {
        this.ruleId = j10;
    }

    public void setSelect(boolean z10) {
        this.isSelect = z10;
    }

    public void setUnit(int i9) {
        this.unit = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeByte(this.isSelect ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.ruleId);
        parcel.writeLong(this.dressMallId);
        parcel.writeInt(this.duration);
        parcel.writeInt(this.unit);
        parcel.writeFloat(this.percent);
        parcel.writeInt(this.lastPrice);
        parcel.writeInt(this.creator);
        parcel.writeString(this.createTime);
        parcel.writeInt(this.priority);
    }

    public DressSpecBean() {
    }
}
