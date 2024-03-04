package com.guochao.faceshow.aaspring.modulars.customerservice.fragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.FeedbackFileInfo;
import com.guochao.faceshow.aaspring.beans.FeedbackHistoryDetailBean;
import com.guochao.faceshow.aaspring.modulars.customerservice.helper.UploadFeedImageHelper;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class FeedbackReplyFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    UploadFeedImageHelper f17454a;

    /* renamed from: b  reason: collision with root package name */
    String f17455b;

    /* renamed from: c  reason: collision with root package name */
    b f17456c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements UploadFeedImageHelper.q {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.customerservice.fragment.FeedbackReplyFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0169a extends c<Boolean> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f17458a;

            C0169a(List list) {
                this.f17458a = list;
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            /* renamed from: a */
            public void onResponse(@Nullable @org.jetbrains.annotations.Nullable Boolean bool, @NonNull @NotNull FaceCastBaseResponse<Boolean> faceCastBaseResponse) {
                FeedbackReplyFragment.this.dismissProgressDialog();
                if (bool != null && bool.booleanValue()) {
                    FeedbackHistoryDetailBean.FeedbackQuestionDetailBean feedbackQuestionDetailBean = new FeedbackHistoryDetailBean.FeedbackQuestionDetailBean();
                    feedbackQuestionDetailBean.setCreateTime(System.currentTimeMillis() / 1000);
                    feedbackQuestionDetailBean.setCreateUserType(2);
                    feedbackQuestionDetailBean.setDetail(FeedbackReplyFragment.this.f17454a.h());
                    feedbackQuestionDetailBean.setFileList(this.f17458a);
                    feedbackQuestionDetailBean.setQuestionId(Integer.parseInt(FeedbackReplyFragment.this.f17455b));
                    b bVar = FeedbackReplyFragment.this.f17456c;
                    if (bVar != null) {
                        bVar.B(feedbackQuestionDetailBean);
                    }
                    FeedbackReplyFragment.this.dismissAllowingStateLoss();
                    return;
                }
                onFailure(new g7.a<>());
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull @NotNull g7.a<Boolean> aVar) {
                FeedbackReplyFragment.this.dismissProgressDialog();
                FeedbackReplyFragment.this.showToast(R.string.Network_Error);
            }
        }

        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.helper.UploadFeedImageHelper.q
        public void a(List<FeedbackFileInfo> list, String str) {
            FeedbackReplyFragment.this.post("tokens/sysHelp/submitSecondFeedBackQuestion").y("detail", FeedbackReplyFragment.this.f17454a.h()).y("questionId", FeedbackReplyFragment.this.f17455b).y("logFile", str).y("fileList", list).M(new C0169a(list));
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.helper.UploadFeedImageHelper.q
        public void onFail(int i9, String str) {
            FeedbackReplyFragment.this.dismissProgressDialog();
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void B(FeedbackHistoryDetailBean.FeedbackQuestionDetailBean feedbackQuestionDetailBean);
    }

    public static FeedbackReplyFragment P1(String str) {
        FeedbackReplyFragment feedbackReplyFragment = new FeedbackReplyFragment();
        Bundle bundle = new Bundle();
        bundle.putString("key", str);
        feedbackReplyFragment.setArguments(bundle);
        return feedbackReplyFragment;
    }

    @OnClick
    public void close(View view) {
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_feedback_reply;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f17454a = new UploadFeedImageHelper(getActivity(), (ViewGroup) view.findViewById(R.id.recycler_view_area), this, true);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getDialog() != null) {
            getDialog().getWindow().setDimAmount(0.3f);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull @NotNull Context context) {
        super.onAttach(context);
        this.f17456c = (b) context;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f17455b = getArguments().getString("key");
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog();
    }

    @OnClick
    public void submit(View view) {
        if (!StringUtils.hasWord(this.f17454a.h())) {
            showToast(R.string.feedback_input_empty);
            return;
        }
        showProgressDialog("");
        this.f17454a.l(new a());
    }
}
