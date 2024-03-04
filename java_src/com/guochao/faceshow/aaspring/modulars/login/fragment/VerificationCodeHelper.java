package com.guochao.faceshow.aaspring.modulars.login.fragment;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0012\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;", "", "()V", "changeLoginPWD", "", "getChangeLoginPWD", "()J", "setChangeLoginPWD", "(J)V", "emailTime", "getEmailTime", "setEmailTime", "registerAccount", "getRegisterAccount", "setRegisterAccount", "replaceEmailTime", "getReplaceEmailTime", "setReplaceEmailTime", "retrievePassWord", "getRetrievePassWord", "setRetrievePassWord", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VerificationCodeHelper {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Lazy<VerificationCodeHelper> instance$delegate;
    private long registerAccount = 60000;
    private long emailTime = 60000;
    private long replaceEmailTime = 60000;
    private long changeLoginPWD = 60000;
    private long retrievePassWord = 60000;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;", "", "()V", "instance", "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;", "getInstance", "()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;", "instance$delegate", "Lkotlin/Lazy;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final VerificationCodeHelper getInstance() {
            return (VerificationCodeHelper) VerificationCodeHelper.instance$delegate.getValue();
        }
    }

    static {
        Lazy<VerificationCodeHelper> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<VerificationCodeHelper>() { // from class: com.guochao.faceshow.aaspring.modulars.login.fragment.VerificationCodeHelper$Companion$instance$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VerificationCodeHelper invoke() {
                return new VerificationCodeHelper();
            }
        });
        instance$delegate = lazy;
    }

    public final long getChangeLoginPWD() {
        return this.changeLoginPWD;
    }

    public final long getEmailTime() {
        return this.emailTime;
    }

    public final long getRegisterAccount() {
        return this.registerAccount;
    }

    public final long getReplaceEmailTime() {
        return this.replaceEmailTime;
    }

    public final long getRetrievePassWord() {
        return this.retrievePassWord;
    }

    public final void setChangeLoginPWD(long j10) {
        this.changeLoginPWD = j10;
    }

    public final void setEmailTime(long j10) {
        this.emailTime = j10;
    }

    public final void setRegisterAccount(long j10) {
        this.registerAccount = j10;
    }

    public final void setReplaceEmailTime(long j10) {
        this.replaceEmailTime = j10;
    }

    public final void setRetrievePassWord(long j10) {
        this.retrievePassWord = j10;
    }
}
