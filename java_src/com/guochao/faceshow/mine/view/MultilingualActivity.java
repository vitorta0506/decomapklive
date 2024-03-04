package com.guochao.faceshow.mine.view;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.faceshow.BaseAppContext;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.activity.MainActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
public class MultilingualActivity extends BaseActivity implements Language {

    /* renamed from: a  reason: collision with root package name */
    List<c> f25612a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private String f25613b;

    /* renamed from: c  reason: collision with root package name */
    private View f25614c;

    /* renamed from: d  reason: collision with root package name */
    private int f25615d;
    @BindView
    RecyclerView lvLanguage;

    /* loaded from: classes4.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            BaseAppContext.isChange = true;
            AppManager.getInstance().killActivity(MainActivity.class);
            q7.a.e().o(MultilingualActivity.this.f25613b);
            i.u().y();
            VoiceRoomMiniHelper.releaseAll();
            Intent intent = new Intent(MultilingualActivity.this, MainActivity.class);
            intent.setFlags(268468224);
            MultilingualActivity.this.startActivity(intent);
            MultilingualActivity.this.finish();
        }
    }

    /* loaded from: classes4.dex */
    class b extends RecyclerView.Adapter<BaseViewHolder> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f25618a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ c f25619b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ View f25620c;

            a(int i9, c cVar, View view) {
                this.f25618a = i9;
                this.f25619b = cVar;
                this.f25620c = view;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f25618a != MultilingualActivity.this.f25615d) {
                    MultilingualActivity.this.f25613b = this.f25619b.f25622a;
                    if (MultilingualActivity.this.f25614c != null) {
                        MultilingualActivity.this.f25614c.setVisibility(8);
                    }
                    this.f25620c.setVisibility(0);
                    MultilingualActivity.this.f25614c = this.f25620c;
                    MultilingualActivity.this.f25615d = this.f25618a;
                    return;
                }
                MultilingualActivity.this.f25613b = this.f25619b.f25622a;
                if (MultilingualActivity.this.f25614c != null) {
                    MultilingualActivity.this.f25614c.setVisibility(8);
                }
                this.f25620c.setVisibility(0);
                MultilingualActivity.this.f25614c = this.f25620c;
            }
        }

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return MultilingualActivity.this.f25612a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            c cVar = MultilingualActivity.this.f25612a.get(i9);
            baseViewHolder.setText(R.id.tvLanguage, cVar.f25623b);
            View view = baseViewHolder.getView(R.id.ivRight);
            if (cVar.f25622a.equalsIgnoreCase(MultilingualActivity.this.f25613b)) {
                view.setVisibility(0);
                MultilingualActivity.this.f25614c = view;
                MultilingualActivity.this.f25615d = i9;
            } else {
                view.setVisibility(8);
            }
            baseViewHolder.itemView.setOnClickListener(new a(i9, cVar, view));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new BaseViewHolder(MultilingualActivity.this.getLayoutInflater().inflate(R.layout.language_list_item, (ViewGroup) MultilingualActivity.this.lvLanguage, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        String f25622a;

        /* renamed from: b  reason: collision with root package name */
        String f25623b;

        public c(@Language.SupportedLanguage String str, String str2) {
            this.f25622a = str;
            this.f25623b = str2;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_multilingual;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.setting_multi_language);
        setEndText(getString(R.string.save), R.color.color_ugc_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new a());
        }
        this.mTitleBarHelper.f();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        this.f25612a.add(new c("en", "English"));
        this.f25612a.add(new c(Language.JAPANESE, "日本語"));
        this.f25612a.add(new c(Language.KOREAN, "한국어"));
        this.f25612a.add(new c(Language.FRENCH, "Français"));
        this.f25612a.add(new c("it", "Italiano"));
        this.f25612a.add(new c(Language.RUSSIAN, "Русский язык"));
        this.f25612a.add(new c(Language.SPANISH, "Español"));
        this.f25612a.add(new c(Language.GERMANY, "Deutsch"));
        this.f25612a.add(new c("pt", "Português"));
        this.f25612a.add(new c(Language.HINDI, "हिन्दी"));
        this.f25612a.add(new c(Language.VIETNAM, "Tiếng việt nam"));
        this.f25612a.add(new c(Language.THAILAND, "ไทย"));
        this.f25612a.add(new c(Language.INDONESIA, "Orang indonesia"));
        this.f25612a.add(new c(Language.SIMPLE_CHINESE, "中文(简体)"));
        this.f25612a.add(new c(Language.TRADITIONAL_CHINESE_HK, "中文(繁體)"));
        this.f25612a.add(new c(Language.ARABIC, " عربي ، "));
        this.f25612a.add(new c(Language.TURKISH, "Turkish"));
        String str = SpUtils.getStr(this, "language");
        this.f25613b = str;
        if (TextUtils.isEmpty(str)) {
            String appLanguage = PhoneUtils.getAppLanguage();
            if (!TextUtils.isEmpty(appLanguage)) {
                Iterator<c> it = this.f25612a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    c next = it.next();
                    if (appLanguage.equals(next.f25622a)) {
                        this.f25613b = next.f25622a;
                        break;
                    }
                }
                if (Language.SIMPLE_CHINESE.equals(this.f25613b) && !"CN".equals(PhoneUtils.getLocalCountry())) {
                    this.f25613b = Language.TRADITIONAL_CHINESE_HK;
                }
            }
        }
        if (TextUtils.isEmpty(this.f25613b)) {
            this.f25613b = "en";
        }
        this.lvLanguage.setAdapter(new b());
    }
}
