package com.guochao.faceshow.activity;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import butterknife.BindView;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.UgcAndVideoSendUtils;
import com.guochao.faceshow.aaspring.views.AtTopicUgcEditText;
import com.guochao.faceshow.bean.MyTopicAndName;
import com.guochao.faceshow.bean.TopicType;
import com.guochao.faceshow.service.AppBackgroundService;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.SensitiveWordFilter;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.utils.Tools;
import com.guochao.faceshow.views.d;
import com.guochao.faceshow.views.e;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class PushVideoActivity extends BaseActivity implements View.OnClickListener {
    private static MyTopicAndName[] K = new MyTopicAndName[6];
    private TextView A;
    private TextView B;
    private String C;
    private String D;
    private String E;
    private String F;
    String I;

    /* renamed from: a  reason: collision with root package name */
    private String f24768a;

    /* renamed from: b  reason: collision with root package name */
    private String f24769b;

    /* renamed from: c  reason: collision with root package name */
    private AtTopicUgcEditText f24770c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f24771d;

    /* renamed from: e  reason: collision with root package name */
    private RelativeLayout f24772e;

    /* renamed from: j  reason: collision with root package name */
    private String f24777j;

    /* renamed from: l  reason: collision with root package name */
    private String f24779l;

    /* renamed from: m  reason: collision with root package name */
    private String f24780m;
    @BindView
    ImageView mImageViewSyncToDynamic;

    /* renamed from: n  reason: collision with root package name */
    private int f24781n;

    /* renamed from: o  reason: collision with root package name */
    private int f24782o;

    /* renamed from: q  reason: collision with root package name */
    private TextView f24784q;

    /* renamed from: r  reason: collision with root package name */
    private TextView f24785r;

    /* renamed from: s  reason: collision with root package name */
    private TextView f24786s;

    /* renamed from: t  reason: collision with root package name */
    private ImageView f24787t;

    /* renamed from: u  reason: collision with root package name */
    private ImageView f24788u;

    /* renamed from: v  reason: collision with root package name */
    private LinearLayout f24789v;

    /* renamed from: w  reason: collision with root package name */
    private TextView f24790w;

    /* renamed from: x  reason: collision with root package name */
    private TextView f24791x;

    /* renamed from: y  reason: collision with root package name */
    private TextView f24792y;

    /* renamed from: z  reason: collision with root package name */
    private TextView f24793z;

    /* renamed from: f  reason: collision with root package name */
    ArrayList<TopicType> f24773f = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    private String f24774g = "";

    /* renamed from: h  reason: collision with root package name */
    private String f24775h = "";

    /* renamed from: i  reason: collision with root package name */
    private String f24776i = "";

    /* renamed from: k  reason: collision with root package name */
    private String f24778k = "";

    /* renamed from: p  reason: collision with root package name */
    private boolean f24783p = true;
    private boolean G = false;
    private List<MyTopicAndName> H = new ArrayList();
    ArrayList<IM_User> J = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements UgcAndVideoSendUtils.UgcAndVideoSendCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f24794a;

        /* renamed from: com.guochao.faceshow.activity.PushVideoActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0241a implements e.a {
            C0241a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                EventBus.getDefault().post("upLoadOver");
                PushVideoActivity.this.finish();
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(e eVar) {
                d.a(this, eVar);
            }
        }

        a(boolean z10) {
            this.f24794a = z10;
        }

        @Override // com.guochao.faceshow.aaspring.utils.UgcAndVideoSendUtils.UgcAndVideoSendCallBack
        public void onFailure(String str) {
            PushVideoActivity.this.G = false;
            PushVideoActivity.this.alert("", str, new C0241a());
        }

        @Override // com.guochao.faceshow.aaspring.utils.UgcAndVideoSendUtils.UgcAndVideoSendCallBack
        public void onSuccessful() {
            EventBus.getDefault().post("upLoadOver");
            if (this.f24794a) {
                PushVideoActivity.this.f24776i = "0";
            } else {
                PushVideoActivity.this.f24776i = "1";
            }
            if (!TextUtils.isEmpty(PushVideoActivity.this.f24778k)) {
                PushVideoActivity pushVideoActivity = PushVideoActivity.this;
                pushVideoActivity.f24779l = pushVideoActivity.s0();
            }
            PushVideoActivity.this.v0();
        }
    }

    /* loaded from: classes3.dex */
    class b extends AtTopicUgcEditText.b {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.views.AtTopicUgcEditText.b
        public void a() {
            if (PushVideoActivity.this.f24770c.getText().toString().endsWith("#")) {
                PushVideoActivity.this.f24789v.setVisibility(0);
            } else {
                PushVideoActivity.this.f24789v.setVisibility(8);
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.AtTopicUgcEditText.b
        public void b() {
            if (PushVideoActivity.this.f24789v.getVisibility() == 8) {
                PushVideoActivity.this.q0(false);
            }
        }
    }

    private void o0(int i9, String str) {
        Log.i("zune", "checkTintColor: index = " + i9 + ", s  = " + str);
        MyTopicAndName myTopicAndName = new MyTopicAndName();
        if (str.startsWith("#")) {
            myTopicAndName.type = 2;
            myTopicAndName.content = str;
            myTopicAndName.userId = u0(str.substring(1));
            this.H.add(myTopicAndName);
        } else if (str.startsWith("@")) {
            myTopicAndName.type = 3;
            myTopicAndName.content = str;
            Iterator<IM_User> it = this.J.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                IM_User next = it.next();
                if (myTopicAndName.content.equals(next.getUserName())) {
                    myTopicAndName.userId = next.getCurrentUserId();
                    break;
                }
            }
            this.H.add(myTopicAndName);
        } else {
            myTopicAndName.type = 1;
            myTopicAndName.content = " " + str;
            this.H.add(myTopicAndName);
        }
    }

    private void p0(int i9) {
        this.f24789v.setVisibility(8);
        String addInvisibleCharBeforeWhiteSpace = StringUtils.addInvisibleCharBeforeWhiteSpace(K[i9].content);
        AtTopicUgcEditText atTopicUgcEditText = this.f24770c;
        atTopicUgcEditText.append(addInvisibleCharBeforeWhiteSpace + " ");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0(boolean z10) {
        if (this.f24770c.getText() == null || this.f24770c.getText().length() >= 150) {
            return;
        }
        if (z10) {
            this.f24770c.append("#");
        }
        this.f24789v.setVisibility(0);
        TextView textView = this.f24790w;
        MyTopicAndName[] myTopicAndNameArr = K;
        String str = "";
        textView.setText((myTopicAndNameArr.length < 1 || myTopicAndNameArr[0] == null || myTopicAndNameArr[0].content == null) ? "" : myTopicAndNameArr[0].content.trim());
        TextView textView2 = this.f24791x;
        MyTopicAndName[] myTopicAndNameArr2 = K;
        textView2.setText((myTopicAndNameArr2.length < 2 || myTopicAndNameArr2[1] == null || myTopicAndNameArr2[1].content == null) ? "" : myTopicAndNameArr2[1].content.trim());
        TextView textView3 = this.f24792y;
        MyTopicAndName[] myTopicAndNameArr3 = K;
        textView3.setText((myTopicAndNameArr3.length < 3 || myTopicAndNameArr3[2] == null || myTopicAndNameArr3[2].content == null) ? "" : myTopicAndNameArr3[2].content.trim());
        TextView textView4 = this.f24793z;
        MyTopicAndName[] myTopicAndNameArr4 = K;
        textView4.setText((myTopicAndNameArr4.length < 4 || myTopicAndNameArr4[3] == null || myTopicAndNameArr4[3].content == null) ? "" : myTopicAndNameArr4[3].content.trim());
        TextView textView5 = this.A;
        MyTopicAndName[] myTopicAndNameArr5 = K;
        textView5.setText((myTopicAndNameArr5.length < 5 || myTopicAndNameArr5[4] == null || myTopicAndNameArr5[4].content == null) ? "" : myTopicAndNameArr5[4].content.trim());
        TextView textView6 = this.B;
        MyTopicAndName[] myTopicAndNameArr6 = K;
        if (myTopicAndNameArr6.length >= 6 && myTopicAndNameArr6[5] != null && myTopicAndNameArr6[5].content != null) {
            str = myTopicAndNameArr6[5].content.trim();
        }
        textView6.setText(str);
    }

    private void r0(boolean z10) {
        if (this.G) {
            return;
        }
        this.f24778k = this.f24770c.getText().toString().trim().replaceAll("\\n", "");
        if (!TextUtils.isEmpty(SensitiveWordFilter.getInstance().checkKeyword(this.f24778k))) {
            showToast(getString(R.string.minganci_ugc));
            return;
        }
        this.G = true;
        UgcAndVideoSendUtils.getUgcAndVideoPermissions(getActivity(), 1, new a(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String s0() {
        String obj = this.f24770c.getText().toString();
        String[] split = obj.split("@|#| ");
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < split.length; i9++) {
            String str = split[i9];
            if (str.endsWith(String.valueOf((char) StringUtils.INVISIBLE_CHAR))) {
                int t02 = t0(i9, split) - 1;
                if (t02 > obj.length() - 1) {
                    t02 = obj.length() - 1;
                }
                char charAt = obj.charAt(t02);
                sb2.append(str);
                sb2.append(charAt);
                if (i9 >= split.length - 1) {
                    str = sb2.toString();
                    sb2.setLength(0);
                }
            } else if (!TextUtils.isEmpty(sb2)) {
                sb2.append(str);
                str = sb2.toString();
                sb2.setLength(0);
            }
            if (!TextUtils.isEmpty(str.trim())) {
                int indexOf = obj.indexOf(str);
                if (indexOf > 0) {
                    indexOf--;
                    str = obj.charAt(indexOf) + str;
                }
                o0(indexOf, str);
                while (indexOf != -1) {
                    indexOf = obj.indexOf(str, indexOf + 1);
                }
            }
        }
        String json = GsonGetter.getGson().toJson(this.H);
        Log.i("zune ", "getListAndJson: json = " + json);
        return json;
    }

    private int t0(int i9, String[] strArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < strArr.length; i11++) {
            i10 = i10 + strArr[i11].length() + 1;
            if (i9 == i11) {
                return i10;
            }
        }
        return i10;
    }

    private String u0(String str) {
        MyTopicAndName[] myTopicAndNameArr;
        for (MyTopicAndName myTopicAndName : K) {
            if (myTopicAndName != null && str.replaceAll(String.valueOf((char) StringUtils.INVISIBLE_CHAR), "").equals(myTopicAndName.content)) {
                return myTopicAndName.userId;
            }
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0() {
        Intent intent = new Intent(this, AppBackgroundService.class);
        intent.putExtra(LOCAL_EVENT_MSG.SHORT_VIDEO_UPLOAD, LOCAL_EVENT_MSG.SHORT_VIDEO_UPLOAD);
        intent.putExtra("json", this.f24779l);
        try {
            intent.putExtra("content", this.f24770c.getText().toString());
        } catch (Exception unused) {
        }
        intent.putExtra("imgPath", this.f24768a);
        intent.putExtra("isPrivate", this.f24776i);
        intent.putExtra("videoType", this.I);
        intent.putExtra("videoPath", this.f24769b);
        intent.putExtra("musicId", this.f24775h);
        intent.putExtra("musicName", this.D);
        intent.putExtra("width", this.f24781n);
        intent.putExtra("height", this.f24782o);
        ImageView imageView = this.mImageViewSyncToDynamic;
        intent.putExtra("sync_to_dynamic", imageView != null && imageView.isSelected());
        if (TextUtils.equals("1", this.E)) {
            intent.putExtra("isSource", "1");
        } else {
            intent.putExtra("isSource", "2");
        }
        startService(intent);
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        File file = new File(FilePathProvider.getPrivateRootPathV2(TypedValues.AttributesType.S_FRAME));
        if (file.exists()) {
            Tools.deleteDirWihtFile(file);
        }
        super.finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_push_video;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        AtTopicUgcEditText atTopicUgcEditText = (AtTopicUgcEditText) findViewById(R.id.et_dynamic);
        this.f24770c = atTopicUgcEditText;
        atTopicUgcEditText.setActivity(this);
        this.f24770c.setIgnoreTopic(true);
        this.f24771d = (ImageView) findViewById(R.id.coverimg);
        this.f24785r = (TextView) findViewById(R.id.edit_pic);
        this.f24784q = (TextView) findViewById(R.id.pr_video);
        this.f24786s = (TextView) findViewById(R.id.released_video);
        this.f24772e = (RelativeLayout) findViewById(R.id.main_layout);
        this.f24787t = (ImageView) findViewById(R.id.topic_text);
        this.f24788u = (ImageView) findViewById(R.id.friends_text);
        this.f24789v = (LinearLayout) findViewById(R.id.topic_num);
        this.f24790w = (TextView) findViewById(R.id.topic_text1);
        this.f24791x = (TextView) findViewById(R.id.topic_text2);
        this.f24792y = (TextView) findViewById(R.id.topic_text3);
        this.f24793z = (TextView) findViewById(R.id.topic_text4);
        this.A = (TextView) findViewById(R.id.topic_text5);
        this.B = (TextView) findViewById(R.id.topic_text6);
        if (!TextUtils.isEmpty(this.f24768a)) {
            hc.a.r(this.f24771d, this.f24768a, R.drawable.default_image, 6);
        }
        this.f24784q.setOnClickListener(this);
        this.f24786s.setOnClickListener(this);
        this.f24785r.setOnClickListener(this);
        this.f24771d.setOnClickListener(this);
        this.f24787t.setOnClickListener(this);
        this.f24788u.setOnClickListener(this);
        this.f24790w.setOnClickListener(this);
        this.f24791x.setOnClickListener(this);
        this.f24792y.setOnClickListener(this);
        this.f24793z.setOnClickListener(this);
        this.A.setOnClickListener(this);
        this.B.setOnClickListener(this);
        this.mImageViewSyncToDynamic.setOnClickListener(this);
        this.f24770c.setOnTextChangedListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (intent == null) {
            return;
        }
        if (i10 == 13) {
            String stringExtra = intent.getStringExtra(TCConstants.VIDEO_RECORD_COVERPATH);
            this.f24768a = stringExtra;
            hc.a.r(this.f24771d, stringExtra, R.drawable.default_image, 6);
        }
        List list = (List) MemoryCache.getInstance().get(Contants.PARAMS_KEY1);
        if (list != null) {
            this.J.addAll(list);
        }
        this.f24770c.u(i9, i10, intent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        switch (id2) {
            case R.id.coverimg /* 2131362431 */:
            case R.id.edit_pic /* 2131362576 */:
                if (this.f24783p) {
                    this.f24783p = false;
                    Intent intent = new Intent(this, PicSelectActivity.class);
                    intent.putExtra("videoPath", this.f24769b);
                    intent.putExtra("imgPath", this.f24768a);
                    startActivityForResult(intent, 88);
                    return;
                }
                return;
            case R.id.friends_text /* 2131362894 */:
                if (this.f24770c.getText().length() >= 120) {
                    return;
                }
                this.f24770c.append("@");
                return;
            case R.id.pr_video /* 2131364015 */:
                r0(true);
                return;
            case R.id.released_video /* 2131364197 */:
                r0(false);
                return;
            case R.id.sync_to_dynamic /* 2131364626 */:
                view.setSelected(!view.isSelected());
                return;
            default:
                switch (id2) {
                    case R.id.topic_text /* 2131364825 */:
                        if (this.f24789v.getVisibility() == 8) {
                            q0(true);
                            return;
                        } else {
                            this.f24789v.setVisibility(8);
                            return;
                        }
                    case R.id.topic_text1 /* 2131364826 */:
                        if (K.length < 1) {
                            return;
                        }
                        p0(0);
                        return;
                    case R.id.topic_text2 /* 2131364827 */:
                        if (K.length < 2) {
                            return;
                        }
                        p0(1);
                        return;
                    case R.id.topic_text3 /* 2131364828 */:
                        if (K.length < 3) {
                            return;
                        }
                        p0(2);
                        return;
                    case R.id.topic_text4 /* 2131364829 */:
                        if (K.length < 4) {
                            return;
                        }
                        p0(3);
                        return;
                    case R.id.topic_text5 /* 2131364830 */:
                        if (K.length < 5) {
                            return;
                        }
                        p0(4);
                        return;
                    case R.id.topic_text6 /* 2131364831 */:
                        if (K.length < 6) {
                            return;
                        }
                        p0(5);
                        return;
                    default:
                        return;
                }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.C = getResources().getString(R.string.sensitive_word) + CertificateUtil.DELIMITER;
        this.f24768a = getIntent().getStringExtra(TCConstants.VIDEO_RECORD_COVERPATH);
        this.f24769b = getIntent().getStringExtra(TCConstants.VIDEO_RECORD_VIDEPATH);
        this.f24775h = getIntent().getStringExtra("musicId");
        this.D = getIntent().getStringExtra("musicName");
        this.f24777j = getIntent().getStringExtra("titleName");
        this.I = getIntent().getStringExtra("type_id");
        this.f24780m = getIntent().getStringExtra("tyPeName");
        this.E = getIntent().getStringExtra(ShareConstants.FEED_SOURCE_PARAM);
        this.f24781n = getIntent().getIntExtra("width", 0);
        this.f24782o = getIntent().getIntExtra("height", 0);
        super.onCreate(bundle);
        setTitle(getString(R.string.post));
        this.mImageViewSyncToDynamic.setSelected(false);
        this.f24774g = getIntent().getStringExtra("topic_id");
        this.F = getIntent().getStringExtra("topicName");
        if (!TextUtils.isEmpty(this.f24777j)) {
            this.f24770c.setText(this.f24777j);
        }
        if (TextUtils.isEmpty(this.F)) {
            return;
        }
        this.f24770c.setText(String.format("#%s ", StringUtils.addInvisibleCharBeforeWhiteSpace(this.F)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (i9 == 4) {
            File file = new File(FilePathProvider.getPrivateRootPathV2(TypedValues.AttributesType.S_FRAME));
            if (file.exists()) {
                Tools.deleteDirWihtFile(file);
            }
            finish();
            return true;
        }
        return super.onKeyDown(i9, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f24783p = true;
    }
}
