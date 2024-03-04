package com.linecorp.linesdk.widget;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.linecorp.linesdk.LoginDelegate;
import com.linecorp.linesdk.LoginListener;
import com.linecorp.linesdk.R$color;
import com.linecorp.linesdk.R$drawable;
import com.linecorp.linesdk.R$string;
import com.linecorp.linesdk.auth.LineAuthenticationParams;
import com.linecorp.linesdk.internal.FragmentWrapper;
import com.linecorp.linesdk.internal.LoginHandler;
import com.linecorp.linesdk.widget.LoginButton;
import java.util.Arrays;
import qc.e;
import vc.g;
/* loaded from: classes4.dex */
public class LoginButton extends AppCompatTextView {
    @NonNull
    private LineAuthenticationParams authenticationParams;
    @Nullable
    private String channelId;
    @Nullable
    private FragmentWrapper fragmentWrapper;
    @NonNull
    private View.OnClickListener internalListener;
    private boolean isLineAppAuthEnabled;
    @Nullable
    private LoginDelegate loginDelegate;
    @NonNull
    private LoginHandler loginHandler;

    public LoginButton(Context context) {
        super(context);
        this.isLineAppAuthEnabled = true;
        this.authenticationParams = new LineAuthenticationParams.b().f(Arrays.asList(e.f57157c)).e();
        this.loginHandler = new LoginHandler();
        this.internalListener = new View.OnClickListener() { // from class: zc.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginButton.this.lambda$new$0(view);
            }
        };
        init();
    }

    @NonNull
    private Activity getActivity() {
        Context context = getContext();
        while ((context instanceof ContextWrapper) && !(context instanceof Activity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        throw new RuntimeException("Cannot find an Activity");
    }

    private void init() {
        setAllCaps(false);
        setGravity(17);
        setText(R$string.btn_line_login);
        setTextColor(ContextCompat.getColor(getContext(), R$color.text_login_btn));
        setBackgroundResource(R$drawable.background_login_btn);
        super.setOnClickListener(this.internalListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        String str = this.channelId;
        if (str != null) {
            if (!str.isEmpty()) {
                FragmentWrapper fragmentWrapper = this.fragmentWrapper;
                if (fragmentWrapper != null) {
                    performLoginWithFragment(this.channelId, fragmentWrapper);
                    return;
                } else {
                    performLoginWithActivity(this.channelId, getActivity());
                    return;
                }
            }
            throw new RuntimeException("Channel id should not be empty.");
        }
        throw new RuntimeException("Channel id should be set.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOnClickListener$1(View.OnClickListener onClickListener, View view) {
        this.internalListener.onClick(view);
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    private void performLoginWithActivity(@NonNull String str, @NonNull Activity activity) {
        this.loginHandler.d(activity, this.isLineAppAuthEnabled, str, this.authenticationParams);
    }

    private void performLoginWithFragment(@NonNull String str, @NonNull FragmentWrapper fragmentWrapper) {
        this.loginHandler.c(getActivity(), fragmentWrapper, this.isLineAppAuthEnabled, str, this.authenticationParams);
    }

    public void addLoginListener(@NonNull LoginListener loginListener) {
        if (this.loginDelegate != null) {
            this.loginHandler.a(loginListener);
            return;
        }
        throw new RuntimeException("You must set LoginDelegate through setLoginDelegate()  first");
    }

    public void enableLineAppAuthentication(boolean z10) {
        this.isLineAppAuthEnabled = z10;
    }

    public void removeLoginListener(@NonNull LoginListener loginListener) {
        this.loginHandler.e(loginListener);
    }

    public void setAuthenticationParams(@NonNull LineAuthenticationParams lineAuthenticationParams) {
        this.authenticationParams = lineAuthenticationParams;
    }

    public void setChannelId(@NonNull String str) {
        this.channelId = str;
    }

    public void setFragment(@NonNull Fragment fragment) {
        this.fragmentWrapper = new FragmentWrapper(fragment);
    }

    public void setLoginDelegate(@NonNull LoginDelegate loginDelegate) {
        if (loginDelegate instanceof g) {
            ((g) loginDelegate).a(this.loginHandler);
            this.loginDelegate = loginDelegate;
            return;
        }
        throw new RuntimeException("Unexpected LoginDelegate, please use the provided Factory to create the instance");
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable final View.OnClickListener onClickListener) {
        super.setOnClickListener(new View.OnClickListener() { // from class: zc.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginButton.this.lambda$setOnClickListener$1(onClickListener, view);
            }
        });
    }

    public void setFragment(@NonNull androidx.fragment.app.Fragment fragment) {
        this.fragmentWrapper = new FragmentWrapper(fragment);
    }

    public LoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isLineAppAuthEnabled = true;
        this.authenticationParams = new LineAuthenticationParams.b().f(Arrays.asList(e.f57157c)).e();
        this.loginHandler = new LoginHandler();
        this.internalListener = new View.OnClickListener() { // from class: zc.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginButton.this.lambda$new$0(view);
            }
        };
        init();
    }

    public LoginButton(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.isLineAppAuthEnabled = true;
        this.authenticationParams = new LineAuthenticationParams.b().f(Arrays.asList(e.f57157c)).e();
        this.loginHandler = new LoginHandler();
        this.internalListener = new View.OnClickListener() { // from class: zc.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginButton.this.lambda$new$0(view);
            }
        };
        init();
    }
}
