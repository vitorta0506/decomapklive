package j0;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j0.n;
import java.io.InputStream;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class s<Data> implements n<Integer, Data> {

    /* renamed from: a  reason: collision with root package name */
    private final n<Uri, Data> f52943a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f52944b;

    /* loaded from: classes.dex */
    public static final class a implements o<Integer, AssetFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final Resources f52945a;

        public a(Resources resources) {
            this.f52945a = resources;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        public n<Integer, AssetFileDescriptor> c(r rVar) {
            return new s(this.f52945a, rVar.d(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* loaded from: classes.dex */
    public static class b implements o<Integer, ParcelFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final Resources f52946a;

        public b(Resources resources) {
            this.f52946a = resources;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<Integer, ParcelFileDescriptor> c(r rVar) {
            return new s(this.f52946a, rVar.d(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* loaded from: classes.dex */
    public static class c implements o<Integer, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final Resources f52947a;

        public c(Resources resources) {
            this.f52947a = resources;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<Integer, InputStream> c(r rVar) {
            return new s(this.f52947a, rVar.d(Uri.class, InputStream.class));
        }
    }

    /* loaded from: classes.dex */
    public static class d implements o<Integer, Uri> {

        /* renamed from: a  reason: collision with root package name */
        private final Resources f52948a;

        public d(Resources resources) {
            this.f52948a = resources;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<Integer, Uri> c(r rVar) {
            return new s(this.f52948a, v.c());
        }
    }

    public s(Resources resources, n<Uri, Data> nVar) {
        this.f52944b = resources;
        this.f52943a = nVar;
    }

    @Nullable
    private Uri d(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.f52944b.getResourcePackageName(num.intValue()) + IOUtils.DIR_SEPARATOR_UNIX + this.f52944b.getResourceTypeName(num.intValue()) + IOUtils.DIR_SEPARATOR_UNIX + this.f52944b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e10) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num, e10);
                return null;
            }
            return null;
        }
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<Data> a(@NonNull Integer num, int i9, int i10, @NonNull e0.e eVar) {
        Uri d10 = d(num);
        if (d10 == null) {
            return null;
        }
        return this.f52943a.a(d10, i9, i10, eVar);
    }

    @Override // j0.n
    /* renamed from: e */
    public boolean b(@NonNull Integer num) {
        return true;
    }
}
