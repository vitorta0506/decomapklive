package rc;

import androidx.annotation.NonNull;
import com.linecorp.linesdk.LineAccessToken;
import com.linecorp.linesdk.openchat.OpenChatParameters;
import com.linecorp.linesdk.openchat.OpenChatRoomInfo;
import qc.c;
/* loaded from: classes4.dex */
public interface a {
    @NonNull
    c<LineAccessToken> a();

    @NonNull
    c<OpenChatRoomInfo> b(@NonNull OpenChatParameters openChatParameters);

    @NonNull
    c<Boolean> c();
}
