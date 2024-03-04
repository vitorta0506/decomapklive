package ne;

import android.media.MediaMetadataRetriever;
import com.snapchat.kit.sdk.creative.exceptions.SnapMediaSizeException;
import com.snapchat.kit.sdk.creative.exceptions.SnapVideoLengthException;
import java.io.File;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final ke.c f55357a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(ke.c cVar) {
        this.f55357a = cVar;
    }

    public c a(File file) throws SnapMediaSizeException {
        if (file.length() < 314572800) {
            return new c(file);
        }
        this.f55357a.a("exceptionMediaSize");
        throw new SnapMediaSizeException("Media file size should be under 300MB");
    }

    public e b(File file) throws SnapMediaSizeException, SnapVideoLengthException {
        long length = file.length();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(file.getPath());
        String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
        mediaMetadataRetriever.release();
        if (Integer.valueOf(extractMetadata).intValue() >= 60000) {
            this.f55357a.a("exceptionVideoLength");
            throw new SnapVideoLengthException("Video must be under 1 minute long");
        } else if (length < 314572800) {
            this.f55357a.b("videoLength", Long.valueOf(extractMetadata).longValue());
            return new e(file);
        } else {
            this.f55357a.a("exceptionMediaSize");
            throw new SnapMediaSizeException("Media file size should be under 300MB");
        }
    }
}
