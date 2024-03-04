package androidx.core.provider;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import com.facebook.share.internal.ShareInternalUtility;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FontProvider {
    private static final Comparator<byte[]> sByteArrayComparator = new Comparator<byte[]>() { // from class: androidx.core.provider.FontProvider.1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            int i9;
            int i10;
            if (bArr.length != bArr2.length) {
                i9 = bArr.length;
                i10 = bArr2.length;
            } else {
                for (int i11 = 0; i11 < bArr.length; i11++) {
                    if (bArr[i11] != bArr2[i11]) {
                        i9 = bArr[i11];
                        i10 = bArr2[i11];
                    }
                }
                return 0;
            }
            return i9 - i10;
        }
    };

    private FontProvider() {
    }

    private static List<byte[]> convertToByteArrayList(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    private static boolean equalsByteArrayList(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            if (!Arrays.equals(list.get(i9), list2.get(i9))) {
                return false;
            }
        }
        return true;
    }

    private static List<List<byte[]>> getCertificates(FontRequest fontRequest, Resources resources) {
        if (fontRequest.getCertificates() != null) {
            return fontRequest.getCertificates();
        }
        return FontResourcesParserCompat.readCerts(resources, fontRequest.getCertificatesArrayResId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static FontsContractCompat.FontFamilyResult getFontFamilyResult(@NonNull Context context, @NonNull FontRequest fontRequest, @Nullable CancellationSignal cancellationSignal) throws PackageManager.NameNotFoundException {
        ProviderInfo provider = getProvider(context.getPackageManager(), fontRequest, context.getResources());
        if (provider == null) {
            return FontsContractCompat.FontFamilyResult.create(1, null);
        }
        return FontsContractCompat.FontFamilyResult.create(0, query(context, fontRequest, provider.authority, cancellationSignal));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @VisibleForTesting
    public static ProviderInfo getProvider(@NonNull PackageManager packageManager, @NonNull FontRequest fontRequest, @Nullable Resources resources) throws PackageManager.NameNotFoundException {
        String providerAuthority = fontRequest.getProviderAuthority();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(providerAuthority, 0);
        if (resolveContentProvider != null) {
            if (resolveContentProvider.packageName.equals(fontRequest.getProviderPackage())) {
                List<byte[]> convertToByteArrayList = convertToByteArrayList(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
                Collections.sort(convertToByteArrayList, sByteArrayComparator);
                List<List<byte[]>> certificates = getCertificates(fontRequest, resources);
                for (int i9 = 0; i9 < certificates.size(); i9++) {
                    ArrayList arrayList = new ArrayList(certificates.get(i9));
                    Collections.sort(arrayList, sByteArrayComparator);
                    if (equalsByteArrayList(convertToByteArrayList, arrayList)) {
                        return resolveContentProvider;
                    }
                }
                return null;
            }
            throw new PackageManager.NameNotFoundException("Found content provider " + providerAuthority + ", but package was not " + fontRequest.getProviderPackage());
        }
        throw new PackageManager.NameNotFoundException("No package found for authority: " + providerAuthority);
    }

    @NonNull
    @VisibleForTesting
    static FontsContractCompat.FontInfo[] query(Context context, FontRequest fontRequest, String str, CancellationSignal cancellationSignal) {
        int i9;
        Uri withAppendedId;
        int i10;
        boolean z10;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath(ShareInternalUtility.STAGING_PARAM).build();
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(build, new String[]{"_id", FontsContractCompat.Columns.FILE_ID, FontsContractCompat.Columns.TTC_INDEX, FontsContractCompat.Columns.VARIATION_SETTINGS, FontsContractCompat.Columns.WEIGHT, FontsContractCompat.Columns.ITALIC, FontsContractCompat.Columns.RESULT_CODE}, "query = ?", new String[]{fontRequest.getQuery()}, null, cancellationSignal);
            if (cursor != null && cursor.getCount() > 0) {
                int columnIndex = cursor.getColumnIndex(FontsContractCompat.Columns.RESULT_CODE);
                ArrayList arrayList2 = new ArrayList();
                int columnIndex2 = cursor.getColumnIndex("_id");
                int columnIndex3 = cursor.getColumnIndex(FontsContractCompat.Columns.FILE_ID);
                int columnIndex4 = cursor.getColumnIndex(FontsContractCompat.Columns.TTC_INDEX);
                int columnIndex5 = cursor.getColumnIndex(FontsContractCompat.Columns.WEIGHT);
                int columnIndex6 = cursor.getColumnIndex(FontsContractCompat.Columns.ITALIC);
                while (cursor.moveToNext()) {
                    int i11 = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                    int i12 = columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0;
                    if (columnIndex3 == -1) {
                        i9 = i11;
                        withAppendedId = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                    } else {
                        i9 = i11;
                        withAppendedId = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                    }
                    int i13 = columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400;
                    if (columnIndex6 == -1 || cursor.getInt(columnIndex6) != 1) {
                        i10 = i9;
                        z10 = false;
                    } else {
                        i10 = i9;
                        z10 = true;
                    }
                    arrayList2.add(FontsContractCompat.FontInfo.create(withAppendedId, i12, i13, z10, i10));
                }
                arrayList = arrayList2;
            }
            return (FontsContractCompat.FontInfo[]) arrayList.toArray(new FontsContractCompat.FontInfo[0]);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }
}
