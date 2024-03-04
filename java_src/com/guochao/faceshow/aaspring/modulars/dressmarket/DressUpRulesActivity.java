package com.guochao.faceshow.aaspring.modulars.dressmarket;

import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import android.widget.TextView;
import androidx.annotation.NonNull;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.r;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public class DressUpRulesActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    int f17624a;

    /* renamed from: b  reason: collision with root package name */
    int[] f17625b = {R.string.f_dress_roles_tip_car_title1, R.string.f_dress_roles_tip_car_title2, R.string.f_dress_roles_tip_car_title3, R.string.f_dress_roles_tip_car_title4};

    /* renamed from: c  reason: collision with root package name */
    int[][] f17626c = {new int[]{R.string.f_dress_roles_tip_car_title1_content1}, new int[]{R.string.f_dress_roles_tip_car_title2_content1}, new int[]{R.string.f_dress_roles_tip_car_title3_content1}, new int[]{R.string.f_dress_roles_tip_car_title4_content1, R.string.f_dress_roles_tip_car_title4_content2}};

    /* renamed from: d  reason: collision with root package name */
    int[] f17627d = {R.string.f_dress_roles_tip_avatar_title1, R.string.f_dress_roles_tip_avatar_title3, R.string.f_dress_roles_tip_avatar_title2, R.string.f_dress_roles_tip_car_title4};

    /* renamed from: e  reason: collision with root package name */
    int[][] f17628e = {new int[]{R.string.f_dress_roles_tip_avatar_title1_content1}, new int[]{R.string.f_dress_roles_tip_avatar_title4_content1}, new int[]{R.string.f_dress_roles_tip_avatar_title2_content1}, new int[]{R.string.f_dress_roles_tip_avatar_title3_content1, R.string.f_dress_roles_tip_avatar_title3_content2}};

    /* renamed from: f  reason: collision with root package name */
    int[] f17629f = {R.string.f_dress_roles_tip_mask_title1, R.string.f_dress_roles_tip_mask_title3, R.string.f_dress_roles_tip_mask_title2, R.string.f_dress_roles_tip_car_title4};

    /* renamed from: g  reason: collision with root package name */
    int[][] f17630g = {new int[]{R.string.f_dress_roles_tip_mask_title1_content1}, new int[]{R.string.f_dress_roles_tip_mask_title4_content1}, new int[]{R.string.f_dress_roles_tip_mask_title2_content1}, new int[]{R.string.f_dress_roles_tip_mask_title3_content1, R.string.f_dress_roles_tip_mask_title3_content2}};
    @BindView
    TextView mTextView;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends MetricAffectingSpan {
        a() {
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setTextSize(DensityUtil.dp2px(13.0f));
            Typeface typeface = Typeface.DEFAULT;
            textPaint.setColor(Color.parseColor("#666666"));
            textPaint.setTypeface(typeface);
        }

        @Override // android.text.style.MetricAffectingSpan
        public void updateMeasureState(@NonNull TextPaint textPaint) {
            textPaint.setTextSize(DensityUtil.dp2px(13.0f));
            Typeface typeface = Typeface.DEFAULT;
            textPaint.setColor(Color.parseColor("#666666"));
            textPaint.setTypeface(typeface);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends MetricAffectingSpan {
        b() {
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setTextSize(DensityUtil.dp2px(14.0f));
            textPaint.setTypeface(Typeface.DEFAULT_BOLD);
            textPaint.setColor(Color.parseColor("#222222"));
        }

        @Override // android.text.style.MetricAffectingSpan
        public void updateMeasureState(@NonNull TextPaint textPaint) {
            textPaint.setTextSize(DensityUtil.dp2px(14.0f));
            textPaint.setTypeface(Typeface.DEFAULT_BOLD);
            textPaint.setColor(Color.parseColor("#222222"));
        }
    }

    private SpannableString b0(String str) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new a(), 0, spannableString.length(), 33);
        return spannableString;
    }

    private SpannableString d0(String str) {
        SpannableString spannableString = new SpannableString("  " + str);
        Drawable drawable = getResources().getDrawable(R.mipmap.dressup_title);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        spannableString.setSpan(new r(drawable), 0, 1, 33);
        spannableString.setSpan(new b(), 1, spannableString.length(), 33);
        return spannableString;
    }

    void e0() {
        int[] iArr;
        int[][] iArr2;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i9 = this.f17624a;
        if (i9 == 1) {
            setTitle(R.string.f_dress_roles_tip_pendant);
            iArr = this.f17627d;
            iArr2 = this.f17628e;
        } else if (i9 != 2) {
            setTitle(R.string.f_dress_roles_tip_car);
            iArr = this.f17625b;
            iArr2 = this.f17626c;
        } else {
            setTitle(R.string.f_dress_roles_tip_chatshading);
            iArr = this.f17629f;
            iArr2 = this.f17630g;
        }
        for (int i10 = 0; i10 < iArr.length; i10++) {
            spannableStringBuilder.append((CharSequence) d0(getString(iArr[i10])));
            spannableStringBuilder.append((CharSequence) IOUtils.LINE_SEPARATOR_WINDOWS);
            for (int i11 = 0; i11 < iArr2[i10].length; i11++) {
                spannableStringBuilder.append((CharSequence) b0(getString(iArr2[i10][i11])));
                spannableStringBuilder.append((CharSequence) IOUtils.LINE_SEPARATOR_WINDOWS);
                spannableStringBuilder.append((CharSequence) IOUtils.LINE_SEPARATOR_WINDOWS);
            }
        }
        this.mTextView.setText(spannableStringBuilder);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_dressup_rules;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f17624a = getIntent().getIntExtra("type", 0);
        getWindow().setBackgroundDrawableResource(R.color.white);
        e0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}
