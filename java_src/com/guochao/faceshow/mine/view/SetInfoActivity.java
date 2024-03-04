package com.guochao.faceshow.mine.view;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.os.ConfigurationCompat;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Optional;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.MediaLocalData;
import com.guochao.faceshow.aaspring.beans.SetInfoData;
import com.guochao.faceshow.aaspring.beans.UploadAvatarResult;
import com.guochao.faceshow.aaspring.beans.UserPageBaseData;
import com.guochao.faceshow.aaspring.dialog.DatePickerDialog;
import com.guochao.faceshow.aaspring.modulars.live.fragment.HealthLiveTipsFragment;
import com.guochao.faceshow.aaspring.modulars.user.tag.UserEditFriendshipActivity;
import com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity;
import com.guochao.faceshow.aaspring.modulars.vip.activity.ImageCropActivity;
import com.guochao.faceshow.aaspring.utils.AndroidBug5497Workaround;
import com.guochao.faceshow.aaspring.utils.CalenderUtils;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.aaspring.utils.DateFormatProvider;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EmptyUtils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UriUtils;
import com.guochao.faceshow.activity.ChooceOccupationActivity;
import com.guochao.faceshow.activity.CurrentLiveAreaActivity;
import com.guochao.faceshow.activity.LanguageActivity;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.bean.EmotionalTag;
import com.guochao.faceshow.dialog.Photo_Dialog_Fragment;
import com.guochao.faceshow.mine.picdrag.dialog.CoverPhotoDialogFragment;
import com.guochao.faceshow.mine.picdrag.view.PictureDragAdapter;
import com.guochao.faceshow.mine.picdrag.view.PictureEditView;
import com.guochao.faceshow.utils.AAImageUtil;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.PhotoCameraPermissionUtils;
import com.guochao.faceshow.utils.Photo_Take_Util;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.SensitiveWordFilter;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.utils.Tool;
import com.guochao.faceshow.views.JudgeEditText;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.views.flowlayout.FlowLayout;
import com.guochao.faceshow.views.flowlayout.TagFlowLayout;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class SetInfoActivity extends BaseActivity {
    private String A;
    private String B;
    private PictureEditView E;
    private PhotoCameraPermissionUtils F;
    private UserPageBaseData.CoverData G;
    private com.guochao.faceshow.views.e I;
    private EmotionalTag K;
    @BindView
    LinearLayout animal;

    /* renamed from: c  reason: collision with root package name */
    private String f25712c;
    @BindView
    LinearLayout constellation;

    /* renamed from: d  reason: collision with root package name */
    private String f25713d;

    /* renamed from: e  reason: collision with root package name */
    private String f25714e;
    @BindView
    LinearLayout editAddress;
    @BindView
    LinearLayout editLanguage;

    /* renamed from: f  reason: collision with root package name */
    private Photo_Dialog_Fragment f25715f;

    /* renamed from: g  reason: collision with root package name */
    private CoverPhotoDialogFragment f25716g;

    /* renamed from: h  reason: collision with root package name */
    private String f25717h;

    /* renamed from: i  reason: collision with root package name */
    private String f25718i;

    /* renamed from: j  reason: collision with root package name */
    private SetInfoData f25719j;

    /* renamed from: m  reason: collision with root package name */
    private String f25722m;
    @BindView
    TextView mAutograph;
    @BindView
    View mAvatarIllegleTips;
    @BindView
    TextView mBirthday;
    @BindView
    View mCheckAvatarTips;
    @BindView
    TextView mCity;
    @BindView
    TextView mEmotionalState;
    @BindView
    TextView mFriendshipIntention;
    @BindView
    TextView mGender;
    @BindView
    TextView mHeight;
    @BindView
    TextView mHobby;
    @BindView
    LinearLayout mMainLayout;
    @BindView
    TextView mMasteryOfLanguage;
    @BindView
    TextView mNickname;
    @BindView
    TextView mOccupation;
    @BindView
    TextView mWeight;

    /* renamed from: o  reason: collision with root package name */
    private String f25724o;

    /* renamed from: s  reason: collision with root package name */
    private Calendar f25728s;
    @BindView
    TextView tvAnimal;
    @BindView
    TextView tvAnimalName;
    @BindView
    TextView tvConstellation;
    @BindView
    TextView tvConstellationName;

    /* renamed from: u  reason: collision with root package name */
    private String f25730u;

    /* renamed from: v  reason: collision with root package name */
    private String f25731v;
    @BindView
    View viewAddress;
    @BindView
    View viewAnimal;
    @BindView
    View viewConstellation;
    @BindView
    View viewLanguage;

    /* renamed from: w  reason: collision with root package name */
    private String f25732w;

    /* renamed from: x  reason: collision with root package name */
    private String f25733x;

    /* renamed from: y  reason: collision with root package name */
    private String f25734y;

    /* renamed from: z  reason: collision with root package name */
    private String f25735z;

    /* renamed from: a  reason: collision with root package name */
    private final List<Integer> f25710a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<EmotionalTag> f25711b = new ArrayList<>();

    /* renamed from: k  reason: collision with root package name */
    private boolean f25720k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f25721l = false;

    /* renamed from: n  reason: collision with root package name */
    private String f25723n = "";

    /* renamed from: p  reason: collision with root package name */
    private int f25725p = 0;

    /* renamed from: q  reason: collision with root package name */
    private int f25726q = 0;

    /* renamed from: r  reason: collision with root package name */
    private boolean f25727r = false;

    /* renamed from: t  reason: collision with root package name */
    private String f25729t = "";
    private String C = "CM";
    private String D = "Kg";
    SimpleDateFormat H = new SimpleDateFormat("MM/dd/yyyy", Locale.US);
    private int J = -1;
    List<EmotionalTag> L = new ArrayList();
    String M = "";
    String N = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements DatePickerDialog.d {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.dialog.DatePickerDialog.d
        public void b(Dialog dialog) {
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.aaspring.dialog.DatePickerDialog.d
        public void c(Dialog dialog, Calendar calendar, int i9, int i10, int i11) {
            int daysBetween = (int) ((CalenderUtils.getDaysBetween(Calendar.getInstance(), calendar) / 365) + 0.5d);
            SetInfoActivity.this.f25727r = true;
            SetInfoActivity.this.H.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            SetInfoActivity setInfoActivity = SetInfoActivity.this;
            setInfoActivity.f25722m = setInfoActivity.H.format(calendar.getTime());
            if (daysBetween >= 18) {
                dialog.dismiss();
                SetInfoActivity.this.k1();
                return;
            }
            SetInfoActivity.this.showDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a0 extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        a0() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            SetInfoActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            b8.e.g().a(SetInfoActivity.this.getCurrentUser(), false);
            SetInfoActivity.this.dismissProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Tool.dismissPopWindow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b0 extends com.guochao.faceshow.aaspring.base.http.callback.c<List<EmotionalTag>> {
        b0() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<EmotionalTag>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<EmotionalTag> list, @NonNull FaceCastBaseResponse<List<EmotionalTag>> faceCastBaseResponse) {
            SetInfoActivity.this.L = list;
            if (list == null || list.size() <= 0) {
                return;
            }
            SetInfoActivity.this.P1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements RadioGroup.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i9) {
            if (i9 == R.id.rbMan) {
                SetInfoActivity.this.f25726q = 1;
            } else if (i9 != R.id.rbWoman) {
            } else {
                SetInfoActivity.this.f25726q = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c0 extends com.guochao.faceshow.aaspring.base.http.callback.c<SetInfoData> {
        c0() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable SetInfoData setInfoData, @NonNull FaceCastBaseResponse<SetInfoData> faceCastBaseResponse) {
            SetInfoActivity.this.f25719j = setInfoData;
            SetInfoActivity.this.Z1(setInfoData);
            SetInfoActivity.this.H1(setInfoData);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<SetInfoData> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SetInfoActivity.this.f25725p != 0 && SetInfoActivity.this.f25725p != 1) {
                SetInfoActivity setInfoActivity = SetInfoActivity.this;
                ToastUtils.showToast(setInfoActivity, setInfoActivity.getString(R.string.choose_sex));
                return;
            }
            SetInfoActivity.this.f25727r = false;
            Tool.dismissPopWindow();
            SetInfoActivity.this.k1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d0 extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        d0() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            SetInfoActivity.this.E.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements e.a {
        e() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                if (SetInfoActivity.this.f25727r) {
                    SetInfoActivity.this.V1(dialog);
                } else {
                    SetInfoActivity.this.X1(dialog);
                }
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e0 implements CountryUtils.CountryCallBack {
        e0() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
        public void onResponse(@Nullable List<CountryData> list) {
            String country;
            if (list != null) {
                String str = null;
                for (int i9 = 0; i9 < list.size(); i9++) {
                    if (!TextUtils.isEmpty(SetInfoActivity.this.getCurrentUser().country) && SetInfoActivity.this.getCurrentUser().country.equalsIgnoreCase(list.get(i9).getCoding())) {
                        str = list.get(i9).getContent();
                    }
                }
                if (str == null) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        country = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration()).get(0).getCountry();
                    } else {
                        country = Locale.getDefault().getCountry();
                    }
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        if (!TextUtils.isEmpty(country) && country.equalsIgnoreCase(list.get(i10).getCoding())) {
                            str = list.get(i10).getContent();
                        }
                    }
                    SetInfoActivity.this.mCity.setText(str);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f implements e.a {
        f() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (dialog.isShowing()) {
                dialog.dismiss();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f0 extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        f0() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            TextView textView = SetInfoActivity.this.mWeight;
            textView.setText(SetInfoActivity.this.f25733x + SetInfoActivity.this.D);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Tool.dismissPopWindow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g0 extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        g0() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            TextView textView = SetInfoActivity.this.mHeight;
            textView.setText(SetInfoActivity.this.f25732w + SetInfoActivity.this.C);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h implements RadioGroup.OnCheckedChangeListener {
        h() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i9) {
            if (i9 == R.id.rbMan) {
                SetInfoActivity.this.D = "Kg";
            } else if (i9 != R.id.rbWoman) {
            } else {
                SetInfoActivity.this.D = "Lb";
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class h0 extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f25751a;

        h0(int i9) {
            this.f25751a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            SetInfoActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            SetInfoActivity.this.dismissProgressDialog();
            SetInfoActivity.this.getCurrentUser().sex = this.f25751a;
            com.guochao.faceshow.aaspring.modulars.main.a aVar = new com.guochao.faceshow.aaspring.modulars.main.a();
            aVar.f20646a = this.f25751a;
            EventBus.getDefault().post(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class i implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ EditText f25753a;

        i(EditText editText) {
            this.f25753a = editText;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SetInfoActivity.this.f25733x = this.f25753a.getText().toString().trim();
            if (TextUtils.isEmpty(SetInfoActivity.this.f25733x)) {
                SetInfoActivity setInfoActivity = SetInfoActivity.this;
                ToastUtils.showToast(setInfoActivity, setInfoActivity.getString(R.string.input_weight));
                return;
            }
            Tool.dismissPopWindow();
            SetInfoActivity.this.d2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class i0 implements hb.b<Object> {
        i0() {
        }

        @Override // hb.b
        public /* synthetic */ void onFail(Object obj) {
            hb.a.a(this, obj);
        }

        @Override // hb.b
        public void onResponse(Object obj) {
            SetInfoActivity.this.m1((UserPageBaseData.CoverData) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Tool.dismissPopWindow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class j0 implements hb.b {
        j0() {
        }

        @Override // hb.b
        public /* synthetic */ void onFail(Object obj) {
            hb.a.a(this, obj);
        }

        @Override // hb.b
        public void onResponse(Object obj) {
            if (SetInfoActivity.this.f25719j == null || SetInfoActivity.this.f25719j.getImgHomePageList() == null) {
                return;
            }
            UserPageBaseData.CoverData coverData = (UserPageBaseData.CoverData) obj;
            if (coverData.isIllegal()) {
                return;
            }
            SetInfoActivity.this.f25719j.getImgHomePageList().remove(coverData);
            SetInfoActivity.this.f25719j.getImgHomePageList().add(0, coverData);
            SetInfoActivity.this.E.setData(SetInfoActivity.this.f25719j.getImgHomePageList());
            SetInfoActivity setInfoActivity = SetInfoActivity.this;
            setInfoActivity.i1(setInfoActivity.f25719j.getImgHomePageList());
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < SetInfoActivity.this.f25719j.getImgHomePageList().size(); i9++) {
                arrayList.add(Integer.valueOf(SetInfoActivity.this.f25719j.getImgHomePageList().get(i9).imgId));
            }
            SetInfoActivity.this.T1(arrayList);
            SetInfoActivity.this.E.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class k implements PictureDragAdapter.a {
        k() {
        }

        @Override // com.guochao.faceshow.mine.picdrag.view.PictureDragAdapter.a
        public void a(int i9, View view, int i10, UserPageBaseData.CoverData coverData) {
            if ((view instanceof ImageView) && DisableDoubleClickUtils.canClick(view)) {
                SetInfoActivity.this.G = coverData;
                if (coverData.localType == -3) {
                    SetInfoActivity.this.R1();
                } else {
                    SetInfoActivity.this.I1(coverData);
                }
            }
        }

        @Override // com.guochao.faceshow.mine.picdrag.view.PictureDragAdapter.a
        public void b(int i9, View view, int i10, UserPageBaseData.CoverData coverData) {
            SetInfoActivity.this.m1(coverData);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class k0 extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserPageBaseData.CoverData f25759a;

        k0(UserPageBaseData.CoverData coverData) {
            this.f25759a = coverData;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            SetInfoActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            SetInfoActivity.this.dismissProgressDialog();
            SetInfoActivity.this.E.c(this.f25759a);
            SetInfoActivity.this.f25719j.getImgHomePageList().remove(this.f25759a);
            SetInfoActivity setInfoActivity = SetInfoActivity.this;
            setInfoActivity.i1(setInfoActivity.f25719j.getImgHomePageList());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class l implements RadioGroup.OnCheckedChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ JudgeEditText f25761a;

        l(JudgeEditText judgeEditText) {
            this.f25761a = judgeEditText;
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i9) {
            if (i9 != R.id.rbMan) {
                if (i9 != R.id.rbWoman) {
                    return;
                }
                SetInfoActivity.this.C = "FT";
                this.f25761a.b(3, 1, 5);
                return;
            }
            SetInfoActivity.this.C = "CM";
            String[] split = this.f25761a.getText().toString().split("\\.");
            if (split.length > 1) {
                this.f25761a.setText(split[0]);
            }
            this.f25761a.b(3, 0, 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class l0 extends com.guochao.faceshow.aaspring.base.http.callback.c<UploadAvatarResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserPageBaseData.CoverData f25763a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f25764b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ UserPageBaseData.CoverData f25765c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<UserPageBaseData.CoverData> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            /* renamed from: a */
            public void onResponse(@Nullable UserPageBaseData.CoverData coverData, @NonNull FaceCastBaseResponse<UserPageBaseData.CoverData> faceCastBaseResponse) {
                SetInfoActivity.this.dismissProgressDialog();
                if (coverData != null) {
                    l0 l0Var = l0.this;
                    UserPageBaseData.CoverData coverData2 = l0Var.f25763a;
                    coverData2.imgUrl = coverData.imgUrl;
                    coverData2.smallImg = coverData.smallImg;
                    coverData2.imgId = coverData.imgId;
                    coverData2.sort = coverData.sort;
                    coverData2.imagePath = l0Var.f25764b;
                    PictureEditView pictureEditView = SetInfoActivity.this.E;
                    l0 l0Var2 = l0.this;
                    pictureEditView.e(l0Var2.f25765c, l0Var2.f25763a);
                    if (SetInfoActivity.this.f25719j != null && SetInfoActivity.this.f25719j.getImgHomePageList() != null) {
                        SetInfoActivity.this.f25719j.getImgHomePageList().add(l0.this.f25763a);
                        SetInfoActivity setInfoActivity = SetInfoActivity.this;
                        setInfoActivity.i1(setInfoActivity.f25719j.getImgHomePageList());
                    }
                    SetInfoActivity.this.E.f();
                    if (TextUtils.isEmpty(SetInfoActivity.this.getCurrentUser().getAvatar()) && BaseConfig.isChinese()) {
                        SetInfoActivity.this.getCurrentUser().img = l0.this.f25763a.imgUrl;
                    }
                    SetInfoActivity.this.setResult(-1);
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<UserPageBaseData.CoverData> aVar) {
                SetInfoActivity.this.dismissProgressDialog();
            }
        }

        l0(UserPageBaseData.CoverData coverData, String str, UserPageBaseData.CoverData coverData2) {
            this.f25763a = coverData;
            this.f25764b = str;
            this.f25765c = coverData2;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UploadAvatarResult uploadAvatarResult, @NonNull FaceCastBaseResponse<UploadAvatarResult> faceCastBaseResponse) {
            if (uploadAvatarResult == null) {
                onFailure(new g7.a<>());
            } else {
                SetInfoActivity.this.post("tokens/img/user/saveNew").y("bigImgUrl", uploadAvatarResult.getBigImgUrl()).y("smallImgUrl", uploadAvatarResult.getSmallImgUrl()).M(new a());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UploadAvatarResult> aVar) {
            SetInfoActivity.this.dismissProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ JudgeEditText f25768a;

        m(JudgeEditText judgeEditText) {
            this.f25768a = judgeEditText;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SetInfoActivity.this.f25732w = this.f25768a.getText().toString().trim();
            String[] split = SetInfoActivity.this.f25732w.split("\\.");
            if (split.length > 1 && split[1].equals("")) {
                SetInfoActivity.this.f25732w = split[0];
            }
            if (TextUtils.isEmpty(SetInfoActivity.this.f25732w)) {
                SetInfoActivity setInfoActivity = SetInfoActivity.this;
                ToastUtils.showToast(setInfoActivity, setInfoActivity.getString(R.string.input_stature));
                return;
            }
            Tool.dismissPopWindow();
            SetInfoActivity.this.Y1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class m0 extends com.guochao.faceshow.aaspring.base.http.callback.c<UploadAvatarResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserPageBaseData.CoverData f25770a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f25771b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<UserPageBaseData.CoverData> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            /* renamed from: a */
            public void onResponse(@Nullable UserPageBaseData.CoverData coverData, @NonNull FaceCastBaseResponse<UserPageBaseData.CoverData> faceCastBaseResponse) {
                SetInfoActivity.this.dismissProgressDialog();
                if (coverData != null) {
                    m0 m0Var = m0.this;
                    UserPageBaseData.CoverData coverData2 = m0Var.f25770a;
                    coverData2.imgUrl = coverData.imgUrl;
                    coverData2.smallImg = coverData.smallImg;
                    coverData2.imgId = coverData.imgId;
                    coverData2.sort = coverData.sort;
                    coverData2.imagePath = m0Var.f25771b;
                    SetInfoActivity.this.E.f();
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<UserPageBaseData.CoverData> aVar) {
                SetInfoActivity.this.dismissProgressDialog();
            }
        }

        m0(UserPageBaseData.CoverData coverData, String str) {
            this.f25770a = coverData;
            this.f25771b = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UploadAvatarResult uploadAvatarResult, @NonNull FaceCastBaseResponse<UploadAvatarResult> faceCastBaseResponse) {
            if (uploadAvatarResult == null) {
                onFailure(new g7.a<>());
            } else {
                SetInfoActivity.this.post("tokens/img/user/updateNew").y("bigImgUrl", uploadAvatarResult.getBigImgUrl()).y("smallImgUrl", uploadAvatarResult.getSmallImgUrl()).y("imgId", Integer.valueOf(this.f25770a.imgId)).y("sort", Integer.valueOf(this.f25770a.sort + 1)).M(new a());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UploadAvatarResult> aVar) {
            SetInfoActivity.this.dismissProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Tool.dismissPopWindow();
        }
    }

    /* loaded from: classes4.dex */
    class n0 implements LanguageActivity.e {
        n0() {
        }

        @Override // com.guochao.faceshow.activity.LanguageActivity.e
        public void a(String str) {
            SetInfoActivity.this.f25729t = str;
            SetInfoActivity setInfoActivity = SetInfoActivity.this;
            setInfoActivity.mMasteryOfLanguage.setText(setInfoActivity.f25729t);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class o extends com.guochao.faceshow.views.flowlayout.a<EmotionalTag> {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ TagFlowLayout f25776e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(List list, TagFlowLayout tagFlowLayout) {
            super(list);
            this.f25776e = tagFlowLayout;
        }

        @Override // com.guochao.faceshow.views.flowlayout.a
        /* renamed from: i */
        public View d(FlowLayout flowLayout, int i9, EmotionalTag emotionalTag) {
            TextView textView = (TextView) LayoutInflater.from(SetInfoActivity.this).inflate(R.layout.item_yq, (ViewGroup) this.f25776e, false);
            textView.setText(emotionalTag.tname);
            if (emotionalTag.have == 1) {
                SetInfoActivity.this.J = i9;
            }
            return textView;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class p implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TagFlowLayout f25778a;

        p(TagFlowLayout tagFlowLayout) {
            this.f25778a = tagFlowLayout;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Tool.dismissPopWindow();
            Set<Integer> selectedList = this.f25778a.getSelectedList();
            SetInfoActivity.this.K = null;
            for (Integer num : selectedList) {
                SetInfoActivity setInfoActivity = SetInfoActivity.this;
                setInfoActivity.K = setInfoActivity.L.get(num.intValue());
            }
            if (SetInfoActivity.this.K == null) {
                SetInfoActivity setInfoActivity2 = SetInfoActivity.this;
                ToastUtils.showToast(setInfoActivity2, setInfoActivity2.getString(R.string.chooce_emotional_state));
                return;
            }
            SetInfoActivity.this.b2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class q extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        q() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            SetInfoActivity setInfoActivity = SetInfoActivity.this;
            setInfoActivity.mEmotionalState.setText(setInfoActivity.K.tname);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Tool.dismissPopWindow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class s implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f25782a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TextView f25783b;

        s(TextView textView, TextView textView2) {
            this.f25782a = textView;
            this.f25783b = textView2;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            TextView textView = this.f25782a;
            StringBuilder sb2 = new StringBuilder();
            int i12 = i9 + i11;
            sb2.append(i12);
            sb2.append("/18");
            textView.setText(sb2.toString());
            TextView textView2 = this.f25782a;
            SetInfoActivity.G1(textView2, i12 + "", "/18");
            if (i12 == 0) {
                this.f25783b.setEnabled(false);
            } else {
                this.f25783b.setEnabled(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class t implements PictureEditView.b {
        t() {
        }

        @Override // com.guochao.faceshow.mine.picdrag.view.PictureEditView.b
        public void a(List<Integer> list) {
            SetInfoActivity.this.T1(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class u implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ EditText f25786a;

        u(EditText editText) {
            this.f25786a = editText;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SetInfoActivity.this.f25712c = this.f25786a.getText().toString().trim();
            if (TextUtils.isEmpty(SetInfoActivity.this.f25712c)) {
                SetInfoActivity setInfoActivity = SetInfoActivity.this;
                ToastUtils.showToast(setInfoActivity, setInfoActivity.getString(R.string.input_nickname));
                return;
            }
            String checkKeyword = SensitiveWordFilter.getInstance().checkKeyword(SetInfoActivity.this.f25712c);
            if (!TextUtils.isEmpty(SetInfoActivity.this.f25712c) && !TextUtils.isEmpty(checkKeyword)) {
                SetInfoActivity setInfoActivity2 = SetInfoActivity.this;
                setInfoActivity2.showToast(setInfoActivity2.getString(R.string.minganci_nickname));
                return;
            }
            Tool.dismissPopWindow();
            SetInfoActivity.this.c2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Tool.dismissPopWindow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class w implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f25789a;

        w(TextView textView) {
            this.f25789a = textView;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            TextView textView = this.f25789a;
            SetInfoActivity.G1(textView, (i9 + i11) + "", "/200");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class x implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ EditText f25791a;

        x(EditText editText) {
            this.f25791a = editText;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SetInfoActivity.this.f25714e = this.f25791a.getText().toString().trim();
            Tool.dismissPopWindow();
            SetInfoActivity.this.a2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class y extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        y() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (!"This nickname has been used".equalsIgnoreCase(aVar.c()) && aVar.a() != 1001) {
                if (1010 == aVar.a()) {
                    SetInfoActivity setInfoActivity = SetInfoActivity.this;
                    setInfoActivity.showToast(setInfoActivity.getString(R.string.minganci_nickname));
                    return;
                }
                ToastUtils.showToast(SetInfoActivity.this, aVar.c());
                return;
            }
            SetInfoActivity.this.showToast(R.string.The_nickname_has_been_used);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            SetInfoActivity setInfoActivity = SetInfoActivity.this;
            setInfoActivity.mNickname.setText(setInfoActivity.f25712c);
            SetInfoActivity.this.getCurrentUser().nickName = SetInfoActivity.this.f25712c;
            SetInfoActivity setInfoActivity2 = SetInfoActivity.this;
            SpUtils.setStr(setInfoActivity2, Contants.USER_NICKNAME, setInfoActivity2.f25712c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class z extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        z() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            if (aVar.a() == 1010) {
                ToastUtils.showToast(SetInfoActivity.this.getActivity(), SetInfoActivity.this.getString(R.string.chat_content_bad));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            SetInfoActivity setInfoActivity = SetInfoActivity.this;
            setInfoActivity.mAutograph.setText(setInfoActivity.f25714e);
            SetInfoActivity.this.getCurrentUser().signature = SetInfoActivity.this.f25714e;
            SpUtils.setStr(SetInfoActivity.this.getActivity(), "signature", SetInfoActivity.this.f25714e);
        }
    }

    private void B1() {
        if (this.f25720k) {
            showToast(getString(R.string.Used_up));
            return;
        }
        SetInfoData setInfoData = this.f25719j;
        if (setInfoData != null) {
            if (setInfoData.getBirthdayUpdate() == 1) {
                showToast(getString(R.string.Used_up));
            } else {
                Q1();
            }
        }
    }

    private void D1() {
        if (this.f25721l) {
            showToast(getString(R.string.Used_up));
            return;
        }
        SetInfoData setInfoData = this.f25719j;
        if (setInfoData != null) {
            if (setInfoData.getSexUpdate() == 1) {
                showToast(getString(R.string.Used_up));
            } else {
                J1();
            }
        }
    }

    public static void G1(TextView textView, String str, String str2) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) str);
        spannableStringBuilder.append((CharSequence) str2);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#6365FF")), 0, str.length(), 34);
        textView.setText(spannableStringBuilder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H1(SetInfoData setInfoData) {
        if (setInfoData == null || setInfoData.getImgHomePageList() == null) {
            return;
        }
        this.E.setData(setInfoData.getImgHomePageList());
        i1(setInfoData.getImgHomePageList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I1(UserPageBaseData.CoverData coverData) {
        SetInfoData setInfoData = this.f25719j;
        boolean z10 = true;
        if (setInfoData != null && setInfoData.getImgHomePageList() != null && !this.f25719j.getImgHomePageList().isEmpty() && !coverData.isIllegal()) {
            int i9 = 0;
            for (int i10 = 0; i10 < this.f25719j.getImgHomePageList().size(); i10++) {
                if (!this.f25719j.getImgHomePageList().get(i10).isIllegal()) {
                    i9++;
                }
            }
            if (i9 <= 1) {
                z10 = false;
            }
        }
        this.f25716g = CoverPhotoDialogFragment.X1(z10, coverData);
        String str = FilePathProvider.getCachePath("crop") + System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG;
        this.f25718i = str;
        this.f25716g.setCameraPath(str);
        this.f25716g.setVipType(getCurrentUser().getVipInfo().isVip());
        this.f25716g.Z1(new i0());
        this.f25716g.Y1(new j0());
        this.f25716g.show(getSupportFragmentManager(), "Cover_Photo_Dialog_Fragment");
    }

    private void J1() {
        Tool.dismissPopWindow();
        View inflate = View.inflate(this, R.layout.zz_gender_alert_dialog, null);
        TextView textView = (TextView) inflate.findViewById(R.id.save);
        RadioGroup radioGroup = (RadioGroup) inflate.findViewById(R.id.rgSexGroup);
        ((TextView) inflate.findViewById(R.id.tv_title)).setText(getString(R.string.Gender));
        ((ImageView) inflate.findViewById(R.id.close)).setOnClickListener(new b());
        int i9 = this.f25725p;
        if (i9 == 0) {
            radioGroup.check(R.id.rbWoman);
        } else if (i9 == 1) {
            radioGroup.check(R.id.rbMan);
        }
        this.f25726q = this.f25725p;
        radioGroup.setOnCheckedChangeListener(new c());
        textView.setOnClickListener(new d());
        Tool.creatPopWindowCenter(inflate, this.mMainLayout, (ScreenTools.getScreenWidth() * 305) / 375);
    }

    private void L1() {
        Tool.dismissPopWindow();
        View inflate = View.inflate(this, R.layout.zz_height_alert_dialog, null);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_title);
        JudgeEditText judgeEditText = (JudgeEditText) inflate.findViewById(R.id.edit_tv);
        TextView textView2 = (TextView) inflate.findViewById(R.id.save);
        RadioGroup radioGroup = (RadioGroup) inflate.findViewById(R.id.rgSexGroup);
        if (BaseConfig.isChinese()) {
            inflate.findViewById(R.id.rbWoman).setVisibility(8);
        }
        ((ImageView) inflate.findViewById(R.id.close)).setOnClickListener(new j());
        radioGroup.setOnCheckedChangeListener(new l(judgeEditText));
        textView.setText(getString(R.string.height));
        String charSequence = this.mHeight.getText().toString();
        if (!TextUtils.isEmpty(charSequence)) {
            if (charSequence.toUpperCase().endsWith("CM")) {
                judgeEditText.b(3, 0, 3);
                judgeEditText.setText(charSequence.substring(0, charSequence.indexOf("CM")));
                radioGroup.check(R.id.rbMan);
            } else if (charSequence.toUpperCase().endsWith("FT")) {
                judgeEditText.b(3, 1, 5);
                judgeEditText.setText(charSequence.substring(0, charSequence.indexOf("FT")));
                radioGroup.check(R.id.rbWoman);
            } else {
                judgeEditText.setText(charSequence);
            }
            judgeEditText.setSelection(judgeEditText.getText().toString().length());
        } else {
            judgeEditText.setHint(getString(R.string.input_stature));
        }
        textView2.setOnClickListener(new m(judgeEditText));
        Tool.creatPopWindowCenter(inflate, this.mMainLayout, (ScreenTools.getScreenWidth() * 305) / 375);
    }

    private void N1() {
        String str;
        Tool.dismissPopWindow();
        View inflate = View.inflate(this, R.layout.zz_mulit_style_alert_dialog, null);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_title);
        ((ImageView) inflate.findViewById(R.id.close)).setOnClickListener(new r());
        EditText editText = (EditText) inflate.findViewById(R.id.edit_tv);
        TextView textView2 = (TextView) inflate.findViewById(R.id.numberChange);
        if (this.f25712c == null) {
            str = "0";
        } else {
            str = this.f25712c.length() + "";
        }
        G1(textView2, str, "/18");
        TextView textView3 = (TextView) inflate.findViewById(R.id.save);
        textView.setText(getString(R.string.nickname));
        editText.setText(this.f25712c);
        editText.setSelection(editText.getText().length());
        editText.addTextChangedListener(new s(textView2, textView3));
        editText.setSelection((editText.getText() != null ? editText.getText().toString() : "").length());
        textView3.setOnClickListener(new u(editText));
        Tool.creatPopWindowCenter(inflate, this.mMainLayout, (ScreenTools.getScreenWidth() * 305) / 375);
    }

    private void O1() {
        Tool.dismissPopWindow();
        View inflate = View.inflate(this, R.layout.zz_singture_alert_dialog, null);
        EditText editText = (EditText) inflate.findViewById(R.id.edit_tv);
        TextView textView = (TextView) inflate.findViewById(R.id.numberChange);
        TextView textView2 = (TextView) inflate.findViewById(R.id.save);
        ((TextView) inflate.findViewById(R.id.tv_title)).setText(getString(R.string.introduce_oneself));
        ((ImageView) inflate.findViewById(R.id.close)).setOnClickListener(new v());
        if (!TextUtils.isEmpty(this.f25714e)) {
            editText.setText(this.f25714e);
            editText.setSelection((editText.getText() != null ? editText.getText().toString() : "").length());
        }
        if (!TextUtils.isEmpty(editText.getText())) {
            G1(textView, editText.getText().length() + "", "/200");
        }
        editText.addTextChangedListener(new w(textView));
        textView2.setOnClickListener(new x(editText));
        Tool.creatPopWindowCenter(inflate, this.mMainLayout, (ScreenTools.getScreenWidth() * 305) / 375);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P1() {
        Tool.dismissPopWindow();
        View inflate = View.inflate(this, R.layout.zz_emotionalstate_dialog, null);
        TagFlowLayout tagFlowLayout = (TagFlowLayout) inflate.findViewById(R.id.tagFlowLayout);
        TextView textView = (TextView) inflate.findViewById(R.id.save);
        ((TextView) inflate.findViewById(R.id.tv_title)).setText(getString(R.string.emotional_state));
        ((ImageView) inflate.findViewById(R.id.close)).setOnClickListener(new n());
        o oVar = new o(this.L, tagFlowLayout);
        tagFlowLayout.setAdapter(oVar);
        int i9 = this.J;
        if (i9 >= 0) {
            oVar.h(i9);
        }
        textView.setOnClickListener(new p(tagFlowLayout));
        Tool.creatPopWindowCenter(inflate, this.mMainLayout, (ScreenTools.getScreenWidth() * 305) / 375);
    }

    private void Q1() {
        if (EmptyUtils.isEmpty(this.f25723n)) {
            this.f25728s.set(1, 1999);
            this.f25728s.set(2, 0);
            this.f25728s.set(5, 1);
        } else {
            this.f25728s.setTime(new Date(Long.parseLong(this.f25723n)));
        }
        DatePickerDialog.R1(this, this.f25728s, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R1() {
        this.f25715f = new Photo_Dialog_Fragment();
        String str = FilePathProvider.getCachePath("crop") + File.separator + System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG;
        this.f25718i = str;
        this.f25715f.setCameraPath(str);
        this.f25715f.setUpdatePath(this.f25717h);
        this.f25715f.setVipType(getCurrentUser().getVipInfo().isVip());
        this.f25715f.setNoGif(!getCurrentUser().getVipInfo().isVip());
        this.f25715f.show(getSupportFragmentManager(), "Photo_Dialog_Fragment");
    }

    private void S1() {
        Tool.dismissPopWindow();
        View inflate = View.inflate(this, R.layout.zz_weight_alert_dialog, null);
        EditText editText = (EditText) inflate.findViewById(R.id.edit_tv);
        TextView textView = (TextView) inflate.findViewById(R.id.save);
        ((TextView) inflate.findViewById(R.id.tv_title)).setText(getString(R.string.weight));
        ((ImageView) inflate.findViewById(R.id.close)).setOnClickListener(new g());
        RadioGroup radioGroup = (RadioGroup) inflate.findViewById(R.id.rgSexGroup);
        radioGroup.setOnCheckedChangeListener(new h());
        String charSequence = this.mWeight.getText().toString();
        if (charSequence != null) {
            if (charSequence.contains("Lb")) {
                radioGroup.check(R.id.rbWoman);
            } else {
                radioGroup.check(R.id.rbMan);
            }
        }
        if (!TextUtils.isEmpty(this.f25733x)) {
            if (this.f25733x.contains("Kg")) {
                this.f25733x = this.f25733x.replace("Kg", "");
            } else if (this.f25733x.contains("Lb")) {
                this.f25733x = this.f25733x.replace("Lb", "");
            } else if (this.f25733x.contains("K")) {
                this.f25733x = this.f25733x.replace("K", "");
            } else if (this.f25733x.contains("L")) {
                this.f25733x = this.f25733x.replace("L", "");
            }
            editText.setText(this.f25733x);
        } else {
            editText.setHint(getString(R.string.input_weight));
        }
        textView.setOnClickListener(new i(editText));
        Tool.creatPopWindowCenter(inflate, this.mMainLayout, (ScreenTools.getScreenWidth() * 305) / 375);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T1(List<Integer> list) {
        post(Contants.USER_COVER_UPDATE_SORT).D("ids", GsonGetter.getGson().toJson(list)).M(new d0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1(Dialog dialog) {
        if (this.f25722m.equals(this.f25724o)) {
            dialog.dismiss();
            return;
        }
        this.mBirthday.setText(this.f25722m);
        this.f25720k = true;
        b8.e.g().c().setBirthdayStr(this.f25722m);
        String[] split = this.f25722m.split(FileUtils.RES_PREFIX_STORAGE);
        String str = split[split.length - 1];
        try {
            b8.e.g().c().setUserAge(Integer.parseInt(new SimpleDateFormat("yyyy", Locale.getDefault()).format(new Date(System.currentTimeMillis() + com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff()))) - Integer.parseInt(str));
        } catch (Exception unused) {
        }
        dialog.dismiss();
        U1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X1(Dialog dialog) {
        if (this.f25726q == this.f25725p) {
            dialog.dismiss();
            return;
        }
        b8.e.g().c().setGender(this.f25725p);
        int i9 = this.f25726q;
        if (1 == i9) {
            this.mGender.setText(getString(R.string.man));
        } else if (i9 == 0) {
            this.mGender.setText(getString(R.string.woman));
        } else {
            this.mGender.setText("");
        }
        this.f25721l = true;
        W1(this.f25726q);
        dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1(SetInfoData setInfoData) {
        this.f25713d = SpUtils.getStr(this, Contants.USER_HEADIMG);
        if (setInfoData != null) {
            String nickName = setInfoData.getNickName();
            this.f25712c = nickName;
            this.mNickname.setText(nickName);
            int sex = setInfoData.getSex();
            this.f25725p = sex;
            if (1 == sex) {
                this.mGender.setText(getString(R.string.man));
            } else if (sex == 0) {
                this.mGender.setText(getString(R.string.woman));
            } else {
                this.mGender.setText("");
            }
            String birthday = setInfoData.getBirthday();
            this.f25723n = birthday;
            this.f25724o = t1(birthday);
            if (EmptyUtils.isNotEmpty(this.f25723n)) {
                this.mBirthday.setText(t1(this.f25723n));
            }
            String signature = setInfoData.getSignature();
            this.f25714e = signature;
            this.mAutograph.setText(TextUtils.isEmpty(signature) ? getString(R.string.user_info_default_signature) : this.f25714e);
            String nowAddress = setInfoData.getNowAddress();
            this.f25730u = nowAddress;
            this.mCity.setText(nowAddress);
            if (EmptyUtils.isEmpty(this.f25730u)) {
                r1();
            }
            String career = setInfoData.getCareer();
            this.f25731v = career;
            this.mOccupation.setText(career);
            String stature = setInfoData.getStature();
            this.f25732w = stature;
            if (EmptyUtils.isNotEmpty(stature)) {
                this.mHeight.setText(this.f25732w);
            }
            String weight = setInfoData.getWeight();
            this.f25733x = weight;
            if (EmptyUtils.isNotEmpty(weight)) {
                this.mWeight.setText(this.f25733x);
            }
            String emotions = setInfoData.getEmotions();
            this.f25734y = emotions;
            if (EmptyUtils.isNotEmpty(emotions)) {
                this.mEmotionalState.setText(this.f25734y);
            }
            String makeFriends = setInfoData.getMakeFriends();
            this.f25735z = makeFriends;
            if (EmptyUtils.isNotEmpty(makeFriends)) {
                this.mFriendshipIntention.setText(this.f25735z);
            }
            String languages = setInfoData.getLanguages();
            this.f25729t = languages;
            if (EmptyUtils.isNotEmpty(languages)) {
                this.mMasteryOfLanguage.setText(this.f25729t);
            }
            String hobby = setInfoData.getHobby();
            if (EmptyUtils.isNotEmpty(hobby)) {
                this.mHobby.setText(hobby);
            } else {
                this.mHobby.setText("");
            }
            this.A = setInfoData.getCompany();
            this.B = setInfoData.getIndustry();
            if (!TextUtils.isEmpty(setInfoData.getConstellation())) {
                this.tvConstellationName.setText(setInfoData.getConstellation());
            }
            if (TextUtils.isEmpty(setInfoData.getAnimal())) {
                return;
            }
            this.tvAnimalName.setText(setInfoData.getAnimal());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b2() {
        post(Contants.updateEmotionTag).D(Contants.USER_ID, SpUtils.getStr(this, Contants.USER_ID)).D("tagIds", String.valueOf(this.K.tagId)).M(new q());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i1(List<UserPageBaseData.CoverData> list) {
        if (list == null) {
            this.mAvatarIllegleTips.setVisibility(8);
            return;
        }
        this.mAvatarIllegleTips.setVisibility(8);
        for (int i9 = 0; i9 < list.size(); i9++) {
            if (list.get(i9).isIllegal()) {
                this.mAvatarIllegleTips.setVisibility(0);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k1() {
        if (this.I == null) {
            com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(getActivity(), new e());
            this.I = eVar;
            eVar.f(getResources().getString(R.string.My_Profile_one));
            this.I.g();
            this.I.h(17);
        }
        this.I.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m1(UserPageBaseData.CoverData coverData) {
        if (this.E.getData() == null || this.E.getData().size() <= 2) {
            return;
        }
        showProgressDialog(" ");
        post(Contants.USER_COVER_DELETE).D("imgId", String.valueOf(coverData.imgId)).M(new k0(coverData));
    }

    private void r1() {
        CountryUtils.getCountryData(this, new e0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDialog() {
        com.guochao.faceshow.views.h.f(this, null, getString(R.string.could_not_reg_under_13), true, new f());
    }

    public static String t1(String str) {
        try {
            Date date = new Date(Long.parseLong(str));
            SimpleDateFormat appLanguageFormatter = DateFormatProvider.getAppLanguageFormatter("MM/dd/yyyy");
            appLanguageFormatter.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            return appLanguageFormatter.format(date);
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    private void x1() {
        PictureEditView pictureEditView = (PictureEditView) findViewById(R.id.picture_edit_view);
        this.E = pictureEditView;
        pictureEditView.setOnItemClickListener(new k());
        this.E.setOnSortUpdateSortListener(new t());
        this.E.setData(null);
        i1(null);
    }

    public void F1(UserPageBaseData.CoverData coverData, String str) {
        if (coverData == null) {
            return;
        }
        if (-3 == coverData.localType) {
            UserPageBaseData.CoverData coverData2 = new UserPageBaseData.CoverData();
            coverData2.localType = -2;
            coverData2.imgUrl = str;
            coverData2.localUri = MediaLocalData.getImageContentUri(this, new File(str));
            coverData2.smallImg = str;
            showProgressDialog("");
            post(f7.b.f39645j0).R("imgFile", new File(str)).B(Contants.CURRENT_COUNTRY_FLAG, 2).M(new l0(coverData2, str, coverData));
            return;
        }
        showProgressDialog("");
        post(f7.b.f39645j0).R("imgFile", new File(str)).B(Contants.CURRENT_COUNTRY_FLAG, 2).M(new m0(coverData, str));
    }

    public void U1() {
        showProgressDialog("");
        post(Contants.updateBirthday).D(Contants.USER_ID, SpUtils.getStr(this, Contants.USER_ID)).D("birthday", this.f25722m).M(new a0());
    }

    public void W1(int i9) {
        showProgressDialog("");
        PostRequest post = post(Contants.updateSex);
        post.D("sex", i9 + "").M(new h0(i9));
    }

    public void Y1() {
        PostRequest post = post(Contants.updateStature);
        post.D("stature", StringUtils.convertNumberToNormalNumber(this.f25732w + this.C)).M(new g0());
    }

    public void a2() {
        String checkKeyword = SensitiveWordFilter.getInstance().checkKeyword(this.f25714e);
        if (!TextUtils.isEmpty(this.f25714e) && !TextUtils.isEmpty(checkKeyword)) {
            ToastUtils.showToast(getActivity(), getString(R.string.chat_content_bad));
        } else {
            post(Contants.updateSignature).D("signature", this.f25714e).D(Contants.USER_ID, SpUtils.getStr(this, Contants.USER_ID)).M(new z());
        }
    }

    public void c2() {
        post(Contants.updateNickName).D(Contants.USER_ID, SpUtils.getStr(this, Contants.USER_ID)).D("nickName", this.f25712c).M(new y());
    }

    public void d2() {
        PostRequest post = post(Contants.updateWeight);
        post.D(Contants.Weight, StringUtils.convertNumberToNormalNumber(this.f25733x + this.D)).M(new f0());
    }

    @OnClick
    @Optional
    public void getEvent(View view) {
        int id2 = view.getId();
        if (id2 != R.id.close_tips) {
            switch (id2) {
                case R.id.editAddress /* 2131362560 */:
                    Intent intent = new Intent(this, CurrentLiveAreaActivity.class);
                    intent.putExtra("nowAddress", this.f25730u);
                    startActivityForResult(intent, 54);
                    return;
                case R.id.editAutograph /* 2131362561 */:
                    O1();
                    return;
                case R.id.editBirthday /* 2131362562 */:
                    B1();
                    return;
                case R.id.editEmotionalState /* 2131362563 */:
                    q1();
                    return;
                case R.id.editFriendshipIntention /* 2131362564 */:
                    new UserEditFriendshipActivity().show(getSupportFragmentManager(), "friendShip");
                    return;
                case R.id.editGender /* 2131362565 */:
                    D1();
                    return;
                case R.id.editHeight /* 2131362566 */:
                    L1();
                    return;
                case R.id.editHobby /* 2131362567 */:
                    UserEditHobbyTagActivity.start(this);
                    return;
                case R.id.editLanguage /* 2131362568 */:
                    LanguageActivity.R1(this.f25729t, new n0()).show(getSupportFragmentManager(), "language");
                    return;
                case R.id.editNickNme /* 2131362569 */:
                    N1();
                    return;
                case R.id.editOccupation /* 2131362570 */:
                    Intent intent2 = new Intent(this, ChooceOccupationActivity.class);
                    intent2.putExtra("career", this.f25731v);
                    intent2.putExtra("infoName", this.B);
                    intent2.putExtra("companyName", this.A);
                    startActivityForResult(intent2, 56);
                    return;
                case R.id.editWeight /* 2131362571 */:
                    S1();
                    return;
                default:
                    return;
            }
        }
        this.mCheckAvatarTips.setVisibility(8);
        ja.a.b().e("KEY_SHOW_AVATAR_TIPS");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_setinfo;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        EventBus.getDefault().register(this);
        if (ja.a.b().f("KEY_SHOW_AVATAR_TIPS")) {
            this.mCheckAvatarTips.setVisibility(0);
        } else {
            this.mCheckAvatarTips.setVisibility(8);
        }
        if (BaseConfig.isChinese()) {
            this.editAddress.setVisibility(8);
            this.editLanguage.setVisibility(8);
            this.viewAddress.setVisibility(8);
            this.viewLanguage.setVisibility(8);
            this.constellation.setVisibility(0);
            this.animal.setVisibility(0);
            this.viewConstellation.setVisibility(8);
            this.viewAnimal.setVisibility(8);
            this.tvConstellation.setText(getString(R.string.zaime_constellation));
            this.tvAnimal.setText(getString(R.string.zaime_animal));
            return;
        }
        this.editAddress.setVisibility(0);
        this.editLanguage.setVisibility(0);
        this.viewAddress.setVisibility(8);
        this.viewLanguage.setVisibility(8);
        this.constellation.setVisibility(8);
        this.animal.setVisibility(8);
        this.viewConstellation.setVisibility(8);
        this.viewAnimal.setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    public void o1() {
        post("tokens/user/info/findEditorDataByLang").M(new c0());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        int lastIndexOf;
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1) {
            if (i9 == 51) {
                String str = FilePathProvider.getCachePath("crop") + FileUtils.RES_PREFIX_STORAGE + System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG;
                this.f25717h = str;
                Photo_Take_Util.startPhotoZoom(this, this.f25718i, str, PhotoCameraPermissionUtils.getmCameraUri(), this);
            } else if (i9 == 52) {
                String imageAbsolutePath = AAImageUtil.getImageAbsolutePath(getActivity(), intent.getData());
                if (imageAbsolutePath != null && (lastIndexOf = imageAbsolutePath.lastIndexOf(".")) > 0) {
                    this.f25717h = FilePathProvider.getPhotoPath() + System.currentTimeMillis() + imageAbsolutePath.substring(lastIndexOf);
                }
                if (TextUtils.isEmpty(this.f25717h)) {
                    this.f25717h = FilePathProvider.getPhotoPath() + System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG;
                }
                CoverPhotoDialogFragment coverPhotoDialogFragment = this.f25716g;
                if (coverPhotoDialogFragment != null) {
                    coverPhotoDialogFragment.setUpdatePath(this.f25717h);
                }
                Photo_Take_Util.startPhotoZoom(this, imageAbsolutePath, this.f25717h, intent.getData(), this);
            } else if (i9 == 69) {
                File uriToFile = UriUtils.uriToFile(this, com.yalantis.ucrop.a.b(intent));
                if (uriToFile != null) {
                    F1(this.G, uriToFile.getAbsolutePath());
                }
            } else if (i9 == 121) {
                String str2 = this.f25717h;
                if (str2 == null) {
                    return;
                }
                F1(this.G, str2);
            } else if (i9 == 1000 && intent != null) {
                F1(this.G, intent.getStringExtra(TCConstants.VIDEO_RECORD_VIDEPATH));
            }
        } else if (i10 != 53) {
            if (i10 == 54) {
                String content = ((CountryData) intent.getParcelableExtra("currentCountry")).getContent();
                this.f25730u = content;
                this.mCity.setText(content);
            } else if (i10 == 56) {
                this.f25731v = intent.getStringExtra("career");
                this.B = intent.getStringExtra("infoName");
                this.A = intent.getStringExtra("companyName");
                this.mOccupation.setText(this.f25731v);
            } else if (i10 == 55) {
                this.mHobby.setText(intent.getStringExtra("hobbies"));
            }
        }
        if (i9 != 10023 || i10 != -1 || intent == null || intent.getExtras() == null) {
            return;
        }
        Bundle extras = intent.getExtras();
        String string = extras.getString(BaseConfig.INTENT_EXTRA_KEY_QR_SCAN);
        Uri uri = (Uri) extras.getParcelable(ShareConstants.MEDIA_URI);
        if (TextUtils.isEmpty(string)) {
            return;
        }
        if (!extras.getBoolean("gif")) {
            int lastIndexOf2 = string.lastIndexOf(".");
            if (lastIndexOf2 > 0) {
                this.f25717h = FilePathProvider.getCachePath("crop") + FileUtils.RES_PREFIX_STORAGE + System.currentTimeMillis() + string.substring(lastIndexOf2);
            } else {
                this.f25717h = FilePathProvider.getCachePath("crop") + FileUtils.RES_PREFIX_STORAGE + System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG;
            }
            Photo_Take_Util.startPhotoZoom(this, string, this.f25717h, uri, this);
        } else if (getCurrentUser().isVip()) {
            ImageCropActivity.d0(getActivity(), string, uri, 300, 1000);
        } else {
            int lastIndexOf3 = string.lastIndexOf(".");
            if (lastIndexOf3 > 0) {
                this.f25717h = FilePathProvider.getCachePath("crop") + FileUtils.RES_PREFIX_STORAGE + System.currentTimeMillis() + string.substring(lastIndexOf3);
            } else {
                this.f25717h = FilePathProvider.getCachePath("crop") + FileUtils.RES_PREFIX_STORAGE + System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG;
            }
            Photo_Take_Util.startPhotoZoom(this, string, this.f25717h, uri, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (bundle != null) {
            this.G = (UserPageBaseData.CoverData) bundle.getParcelable("data");
            this.f25718i = bundle.getString("camera_path");
            PhotoCameraPermissionUtils.mCameraUri = (Uri) bundle.getParcelable(ShareConstants.MEDIA_URI);
        }
        super.onCreate(bundle);
        this.F = new PhotoCameraPermissionUtils(this);
        setTitle(getString(R.string.my_information));
        this.f25728s = Calendar.getInstance();
        x1();
        o1();
        AndroidBug5497Workaround.assistActivity(this);
        if (HealthLiveTipsFragment.checkShouldShow(3)) {
            HealthLiveTipsFragment.getInstance(3).show(getSupportFragmentManager(), "profile");
            this.mTitleBarHelper.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendshipEvent(UserEditFriendshipActivity.UpdateFriendshipEvent updateFriendshipEvent) {
        o1();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i9, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i9, strArr, iArr);
        this.F.doNext(i9, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("data", this.G);
        bundle.putString("camera_path", this.f25718i);
        bundle.putParcelable(ShareConstants.MEDIA_URI, PhotoCameraPermissionUtils.mCameraUri);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onTagChangedEvent(UserEditHobbyTagActivity.UpdateUserHobbyTagEvent updateUserHobbyTagEvent) {
        o1();
    }

    public void q1() {
        post(Contants.findemotionByUserId).M(new b0());
    }
}
