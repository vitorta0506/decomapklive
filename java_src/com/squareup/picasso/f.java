package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.u;
import java.io.IOException;
import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class f extends u {

    /* renamed from: b  reason: collision with root package name */
    private static final UriMatcher f29934b;

    /* renamed from: a  reason: collision with root package name */
    private final Context f29935a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a {
        static InputStream a(ContentResolver contentResolver, Uri uri) {
            return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
        }
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f29934b = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "display_photo/#", 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Context context) {
        this.f29935a = context;
    }

    private InputStream j(s sVar) throws IOException {
        ContentResolver contentResolver = this.f29935a.getContentResolver();
        Uri uri = sVar.f29997d;
        int match = f29934b.match(uri);
        if (match != 1) {
            if (match != 2) {
                if (match != 3) {
                    if (match != 4) {
                        throw new IllegalStateException("Invalid uri: " + uri);
                    }
                }
            }
            return contentResolver.openInputStream(uri);
        }
        uri = ContactsContract.Contacts.lookupContact(contentResolver, uri);
        if (uri == null) {
            return null;
        }
        return a.a(contentResolver, uri);
    }

    @Override // com.squareup.picasso.u
    public boolean c(s sVar) {
        Uri uri = sVar.f29997d;
        return "content".equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && f29934b.match(sVar.f29997d) != -1;
    }

    @Override // com.squareup.picasso.u
    public u.a f(s sVar, int i9) throws IOException {
        InputStream j10 = j(sVar);
        if (j10 != null) {
            return new u.a(j10, Picasso.LoadedFrom.DISK);
        }
        return null;
    }
}
