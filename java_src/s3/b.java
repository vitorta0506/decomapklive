package s3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.i;
/* loaded from: classes2.dex */
public class b implements i {

    /* renamed from: a  reason: collision with root package name */
    private Status f57647a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private GoogleSignInAccount f57648b;

    public b(@Nullable GoogleSignInAccount googleSignInAccount, @NonNull Status status) {
        this.f57648b = googleSignInAccount;
        this.f57647a = status;
    }

    @Nullable
    public GoogleSignInAccount a() {
        return this.f57648b;
    }

    @Override // com.google.android.gms.common.api.i
    @NonNull
    public Status getStatus() {
        return this.f57647a;
    }
}
